use "../../libxml2"
use "pony_test"
use "files"

class \nodoc\ iso TestModifyProps is UnitTest
  fun name(): String => "xml2doc/parse-modify-props"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1" name="wibble">hello</child>
        <child id="c2" name="wobble">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      h.assert_eq[String](root.nodeDump(0,0),
        """
        <root>
          <child id="c1" name="wibble">hello</child>
          <child id="c2" name="wobble">world</child>
        </root>""")
      root.setProp("name", "someroot")
      h.assert_eq[String](root.nodeDump(0,0),
        """
        <root name="someroot">
          <child id="c1" name="wibble">hello</child>
          <child id="c2" name="wobble">world</child>
        </root>""")
      root.setProp("name", "someroot2")
      h.assert_eq[String](root.nodeDump(0,0),
        """
        <root name="someroot2">
          <child id="c1" name="wibble">hello</child>
          <child id="c2" name="wobble">world</child>
        </root>""")
      root.unsetProp("name")
      h.assert_eq[String](root.nodeDump(0,0),
        """
        <root>
          <child id="c1" name="wibble">hello</child>
          <child id="c2" name="wobble">world</child>
        </root>""")
    else
      h.fail("Failed to parse XML or get root element")
    end

class \nodoc\ iso TestGetProps is UnitTest
  fun name(): String => "xml2doc/parse-get-props"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1" name="wibble">hello</child>
        <child id="c2" name="wobble">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      h.assert_eq[String]("root", root.name())
      var children: Array[Xml2Node] = root.getChildren()
      h.assert_eq[String]("child", children(0)?.name())
      h.assert_eq[String]("child", children(1)?.name())
      var props: Array[(String, String)] = children(0)?.getProps()
      h.assert_eq[String](props(0)?._1, "id")
      h.assert_eq[String](props(0)?._2, "c1")
      h.assert_eq[String](props(1)?._1, "name")
      h.assert_eq[String](props(1)?._2, "wibble")

      props = children(1)?.getProps()
      h.assert_eq[String](props(0)?._1, "id")
      h.assert_eq[String](props(0)?._2, "c2")
      h.assert_eq[String](props(1)?._1, "name")
      h.assert_eq[String](props(1)?._2, "wobble")
    else
      h.fail("Failed to parse XML or get root element")
    end

class \nodoc\ iso TestParseDocAndRoot is UnitTest
  fun name(): String => "xml2doc/parse-doc-and-root"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">hello</child>
        <child id="c2">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      h.assert_eq[String]("root", root.name())
      var children: Array[Xml2Node] = root.getChildren()
      h.assert_eq[String]("child", children(0)?.name())
      h.assert_eq[String]("child", children(1)?.name())
    else
      h.fail("Failed to parse XML or get root element")
    end

class \nodoc\ iso TestDocXPathSimpleNodeset is UnitTest
  fun name(): String => "xml2doc/xpath-doc-nodeset"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">hello</child>
        <child id="c2">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let res = doc.xpathEval("//child")
      match res
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](2, nodes.size())
        h.assert_eq[String]("child", nodes(0)?.name())
        h.assert_eq[String]("child", nodes(1)?.name())
      else
        h.fail("Expected nodeset result for //child")
      end
    else
      h.fail("Exception in TestDocXPathSimpleNodeset")
    end

class \nodoc\ iso TestDocXPathSimpleNodesetConvenience is UnitTest
  fun name(): String => "xml2doc/xpath-doc-nodeset-convenience"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">hello</child>
        <child id="c2">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let nodes: Array[Xml2Node] = doc.xpathEvalNodes("//child")?
      h.assert_eq[USize](2, nodes.size())
      h.assert_eq[String]("child", nodes(0)?.name())
      h.assert_eq[String]("child", nodes(1)?.name())
    else
      h.fail("Exception in TestDocXPathSimpleNodeset")
    end

class \nodoc\ iso TestNodeXPathRelative is UnitTest
  fun name(): String => "xml2doc/xpath-node-relative"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <section>
          <item>one</item>
          <item>two</item>
        </section>
        <section>
          <item>three</item>
        </section>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let sections = doc.xpathEval("//section")
      match sections
      | let sec_nodes: Array[Xml2Node] =>
        h.assert_eq[USize](2, sec_nodes.size())
        let first_sec = sec_nodes(0)?
        let rel = first_sec.xpathEval("./item")
        match rel
        | let items: Array[Xml2Node] =>
          h.assert_eq[USize](2, items.size())
          h.assert_eq[String]("one", items(0)?.getContent())
          h.assert_eq[String]("two", items(1)?.getContent())
        else
          h.fail("Expected nodeset result for relative ./item")
        end
      else
        h.fail("Expected nodeset result for //section")
      end
    else
      h.fail("Exception in TestNodeXPathRelative")
    end

class \nodoc\ iso TestNodeXPathRelativeConvenience is UnitTest
  fun name(): String => "xml2doc/xpath-node-relative-convenience"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <section>
          <item>one</item>
          <item>two</item>
        </section>
        <section>
          <item>three</item>
        </section>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let sec_nodes: Array[Xml2Node] = doc.xpathEvalNodes("//section")?
      h.assert_eq[USize](2, sec_nodes.size())
      let first_sec = sec_nodes(0)?
      let items: Array[Xml2Node] = first_sec.xpathEvalNodes("./item")?
      h.assert_eq[USize](2, items.size())
      h.assert_eq[String]("one", items(0)?.getContent())
      h.assert_eq[String]("two", items(1)?.getContent())
    else
      h.fail("Exception in TestNodeXPathRelative")
    end

class \nodoc\ iso TestNodeAttributesAndContent is UnitTest
  fun name(): String => "xml2doc/node-attributes-and-content"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1" lang="en">hello</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let child_res = doc.xpathEval("//child")
      match child_res
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
        let child = nodes(0)?
        h.assert_eq[String]("child", child.name())
        h.assert_eq[String]("c1", child.getProp("id"))
        h.assert_eq[String]("hello", child.getContent())
        // Depending on xml:lang usage, getLang may be empty; still exercise it.
        let _ = child.getLang()
      else
        h.fail("Expected nodeset result for //child")
      end
    else
      h.fail("Exception in TestNodeAttributesAndContent")
    end

class \nodoc\ iso TestXPathScalarResults is UnitTest
  fun name(): String => "xml2doc/xpath-scalar-results"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">1</child>
        <child id="c2">2</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // count() -> number
      let count_res = doc.xpathEval("count(//child)")
      match count_res
      | let n: F64 =>
        h.assert_true(n == 2.0)
      else
        h.fail("Expected F64 from count(//child)")
      end

      // boolean() -> bool
      let bool_res = doc.xpathEval("boolean(//child[@id='c1'])")
      match bool_res
      | let b: Bool =>
        h.assert_true(b)
      else
        h.fail("Expected Bool from boolean(//child[@id='c1'])")
      end

      // string() -> string
      let str_res = doc.xpathEval("string(//child[@id='c2'])")
      match str_res
      | let s: String val =>
        h.assert_eq[String]("2", s)
      else
        h.fail("Expected String from string(//child[@id='c2'])")
      end
    else
      h.fail("Exception in TestXPathScalarResults")
    end

class \nodoc\ iso TestXPathScalarResultsConvenience is UnitTest
  fun name(): String => "xml2doc/xpath-scalar-results-convenience"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">1</child>
        <child id="c2">2</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // count() -> number
      let n: F64 = doc.xpathEvalF64("count(//child)")?
      h.assert_true(n.usize() == 2)

      // boolean() -> bool
      let b: Bool = doc.xpathEvalBool("boolean(//child[@id='c1'])")?
      h.assert_true(b)

      // string() -> string
      let s: String val = doc.xpathEvalString("string(//child[@id='c2'])")?
      h.assert_eq[String]("2", s)
    else
      h.fail("Exception in TestXPathScalarResults")
    end
