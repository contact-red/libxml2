use "../../libxml2"
use "pony_test"
use "files"
use "debug"

class \nodoc\ iso TestXPath is UnitTest
  fun name(): String => "XPath Functions"
  fun apply(h: TestHelper) =>
    h.assert_true(true)

    try
      let xmlbad: Xml2Doc =
        Xml2Doc.parseFile(FileAuth(h.env.root), "Idontexist")?
      h.assert_true(false) // Fail test if I execute here
    end

    try
      let ns: Array[(String val, String val)] = Array[(String val, String val)]
        .>push(("gi", "http://www.gtk.org/introspection/core/1.0"))
        .>push(( "c", "http://www.gtk.org/introspection/c/1.0"))
      let xmldoc: Xml2Doc =
        Xml2Doc.parseFile(
          FileAuth(h.env.root), "./libxml2/_tests/libxml2-2.0.gir")?
      h.assert_eq[USize](
        (xmldoc.xpathEval("//*", ns) as Array[Xml2Node]).size(), 15)
      h.assert_eq[USize](
        (xmldoc.xpathEval("/gi:repository", ns) as Array[Xml2Node]).size(), 1)
      h.assert_eq[USize](
        (xmldoc.xpathEval("//gi:record", ns) as Array[Xml2Node]).size(), 8)
      h.assert_eq[F64]((xmldoc.xpathEval("count(//*)", ns) as F64), 15)
      h.assert_true(xmldoc.xpathEval("boolean(//*)", ns) as Bool)
      h.assert_false(xmldoc.xpathEval("boolean(/willfail)", ns) as Bool)
      var res: Array[Xml2Node] =
        (xmldoc.xpathEval("//gi:namespace", ns) as Array[Xml2Node])
      h.assert_eq[USize](res.size(), 1)
      var xmln: Xml2Node = res(0)?
      h.assert_eq[String](xmln.name(), "namespace")
      h.assert_eq[USize](
        (xmln.xpathEval("./gi:record", ns) as Array[Xml2Node]).size(), 8)
//        Debug.err("name: " + xmln.name())
//        Debug.err("getLineNo:" + xmln.getLineNo().string())
//        Debug.err("getNodePath: " + xmln.getNodePath())
//        Debug.err("xpathCastNodeToString: " + xmln.xpathCastNodeToString())
//        Debug.err("getProp: " + xmln.getProp("version"))
//        Debug.err("getLang: " + xmln.getLang())
//        Debug.err("castNodeToString: " + xmln.castNodeToString())
//        Debug.err("nodeDump:\n  " + xmln.nodeDump(1, 1))
    else
      Debug.out("XPath functions has FAILED")
    end
