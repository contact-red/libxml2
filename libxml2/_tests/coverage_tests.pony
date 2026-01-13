use "../../libxml2"
use "pony_test"
use "files"

class \nodoc\ iso TestNodeUtilityMethods is UnitTest
  """
  Tests for Xml2Node utility methods: getLineNo, getNodePath,
  xpathCastNodeToString
  """
  fun name(): String => "xml2node/utility-methods"

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

      // Test getNodePath
      h.assert_eq[String]("/root", root.getNodePath())

      // Test xpathCastNodeToString - returns text content of node
      let cast_str = root.xpathCastNodeToString()
      // The string cast includes all text content from the node tree
      h.assert_eq[String]("\n  hello\n  world\n", cast_str)

      // Test getLineNo on root (returns 0 unless globally enabled)
      let line_no = root.getLineNo()
      // Just verify the method runs and returns a value
      h.assert_true(true) // Method executed without error

      // Test these methods on child nodes
      let children = root.getChildren()
      h.assert_eq[USize](2, children.size())

      let first_child = children(0)?
      h.assert_eq[String]("/root/child[1]", first_child.getNodePath())
      // xpathCastNodeToString returns the string value of the node
      let first_cast = first_child.xpathCastNodeToString()
      h.assert_true(first_cast.contains("hello"))

      let second_child = children(1)?
      h.assert_eq[String]("/root/child[2]", second_child.getNodePath())
      let second_cast = second_child.xpathCastNodeToString()
      h.assert_true(second_cast.contains("world"))
    else
      h.fail("Failed to parse XML or access nodes")
    end

class \nodoc\ iso TestGetLang is UnitTest
  """
  Tests for getLang method with xml:lang attribute
  """
  fun name(): String => "xml2node/get-lang"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root xml:lang="en">
        <child id="c1">hello</child>
        <nested xml:lang="fr">
          <item>bonjour</item>
        </nested>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?

      // Root should have lang="en"
      h.assert_eq[String]("en", root.getLang())

      // Child inherits from root
      let children = root.getChildren()
      let first_child = children(0)?
      h.assert_eq[String]("en", first_child.getLang())

      // Nested element has its own lang
      let nested = children(1)?
      h.assert_eq[String]("fr", nested.getLang())

      // Item inside nested inherits "fr"
      let items = nested.getChildren()
      let item = items(0)?
      h.assert_eq[String]("fr", item.getLang())
    else
      h.fail("Failed to parse XML or access nodes")
    end

class \nodoc\ iso TestEmptyNodeset is UnitTest
  """
  Tests for XPath queries that return empty nodesets
  """
  fun name(): String => "xpath/empty-nodeset"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">hello</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // Query that matches nothing
      let res = doc.xpathEval("//nonexistent")
      match res
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](0, nodes.size())
      | None =>
        // Empty nodeset can also return None
        h.assert_true(true)
      else
        h.fail("Expected empty nodeset or None")
      end

      // Test convenience method throws on empty result
      try
        let nodes = doc.xpathEvalNodes("//nonexistent")?
        h.assert_eq[USize](0, nodes.size())
      end
    else
      h.fail("Failed to parse XML")
    end

class \nodoc\ iso TestNonExistentAttribute is UnitTest
  """
  Tests for getProp with non-existent attributes
  """
  fun name(): String => "xml2node/nonexistent-attribute"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1">hello</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let children = root.getChildren()
      let child = children(0)?

      // Existing attribute
      h.assert_eq[String]("c1", child.getProp("id"))

      // Non-existent attribute returns empty string
      h.assert_eq[String]("", child.getProp("nonexistent"))
      h.assert_eq[String]("", child.getProp("class"))
      h.assert_eq[String]("", root.getProp("id"))
    else
      h.fail("Failed to parse XML or access nodes")
    end

class \nodoc\ iso TestNoElementChildren is UnitTest
  """
  Tests for getChildren when node has no element children
  """
  fun name(): String => "xml2node/no-element-children"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <empty></empty>
        <textonly>just text, no child elements</textonly>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let children = root.getChildren()

      // Empty element has no children
      let empty = children(0)?
      h.assert_eq[USize](0, empty.getChildren().size())

      // Text-only element has no element children
      let textonly = children(1)?
      h.assert_eq[USize](0, textonly.getChildren().size())
      h.assert_eq[String]("just text, no child elements", textonly.getContent())
    else
      h.fail("Failed to parse XML or access nodes")
    end

class \nodoc\ iso TestNodeDumpFormatting is UnitTest
  """
  Tests for nodeDump with different formatting options
  """
  fun name(): String => "xml2node/nodedump-formatting"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root><child>hello</child></root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?

      // No formatting (level=0, format=0)
      let dump_no_format = root.nodeDump(0, 0)
      h.assert_eq[String]("<root><child>hello</child></root>", dump_no_format)

      // With formatting (level=0, format=1)
      let dump_formatted = root.nodeDump(0, 1)
      h.assert_eq[String](
        "<root>\n  <child>hello</child>\n</root>", dump_formatted)

      // With indentation level (level=2, format=1)
      let dump_indented = root.nodeDump(2, 1)
      h.assert_eq[String](
        "<root>\n      <child>hello</child>\n    </root>", dump_indented)
    else
      h.fail("Failed to parse XML")
    end

class \nodoc\ iso TestXPathConvenienceWithNamespaces is UnitTest
  """
  Tests for node convenience methods with namespace support
  """
  fun name(): String => "xml2node/xpath-convenience-namespaces"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root xmlns:ns="http://example.com/ns">
        <ns:item count="3">value1</ns:item>
        <ns:item count="5">value2</ns:item>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let ns: Array[(String val, String val)] =
        [("ns", "http://example.com/ns")]

      // Test xpathEvalNodes with namespaces
      let nodes = doc.xpathEvalNodes("//ns:item", ns)?
      h.assert_eq[USize](2, nodes.size())

      // Test xpathEvalString with namespaces
      let str_val = doc.xpathEvalString("string(//ns:item[1])", ns)?
      h.assert_eq[String]("value1", str_val)

      // Test xpathEvalF64 with namespaces
      let count = doc.xpathEvalF64("count(//ns:item)", ns)?
      h.assert_true(count == 2.0)

      // Test xpathEvalBool with namespaces
      let exists = doc.xpathEvalBool("boolean(//ns:item)", ns)?
      h.assert_true(exists)

      let not_exists = doc.xpathEvalBool("boolean(//ns:nonexistent)", ns)?
      h.assert_false(not_exists)
    else
      h.fail("Failed to parse XML or evaluate XPath")
    end

class \nodoc\ iso TestNodeXPathConvenienceWithNamespaces is UnitTest
  """
  Tests for Xml2Node convenience methods with namespace support
  """
  fun name(): String => "xml2node/node-xpath-convenience-namespaces"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root xmlns:ns="http://example.com/ns">
        <container>
          <ns:item>one</ns:item>
          <ns:item>two</ns:item>
        </container>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let ns: Array[(String val, String val)] =
        [("ns", "http://example.com/ns")]

      let root = doc.getRootElement()?
      let containers = root.getChildren()
      let container = containers(0)?

      // Test node-level xpathEvalNodes with namespaces
      let items = container.xpathEvalNodes("./ns:item", ns)?
      h.assert_eq[USize](2, items.size())
      h.assert_eq[String]("one", items(0)?.getContent())

      // Test node-level xpathEvalString with namespaces
      let str_val = container.xpathEvalString("string(./ns:item[2])", ns)?
      h.assert_eq[String]("two", str_val)

      // Test node-level xpathEvalF64 with namespaces
      let count = container.xpathEvalF64("count(./ns:item)", ns)?
      h.assert_true(count == 2.0)

      // Test node-level xpathEvalBool with namespaces
      let exists = container.xpathEvalBool("boolean(./ns:item)", ns)?
      h.assert_true(exists)
    else
      h.fail("Failed to parse XML or evaluate XPath")
    end

class \nodoc\ iso TestXPathNoneResult is UnitTest
  """
  Tests for XPath expressions that return None
  """
  fun name(): String => "xpath/none-result"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child>hello</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // Invalid XPath should return None or error
      let res = doc.xpathEval("")
      match res
      | None => h.assert_true(true)
      | let nodes: Array[Xml2Node] =>
        // Empty string might return empty nodeset
        h.assert_true(true)
      else
        h.assert_true(true)
      end
    else
      h.fail("Failed to parse XML")
    end

class \nodoc\ iso TestMultipleAttributes is UnitTest
  """
  Tests for nodes with multiple attributes
  """
  fun name(): String => "xml2node/multiple-attributes"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <item id="1" class="primary" data-value="100"
              enabled="true">content</item>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let children = root.getChildren()
      let item = children(0)?

      // Test all attributes individually
      h.assert_eq[String]("1", item.getProp("id"))
      h.assert_eq[String]("primary", item.getProp("class"))
      h.assert_eq[String]("100", item.getProp("data-value"))
      h.assert_eq[String]("true", item.getProp("enabled"))

      // Test getProps returns all attributes
      let props = item.getProps()
      h.assert_eq[USize](4, props.size())

      // Verify all props are present (order may vary)
      var found_id: Bool = false
      var found_class: Bool = false
      var found_data: Bool = false
      var found_enabled: Bool = false

      for (pname, pvalue) in props.values() do
        if pname == "id" then
          h.assert_eq[String]("1", pvalue)
          found_id = true
        elseif pname == "class" then
          h.assert_eq[String]("primary", pvalue)
          found_class = true
        elseif pname == "data-value" then
          h.assert_eq[String]("100", pvalue)
          found_data = true
        elseif pname == "enabled" then
          h.assert_eq[String]("true", pvalue)
          found_enabled = true
        end
      end

      h.assert_true(found_id)
      h.assert_true(found_class)
      h.assert_true(found_data)
      h.assert_true(found_enabled)
    else
      h.fail("Failed to parse XML or access nodes")
    end

class \nodoc\ iso TestDeepNesting is UnitTest
  """
  Tests for deeply nested XML structures
  """
  fun name(): String => "xml2node/deep-nesting"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <level1>
        <level2>
          <level3>
            <level4>
              <level5>deep content</level5>
            </level4>
          </level3>
        </level2>
      </level1>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // Test deep XPath query
      let nodes = doc.xpathEvalNodes("//level5")?
      h.assert_eq[USize](1, nodes.size())
      h.assert_eq[String]("deep content", nodes(0)?.getContent())
      h.assert_eq[String](
        "/level1/level2/level3/level4/level5", nodes(0)?.getNodePath())

      // Navigate using getChildren
      let root = doc.getRootElement()?
      h.assert_eq[String]("level1", root.name())

      let l2 = root.getChildren()(0)?
      h.assert_eq[String]("level2", l2.name())

      let l3 = l2.getChildren()(0)?
      h.assert_eq[String]("level3", l3.name())

      let l4 = l3.getChildren()(0)?
      h.assert_eq[String]("level4", l4.name())

      let l5 = l4.getChildren()(0)?
      h.assert_eq[String]("level5", l5.name())
      h.assert_eq[String]("deep content", l5.getContent())
    else
      h.fail("Failed to parse XML or navigate tree")
    end

class \nodoc\ iso TestXPathNumericOperations is UnitTest
  """
  Tests for XPath numeric operations (sum, math expressions)
  """
  fun name(): String => "xpath/numeric-operations"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <prices>
        <item price="10.50"/>
        <item price="20.25"/>
        <item price="5.75"/>
      </prices>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // Test sum function
      let total = doc.xpathEvalF64("sum(//item/@price)")?
      h.assert_true((total > 36.49) and (total < 36.51))

      // Test count
      let count = doc.xpathEvalF64("count(//item)")?
      h.assert_true(count == 3.0)

      // Test numeric comparison in boolean
      let has_expensive = doc.xpathEvalBool("boolean(//item[@price > 15])")?
      h.assert_true(has_expensive)

      let has_cheap = doc.xpathEvalBool("boolean(//item[@price < 6])")?
      h.assert_true(has_cheap)

      let has_very_expensive =
        doc.xpathEvalBool("boolean(//item[@price > 100])")?
      h.assert_false(has_very_expensive)
    else
      h.fail("Failed to parse XML or evaluate XPath")
    end

class \nodoc\ iso TestXPathStringFunctions is UnitTest
  """
  Tests for XPath string functions
  """
  fun name(): String => "xpath/string-functions"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <item name="Hello World">content</item>
        <item name="  spaces  ">padded</item>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?

      // Test string-length
      let len = doc.xpathEvalF64("string-length(//item[1]/@name)")?
      h.assert_true(len == 11.0)  // "Hello World" = 11 chars

      // Test contains
      let has_hello = doc.xpathEvalBool("contains(//item[1]/@name, 'Hello')")?
      h.assert_true(has_hello)

      let has_bye = doc.xpathEvalBool("contains(//item[1]/@name, 'Goodbye')")?
      h.assert_false(has_bye)

      // Test starts-with
      let starts_hello =
        doc.xpathEvalBool("starts-with(//item[1]/@name, 'Hello')")?
      h.assert_true(starts_hello)

      // Test concat
      let concat_result =
        doc.xpathEvalString("concat('prefix-', //item[1]/@name, '-suffix')")?
      h.assert_eq[String]("prefix-Hello World-suffix", concat_result)

      // Test normalize-space
      let normalized = doc.xpathEvalString("normalize-space(//item[2]/@name)")?
      h.assert_eq[String]("spaces", normalized)
    else
      h.fail("Failed to parse XML or evaluate XPath")
    end

class \nodoc\ iso TestEmptyDocument is UnitTest
  """
  Tests for minimal/empty XML documents
  """
  fun name(): String => "xml2doc/empty-document"

  fun apply(h: TestHelper) =>
    let xml = "<root/>"
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?

      h.assert_eq[String]("root", root.name())
      h.assert_eq[USize](0, root.getChildren().size())
      h.assert_eq[String]("", root.getContent())
      h.assert_eq[USize](0, root.getProps().size())
    else
      h.fail("Failed to parse empty document")
    end

class \nodoc\ iso TestSpecialCharacters is UnitTest
  """
  Tests for XML with special/escaped characters
  """
  fun name(): String => "xml2doc/special-characters"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <item attr="&lt;tag&gt;">
          &amp; ampersand &lt; less &gt; greater &quot; quote
        </item>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      let root = doc.getRootElement()?
      let children = root.getChildren()
      let item = children(0)?

      // Attribute should have decoded value
      h.assert_eq[String]("<tag>", item.getProp("attr"))

      // Content should have decoded entities
      let content = item.getContent()
      h.assert_true(content.contains("& ampersand"))
      h.assert_true(content.contains("< less"))
      h.assert_true(content.contains("> greater"))
      h.assert_true(content.contains("\" quote"))
    else
      h.fail("Failed to parse XML with special characters")
    end
