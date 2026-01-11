use "raw/"
use "debug"

use @pony_triggergc[None](ptr: Pointer[None])
use @pony_ctx[Pointer[None]]()

type Xml2XPathResult is (None | Array[Xml2Node] | Bool | String val | F64)

primitive Xml2XPathObject
  """
  Factory for converting a raw libxml2 `xmlXPathObject*` into a high-level
  `Xml2XPathResult` (nodes, boolean, number, or string) usable from Pony.
  """
  fun apply(ptrx: NullablePointer[XmlXPathObject]): Xml2XPathResult =>
    """
    Wrap a nullable `xmlXPathObject*` and return an `Xml2XPathResult`
    matching the XPath result type.

    Behaviour:

    - If `ptrx` is `None` or cannot be dereferenced, returns `None`.
    - If the XPath type is `nodeset` and `nodesetval` is non-null, converts
      it into an `Array[Xml2Node]`, one wrapper per node in the set.
    - If the type is `boolean`, returns a Pony `Bool` (`true` when
      `boolval == 1`, otherwise `false`).
    - If the type is `number`, returns a Pony `F64` from `floatval`.
    - If the type is `string`, returns an immutable Pony `String` cloned
      from `stringval`.
    - For undefined, point, range, location-set, user, or XSLT-tree types,
      returns `None` (currently unsupported).

    This function does not take ownership of the underlying `xmlXPathObject*`
    lifetime; it only interprets its contents and wraps them into Pony data
    structures.
    """
    try
      let ptr: XmlXPathObject = ptrx.apply()?
      match ptr.xmltype
      | XPathTypeUndefined()   => return None
      | XPathTypeNodeset()     =>
        if (ptr.nodesetval.is_none()) then
          return None
        else
          let nodearray: Array[Xml2Node] = Array[Xml2Node]
          let nodeset': NullablePointer[XmlNodeSet] = ptr.nodesetval
          let nodeset: XmlNodeSet = nodeset'.apply()?
          let nodearray': Array[NullablePointer[XmlNode]] =
            Array[NullablePointer[XmlNode]].from_cpointer(
              nodeset.nodeTab, nodeset.nodeNr.usize())

          for f in nodearray'.values() do
            nodearray.push(Xml2Node.fromPTR(f)?)
          end
          return nodearray
        end
      | XPathTypeBoolean()     => XPathTypeBoolean ; return (ptr.boolval == 1)
      | XPathTypeNumber()      => XPathTypeNumber  ; return ptr.floatval
      | XPathTypeString()      => XPathTypeString  ; return String.from_cstring(ptr.stringval).clone()
      | XPathTypePoint()       => return None // As yet unsupported
      | XPathTypeRange()       => return None // As yet unsupported
      | XPathTypeLocationSet() => return None // As yet unsupported
      | XPathTypeUsers()       => return None // As yet unsupported
      | XPathTypeXsltTree()    => return None // As yet unsupported
      else
        return None
      end
    else
      return None
    end
