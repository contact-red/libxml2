primitive _XPathExpect
  """
  Internal helpers shared by `Xml2Doc.xpathEval*` and
  `Xml2Node.xpathEval*` convenience methods. Projects an
  `Xml2XPathResult` to a specific variant, returning an `Xml2Error`
  if the actual variant doesn't match the requested one (or if
  evaluation itself failed).
  """

  fun nodes(r: Xml2XPathResult): (Array[Xml2Node] | Xml2Error) =>
    match r
    | let a: Array[Xml2Node] => a
    | let e: Xml2Error => e
    else _type_mismatch("nodeset")
    end

  fun string(r: Xml2XPathResult): (String val | Xml2Error) =>
    match r
    | let s: String val => s
    | let e: Xml2Error => e
    else _type_mismatch("string")
    end

  fun f64(r: Xml2XPathResult): (F64 | Xml2Error) =>
    match r
    | let f: F64 => f
    | let e: Xml2Error => e
    else _type_mismatch("number")
    end

  fun bool(r: Xml2XPathResult): (Bool | Xml2Error) =>
    match r
    | let b: Bool => b
    | let e: Xml2Error => e
    else _type_mismatch("boolean")
    end

  fun tag _type_mismatch(expected: String): Xml2Error =>
    Xml2Error._synthetic(
      Xml2ErrorDomainXPath,
      Xml2ErrorLevelError,
      I32(-2),
      "xpath result was not a " + expected)
