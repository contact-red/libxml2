use "raw/"
use "debug"

use @pony_triggergc[None](ptr: Pointer[None])
use @pony_ctx[Pointer[None]]()

type Xml2XPathResult is
  (None | Array[Xml2Node] | Bool | String val | F64 | Xml2Error)
  """
  Discriminated union returned by `Xml2Doc.xpathEval` and
  `Xml2Node.xpathEval`.

  Variants:

  - `Array[Xml2Node]` — the expression evaluated to a node-set; the
    array (possibly empty) contains the matched nodes.
  - `Bool` — the expression evaluated to a boolean (`boolean(...)`,
    `count(...) > 0`, etc.).
  - `F64` — the expression evaluated to a number.
  - `String val` — the expression evaluated to a string.
  - `None` — the result type is one libxml2 supports but this binding
    does not yet wrap (point, range, location-set, users, XSLT tree).
    Treated as "no useful Pony-side result" rather than as an error.
  - `Xml2Error` — the evaluation failed (typically a malformed XPath
    expression). The error captures libxml2's diagnostic data.
  """

primitive Xml2XPathObject
  """
  Factory for converting a raw libxml2 `xmlXPathObject*` into a high-level
  `Xml2XPathResult` (nodes, boolean, number, or string) usable from Pony.
  """
  fun apply(
    xml2doc: Xml2Doc tag,
    ptrx: NullablePointer[XmlXPathObject])
    : Xml2XPathResult
  =>
    """
    Wrap a nullable `xmlXPathObject*` and return an
    `Xml2XPathResult` matching the XPath result type.

    Behaviour:

    - If `ptrx` is `None` (evaluation failed — typically a malformed
      XPath expression), returns an `Xml2Error` captured from
      libxml2's last-error.
    - If the XPath type is `nodeset`, converts it into an
      `Array[Xml2Node]` (empty array if the nodeset is empty rather
      than `None`).
    - If the type is `boolean`, returns a Pony `Bool` (`true` when
      `boolval == 1`, otherwise `false`).
    - If the type is `number`, returns a Pony `F64` from `floatval`.
    - If the type is `string`, returns an immutable Pony `String`
      cloned from `stringval`.
    - For undefined, point, range, location-set, user, or XSLT-tree
      types, returns `None` (the eval succeeded but produced a result
      this binding does not yet wrap).

    This function takes ownership of the underlying
    `xmlXPathObject*` and calls `xmlXPathFreeObject` on it before
    returning, after snapshotting the relevant data into Pony-owned
    values. Node pointers stored in the returned `Array[Xml2Node]`
    remain valid because they are owned by the document (which is
    kept alive via the `xml2doc tag` reference), not by the freed
    XPath object.
    """
    if ptrx.is_none() then
      // Evaluation failed - return the captured error. xmlXPathEval
      // is documented to populate xmlGetLastError on failure.
      let err: Xml2Error =
        try Xml2Error.from_last_error()?
        else
          Xml2Error._synthetic(
            Xml2ErrorDomainXPath,
            Xml2ErrorLevelError,
            I32(-1),
            "xpath evaluation returned null with no last-error")
        end
      LibXML2.xmlXPathFreeObject(ptrx)
      return err
    end
    let result: Xml2XPathResult =
      try
        let ptr: XmlXPathObject = ptrx.apply()?
        match ptr.xmltype
        | XPathTypeUndefined() => None
        | XPathTypeNodeset() =>
          let nodearray: Array[Xml2Node] = Array[Xml2Node]
          if not ptr.nodesetval.is_none() then
            let nodeset: XmlNodeSet = ptr.nodesetval.apply()?
            // Borrow `nodeTab` as a Pony Array to iterate, then copy each
            // node pointer into a Pony-owned `Array[Xml2Node]`. The node
            // pointers themselves point into the document (kept alive via
            // `xml2doc tag`), not into the XPath object's table, so they
            // remain valid after `xmlXPathFreeObject` below frees `nodeTab`.
            let nodearray': Array[NullablePointer[XmlNode]] =
              Array[NullablePointer[XmlNode]].from_cpointer(
                nodeset.nodeTab, nodeset.nodeNr.usize())
            for f in nodearray'.values() do
              nodearray.push(Xml2Node.fromPTR(xml2doc, f)?)
            end
          end
          nodearray
        | XPathTypeBoolean() => (ptr.boolval == 1)
        | XPathTypeNumber() => ptr.floatval
        | XPathTypeString() =>
          // `clone()` copies into Pony-owned memory before `stringval` is
          // freed by `xmlXPathFreeObject` below.
          String.from_cstring(ptr.stringval).clone()
        | XPathTypePoint() => None // As yet unsupported
        | XPathTypeRange() => None // As yet unsupported
        | XPathTypeLocationSet() => None // As yet unsupported
        | XPathTypeUsers() => None // As yet unsupported
        | XPathTypeXsltTree() => None // As yet unsupported
        else
          None
        end
      else
        None
      end
    // Free the XPath object after all data is snapshotted into Pony memory.
    LibXML2.xmlXPathFreeObject(ptrx)
    result
