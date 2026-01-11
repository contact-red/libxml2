use "raw"
use "files"
use "debug"

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
    if (ptrx.is_none()) then error end
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
    if (ptrx.is_none()) then error end
    ptr' = ptrx

  fun xpathEval(xpath: String val, namespaces: Array[(String val, String val)] = []): Xml2XPathResult =>
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
    let tmpctx: NullablePointer[XmlXPathContext] = LibXML2.xmlXPathNewContext(ptr')
    for (n, url) in namespaces.values() do
      LibXML2.xmlXPathRegisterNs(tmpctx, n, url)
    end
    let xptr: NullablePointer[XmlXPathObject] = LibXML2.xmlXPathEval(xpath, tmpctx)
    let xpo: Xml2XPathResult = Xml2XPathObject(recover tag this end, xptr)
    LibXML2.xmlXPathFreeContext(tmpctx)
    xpo

  fun ref getRootElement(): Xml2Node ? =>
    """
    Return the root element node of this document as an `Xml2Node`.

    Calls `xmlDocGetRootElement` on the underlying `xmlDoc*`. Raises an error
    if the document has no root element or the returned pointer is null.
    """
    let ptrx: NullablePointer[XmlNode] = LibXML2.xmlDocGetRootElement(ptr')
    Xml2Node.fromPTR(recover tag this end, ptrx)?

  fun _final() =>
    LibXML2.xmlFreeDoc(ptr')
