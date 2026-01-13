use "raw"
use "files"
use "debug"

/*
 * Unfortunately, we have to use direct FFI calls in this case instead
 * of calls to LibXML2 et al, because we use addressof, and that is
 * only valid in direct FFI calls.
 */

use @xmlMemGet[I32](
  freeFunc: Pointer[XmlFreeFunc] tag,
  mallocFunc: Pointer[Pointer[None]] tag,  // Unused, so not defining
  reallocFunc: Pointer[Pointer[None]] tag, // Unused, so not defining
  strdupFunc: Pointer[Pointer[None]] tag)  // Unused, so not defining
use @xmlDocDumpFormatMemoryEnc[None](
  outdoc: NullablePointer[XmlDoc] tag,
  doctxtptr: Pointer[Pointer[U8]] tag,
  doctxtlen: Pointer[I32] tag,
  txtencoding: Pointer[U8] tag,
  format: I32)

type XmlFreeFunc is @{(Pointer[None] tag): None}

class Xml2Doc
  """
  Wrapper around a libxml2 `xmlDoc` pointer, providing convenient parsing and
  XPath evaluation helpers.
  """
  let ptr': NullablePointer[XmlDoc]

  new parseFile(auth: FileAuth, pfilename: String val) ? =>
    """
    Parse an XML document from the given file path using libxml2.

    - `auth`: Capability proving the caller has permission to read files.
    - `pfilename`: Path to the XML file to parse.

    On success, stores the underlying `xmlDoc*` in `ptr'` and its non-null
    value in `ptr`. Raises an error if parsing fails or returns a null
    document pointer.
    """
    let ptrx: NullablePointer[XmlDoc] = LibXML2.xmlParseFile(pfilename)
    if ptrx.is_none() then error end
    ptr' = ptrx

  new parseDoc(pcur: String val) ? =>
    """
    Parse an XML document from an in-memory string using libxml2.

    - `pcur`: String containing the complete XML document.

    On success, stores the underlying `xmlDoc*` in `ptr'` and its non-null
    value in `ptr`. Raises an error if parsing fails or returns a null
    document pointer.
    """
    let ptrx: NullablePointer[XmlDoc] = LibXML2.xmlParseDoc(pcur)
    if ptrx.is_none() then error end
    ptr' = ptrx

  fun xpathEval(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : Xml2XPathResult
  =>
    """
    Evaluate an XPath expression against this document and return the result.

    - `xpath`: The XPath expression to evaluate.
    - `namespaces`: Optional list of `(prefix, uri)` pairs to register on a
      temporary XPath context before evaluation, for namespace-aware queries.

    Internally, creates a new `xmlXPathContext` for the document, registers
    the provided namespaces, calls `xmlXPathEval`, then frees the context.
    Returns an `Xml2XPathResult` wrapper around the resulting
    `xmlXPathObject*`.
    """
    let tmpctx: NullablePointer[XmlXPathContext] =
      LibXML2.xmlXPathNewContext(ptr')
    for (n, url) in namespaces.values() do
      LibXML2.xmlXPathRegisterNs(tmpctx, n, url)
    end
    let xptr: NullablePointer[XmlXPathObject] =
      LibXML2.xmlXPathEval(xpath, tmpctx)
    let xpo: Xml2XPathResult = Xml2XPathObject(recover tag this end, xptr)
    LibXML2.xmlXPathFreeContext(tmpctx)
    xpo

  fun xpathEvalNodes(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : Array[Xml2Node] ?
  =>
    """
    A convenience method that calls xpathEval and returns an Array[Xml2Node].
    """
    (xpathEval(xpath, namespaces) as Array[Xml2Node])

  fun xpathEvalString(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : String val ?
  =>
    """
    A convenience method that calls xpathEval and returns a String val.
    """
    (xpathEval(xpath, namespaces) as String val)

  fun xpathEvalF64(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : F64 ?
  =>
    """
    A convenience method that calls xpathEval and returns an F64 (XML's
    default number type in libxml2).
    """
    (xpathEval(xpath, namespaces) as F64)

  fun xpathEvalBool(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : Bool ?
  =>
    """
    A convenience method that calls xpathEval and returns a Bool.
    """
    (xpathEval(xpath, namespaces) as Bool)

  fun ref getRootElement(): Xml2Node ? =>
    """
    Return the root element node of this document as an `Xml2Node`.

    Calls `xmlDocGetRootElement` on the underlying `xmlDoc*`. Raises an error
    if the document has no root element or the returned pointer is null.
    """
    let ptrx: NullablePointer[XmlNode] = LibXML2.xmlDocGetRootElement(ptr')
    Xml2Node.fromPTR(recover tag this end, ptrx)?

  fun serialize(
    format: Bool = true,
    encoding: String = "UTF-8")
    : String ?
  =>
    """
    Serialize this document to a String with optional formatting.

    - `format`: If true, enables pretty-printing (indentation, newlines).
                If false, produces compact output.
    - `encoding`: Character encoding for the output (default: "UTF-8").
                  Common values: "UTF-8", "ISO-8859-1", "UTF-16".

    Returns the serialized XML as a String val. Raises an error if
    serialization fails or returns null memory.

    Example:
      ```pony
      let doc = Xml2Doc.parseDoc("<root><child>text</child></root>")?
      let xml_string = doc.serialize()?  // Pretty-printed UTF-8
      let compact = doc.serialize(false)?  // Compact output
      ```
    """
//  Allocate a pony variable to hold our Pointer[U8]
//  Allocate a pony variable to hold the size
    var c_str: Pointer[U8] ref = Pointer[U8]
    var size: I32 = 0

//  The function to free is available as a function pointer from
//  the xmlMemGet function. We allocate a variable for it and
//  pass the address of that to the function:
    var freeFunc: XmlFreeFunc = @{(p: Pointer[None] tag) => None}
    var mallocFunc: Pointer[None] = Pointer[None]
    var reallocFunc: Pointer[None] = Pointer[None]
    var strdupFunc: Pointer[None] = Pointer[None]
    var rc: I32 = @xmlMemGet(addressof freeFunc, addressof mallocFunc, addressof reallocFunc, addressof strdupFunc)

    // Call xmlDocDumpFormatMemoryEnc
    // format parameter: 1 for formatted, 0 for compact
    let format_val: I32 = if format then I32(1) else I32(0) end
    @xmlDocDumpFormatMemoryEnc(
      ptr',                    // our xmlDoc pointer
      addressof c_str,         // output: pointer to allocated memory
      addressof size,          // output: size of allocated memory
      encoding.cstring(),      // encoding string
      format_val)              // format flag

    // Check if memory was allocated
    if c_str.is_null() then error end

    // Convert to Pony String (String.from_cstring makes a copy)
    let result: String iso = String.from_cpointer(c_str, size.usize()).clone()

    // FREE THE MEMORY (critical!)
    // Call the function pointer we retrieved earlier.
    freeFunc(c_str)

    // Return the cloned string
    consume result

  fun saveToFile(
    auth: FileAuth,
    filename: String,
    format: Bool = true,
    encoding: String = "UTF-8")
    : None ?
  =>
    """
    Save this document to a file with optional formatting and encoding.

    - `auth`: Capability proving the caller has permission to write files.
    - `filename`: Path to the file where the document should be saved.
    - `format`: If true, enables pretty-printing (indentation, newlines).
                If false, produces compact output.
    - `encoding`: Character encoding for the output (default: "UTF-8").
                  Common values: "UTF-8", "ISO-8859-1", "UTF-16".

    Returns None on success. Raises an error if the file cannot be written
    or if libxml2 returns an error code (negative return value).

    Example:
      ```pony
      let doc = Xml2Doc.parseDoc("<root><child>text</child></root>")?
      doc.saveToFile(auth, "output.xml")?  // Pretty-printed UTF-8
      doc.saveToFile(auth, "compact.xml", false, "ISO-8859-1")?
      ```
    """
    // Call the C function
    // Returns number of bytes written, or -1 on error
    let format_val: I32 = if format then I32(1) else I32(0) end
    let bytes_written: I32 = LibXML2.xmlSaveFormatFileEnc(
      filename,
      ptr',
      encoding,
      format_val)

    // Check for error (negative return indicates failure)
    if bytes_written < 0 then error end

  fun _final() =>
    LibXML2.xmlFreeDoc(ptr')
