use "raw/"

class Xml2Node
  """
  Wrapper around a libxml2 `xmlNode` pointer, providing helpers for XPath
  evaluation, attribute/content access, and basic tree navigation.
  """
  var ptr': NullablePointer[XmlNode]
  var ptr: XmlNode
  var allocated: Bool

  new fromPTR(ptrx: NullablePointer[XmlNode])? =>
    """
    Create an `Xml2Node` from a non-null libxml2 `xmlNode*`.

    - `ptrx`: Nullable pointer to an `XmlNode`.

    Raises an error if `ptrx` is `None`, otherwise stores the pointer in
    `ptr'`, assigns the underlying `XmlNode` to `ptr`, and marks the node
    as allocated.
    """
    if (ptrx.is_none()) then
      error
    else
      ptr' = ptrx
      ptr = ptr'.apply()?
      allocated = true
    end

  fun xpathEval(xpath: String val,  namespaces: Array[(String val, String val)] = []): Xml2XPathResult =>
    """
    Evaluate an XPath expression relative to this node as the context node.

    - `xpath`: The XPath expression to evaluate.
    - `namespaces`: Optional list of `(prefix, uri)` pairs to register on a
      temporary XPath context before evaluation.

    Internally, creates a new `xmlXPathContext` for the owning document,
    registers the provided namespaces, sets this node as the context node,
    calls `xmlXPathEval`, frees the context, and returns an
    `Xml2XPathResult` for the resulting `xmlXPathObject*`.
    """
    let tmpctx: NullablePointer[XmlXPathContext] = LibXML2.xmlXPathNewContext(ptr.doc)
    for (n, url) in namespaces.values() do
      LibXML2.xmlXPathRegisterNs(tmpctx, n, url)
    end
    LibXML2.xmlXPathSetContextNode(ptr', tmpctx)
    let xptr: NullablePointer[XmlXPathObject] = LibXML2.xmlXPathEval(xpath, tmpctx)
    let xpo: Xml2XPathResult = Xml2XPathObject(xptr)
    LibXML2.xmlXPathFreeContext(tmpctx)
    xpo

  fun ref name(): String val =>
    """
    Return this node’s name as a Pony `String`.

    The name is obtained from the underlying `xmlNode->name` C string and
    cloned into a Pony-managed string.
    """
    String.from_cstring(ptr.name).clone()

  fun ref getLineNo(): I64 =>
    """
    Return the line number in the source document where this node was
    parsed, or -1 if the information is unavailable.

    This forwards to `xmlGetLineNo` on the underlying node.
    """
    LibXML2.xmlGetLineNo(ptr')

  fun ref getNodePath(): String =>
    """
    Return an XPath-like string representing the absolute path of this node
    within the document tree.

    This is the result of libxml2’s `xmlGetNodePath` helper.
    """
    LibXML2.xmlGetNodePath(ptr')

  fun ref xpathCastNodeToString(): String =>
    """
    Cast this node to a string using libxml2’s XPath string conversion
    rules (equivalent to XPath’s `string()` function applied to the node).

    Delegates to `xmlXPathCastNodeToString` on the underlying node.
    """
    LibXML2.xmlXPathCastNodeToString(ptr')

  fun ref getProp(pname: String): String =>
    """
    Get the value of an attribute on this element node.

    - `pname`: Attribute name (without any prefix/namespace handling).

    Returns the attribute value string from `xmlGetProp`, or an empty
    string if the attribute is not present.
    """
    LibXML2.xmlGetProp(ptr', pname)

  fun ref getContent(): String =>
    """
    Return the textual content of this node, including text from its
    descendants as defined by libxml2’s `xmlNodeGetContent`.

    Useful for retrieving the logical text value of elements or text nodes.
    """
    LibXML2.xmlNodeGetContent(ptr')

  fun ref getLang(): String =>
    """
    Return the `xml:lang` value in scope for this node.

    This consults the node and its ancestors using `xmlNodeGetLang`.
    """
    LibXML2.xmlNodeGetLang(ptr')

  fun ref castNodeToString(): String =>
    """
    Cast this node to a string using XPath’s string conversion semantics.

    This is equivalent to `xpathCastNodeToString` and wraps
    `xmlXPathCastNodeToString` on the underlying node.
    """
    LibXML2.xmlXPathCastNodeToString(ptr')

  fun ref getChildren(): Array[Xml2Node] =>
    """
    Return all child **element** nodes of this node as an array of
    `Xml2Node`.

    Uses `xmlChildElementCount`, `xmlFirstElementChild`, and
    `xmlNextElementSibling` to iterate only over element children, skipping
    text, comments, and other non-element node types. If there are no
    element children, returns an empty array.
    """
    var rv: Array[Xml2Node] = Array[Xml2Node]
    var elementCount: U64 = LibXML2.xmlChildElementCount(ptr')

    if (elementCount == 0) then
      return(rv)
    end

    var fptr: NullablePointer[XmlNode] = LibXML2.xmlFirstElementChild(ptr')
    try
      rv.push(Xml2Node.fromPTR(fptr)?)
      while (elementCount > 0) do
        elementCount = elementCount - 1
        fptr = LibXML2.xmlNextElementSibling(fptr)
        rv.push(Xml2Node.fromPTR(fptr)?)
      end
    end
    rv

  fun ref nodeDump(plevel: I32, pformat: I32): String val =>
    """
    Serialize this node and its subtree to a string using libxml2’s
    `xmlNodeDump`.

    - `plevel`: Indentation level to start from when pretty-printing.
    - `pformat`: Non-zero to enable formatted (indented) output, zero for
      unformatted.

    Internally, creates a temporary `xmlBuffer`, dumps the node into it, and
    returns the buffer’s contents as a Pony `String`.
    """
    var buf: NullablePointer[XmlBuffer] = LibXML2.xmlBufferCreate()
    LibXML2.xmlNodeDump(buf, ptr.doc, ptr', plevel, pformat)
    LibXML2.xmlBufferContent(buf)
