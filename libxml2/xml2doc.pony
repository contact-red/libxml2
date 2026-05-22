use "raw"
use "files"
use "debug"

/*
 * Unfortunately, we have to use direct FFI calls in this case instead
 * of calls to LibXML2 et al, because we use addressof, and that is
 * only valid in direct FFI calls.
 */

// The `XmlFreeFunc` type is now provided by the `raw/` subpackage
// (imported via `use "raw"` above). The `@xmlMemGet` FFI symbol is
// declared per-package, so we redeclare it here for `serialize()`'s
// allocator lookup.

use @xmlDocDumpFormatMemoryEnc[None](
  outdoc: NullablePointer[XmlDoc] tag,
  doctxtptr: Pointer[Pointer[U8]] tag,
  doctxtlen: Pointer[I32] tag,
  txtencoding: Pointer[U8] tag,
  format: I32)

class Xml2Doc
  """
  Wrapper around a libxml2 `xmlDoc` pointer, providing convenient parsing and
  XPath evaluation helpers.
  """
  let ptr': NullablePointer[XmlDoc]

  new _from_ptr(p: NullablePointer[XmlDoc]) =>
    """
    Package-private constructor used by `Xml2Parser` to wrap a
    libxml2-allocated `xmlDoc*` (returned by `xmlReadDoc` /
    `xmlReadFile`) into an `Xml2Doc` instance. The caller is
    responsible for null-checking `p` before construction; this
    constructor accepts the pointer as-is.
    """
    ptr' = p

  new create(version: String = "1.0") ? =>
    """
    Create a new empty XML document with the specified version.

    - `version`: XML version string (default: "1.0")

    Creates an empty document with no root element. Use setRootElement()
    or createElement() to build the document tree.

    Example:
      ```pony
      let doc = Xml2Doc.create()?
      let root = doc.createElement("root")?
      doc.setRootElement(root)?
      ```
    """
    let ptrx: NullablePointer[XmlDoc] = LibXML2.xmlNewDoc(version)
    if ptrx.is_none() then error end
    ptr' = ptrx

  new createWithRoot(root_name: String, version: String = "1.0") ? =>
    """
    Create a new XML document with a root element.

    - `root_name`: Name of the root element
    - `version`: XML version string (default: "1.0")

    Convenience constructor that creates a document and sets the root
    element in one step.

    Example:
      ```pony
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      let child = root.addChild("item")?
      ```
    """
    let ptrx: NullablePointer[XmlDoc] = LibXML2.xmlNewDoc(version)
    if ptrx.is_none() then error end
    ptr' = ptrx

    let root_ptr = LibXML2.xmlNewDocNode(ptr', NullablePointer[XmlNs].none(),
                                          root_name, "")
    if root_ptr.is_none() then
      // Pony does not call _final on objects whose constructor raised, so
      // the xmlDoc allocated above would leak. Free it explicitly here.
      LibXML2.xmlFreeDoc(ptr')
      error
    end
    LibXML2.xmlDocSetRootElement(ptr', root_ptr)

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
    if tmpctx.is_none() then
      // Context allocation failed (OOM).
      return Xml2Error._synthetic(
        Xml2ErrorDomainXPath,
        Xml2ErrorLevelFatal,
        I32(-1),
        "xmlXPathNewContext returned null (OOM)")
    end
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
    : (Array[Xml2Node] | Xml2Error)
  =>
    """
    Convenience method that calls `xpathEval` and projects the result
    to a nodeset.

    Returns the matched nodes (possibly an empty array if the
    expression yielded no matches), or an `Xml2Error` if either the
    evaluation itself failed or the expression evaluated to a non-
    nodeset value (boolean, number, string).
    """
    _XPathExpect.nodes(xpathEval(xpath, namespaces))

  fun xpathEvalString(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : (String val | Xml2Error)
  =>
    """
    Convenience method that calls `xpathEval` and projects the result
    to a string. Returns an `Xml2Error` if the evaluation failed or
    yielded a non-string value.
    """
    _XPathExpect.string(xpathEval(xpath, namespaces))

  fun xpathEvalF64(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : (F64 | Xml2Error)
  =>
    """
    Convenience method that calls `xpathEval` and projects the result
    to an `F64` (libxml2's number representation). Returns an
    `Xml2Error` if the evaluation failed or yielded a non-numeric
    value.
    """
    _XPathExpect.f64(xpathEval(xpath, namespaces))

  fun xpathEvalBool(
    xpath: String val,
    namespaces: Array[(String val, String val)] = [])
    : (Bool | Xml2Error)
  =>
    """
    Convenience method that calls `xpathEval` and projects the result
    to a `Bool`. Returns an `Xml2Error` if the evaluation failed or
    yielded a non-boolean value.
    """
    _XPathExpect.bool(xpathEval(xpath, namespaces))

  fun ref getRootElement(): Xml2Node ? =>
    """
    Return the root element node of this document as an `Xml2Node`.

    Calls `xmlDocGetRootElement` on the underlying `xmlDoc*`. Raises an error
    if the document has no root element or the returned pointer is null.
    """
    let ptrx: NullablePointer[XmlNode] = LibXML2.xmlDocGetRootElement(ptr')
    Xml2Node.fromPTR(recover tag this end, ptrx)?

  fun ref createElement(name: String, content: String = ""): Xml2Node ? =>
    """
    Create a new element node belonging to this document.

    - `name`: Element name (tag name)
    - `content`: Optional text content

    Returns an Xml2Node wrapper. The node is created but not yet attached
    to the document tree. Use setRootElement() or appendChild() to add it.

    Example:
      ```pony
      let doc = Xml2Doc.create()?
      let elem = doc.createElement("item", "Hello")?
      elem.setProp("id", "1")
      ```
    """
    let node_ptr = LibXML2.xmlNewDocNode(ptr', NullablePointer[XmlNs].none(),
                                          name, content)
    if node_ptr.is_none() then error end
    Xml2Node.fromPTR(recover tag this end, node_ptr)?

  fun ref setRootElement(root: Xml2Node): Xml2Node ? =>
    """
    Set the root element of this document.

    - `root`: The node to set as root element

    Returns the old root element if one existed, otherwise returns the new root.
    Raises error if the operation fails.

    Example:
      ```pony
      let doc = Xml2Doc.create()?
      let root = doc.createElement("root")?
      doc.setRootElement(root)?
      ```
    """
    let old_root = LibXML2.xmlDocSetRootElement(ptr', root.ptr')
    if old_root.is_none() then
      root  // Return the new root if no previous root existed
    else
      Xml2Node.fromPTR(recover tag this end, old_root)?
    end

  fun ref createTextNode(content: String): Xml2Node ? =>
    """
    Create a text node belonging to this document.

    - `content`: Text content

    Text nodes are typically added as children of element nodes to create
    mixed content (text and elements combined).

    Example:
      ```pony
      let doc = Xml2Doc.createWithRoot("para")?
      let para = doc.getRootElement()?
      para.appendChild(doc.createTextNode("Some text "))?
      let bold = doc.createElement("b", "bold")?
      para.appendChild(bold)?
      para.appendChild(doc.createTextNode(" more text"))?
      ```
    """
    let node_ptr = LibXML2.xmlNewDocText(ptr', content)
    if node_ptr.is_none() then error end
    Xml2Node.fromPTR(recover tag this end, node_ptr)?

  fun ref createComment(content: String): Xml2Node ? =>
    """
    Create a comment node belonging to this document.

    - `content`: Comment text (without <!-- --> delimiters)

    Comment nodes can be added to the document tree using appendChild().

    Example:
      ```pony
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.appendChild(doc.createComment("This is a comment"))?
      ```
    """
    let node_ptr = LibXML2.xmlNewDocComment(ptr', content)
    if node_ptr.is_none() then error end
    Xml2Node.fromPTR(recover tag this end, node_ptr)?

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
      let doc = Xml2Parser.parseDoc("<root><child>text</child></root>") as Xml2Doc
      let xml_string = doc.serialize()?  // Pretty-printed UTF-8
      let compact = doc.serialize(false)?  // Compact output
      ```
    """
//  Allocate a pony variable to hold our Pointer[U8]
//  Allocate a pony variable to hold the size
    var c_str: Pointer[U8] ref = Pointer[U8]
    var size: I32 = 0

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
    Xml2Free(c_str)

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
      let doc = Xml2Parser.parseDoc("<root><child>text</child></root>") as Xml2Doc
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
