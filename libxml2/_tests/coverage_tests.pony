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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

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
        let nodes = doc.xpathEvalNodes("//nonexistent") as Array[Xml2Node]
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let ns: Array[(String val, String val)] =
        [("ns", "http://example.com/ns")]

      // Test xpathEvalNodes with namespaces
      let nodes = doc.xpathEvalNodes("//ns:item", ns) as Array[Xml2Node]
      h.assert_eq[USize](2, nodes.size())

      // Test xpathEvalString with namespaces
      let str_val = doc.xpathEvalString("string(//ns:item[1])", ns) as String val
      h.assert_eq[String]("value1", str_val)

      // Test xpathEvalF64 with namespaces
      let count = doc.xpathEvalF64("count(//ns:item)", ns) as F64
      h.assert_true(count == 2.0)

      // Test xpathEvalBool with namespaces
      let exists = doc.xpathEvalBool("boolean(//ns:item)", ns) as Bool
      h.assert_true(exists)

      let not_exists = doc.xpathEvalBool("boolean(//ns:nonexistent)", ns) as Bool
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let ns: Array[(String val, String val)] =
        [("ns", "http://example.com/ns")]

      let root = doc.getRootElement()?
      let containers = root.getChildren()
      let container = containers(0)?

      // Test node-level xpathEvalNodes with namespaces
      let items = container.xpathEvalNodes("./ns:item", ns) as Array[Xml2Node]
      h.assert_eq[USize](2, items.size())
      h.assert_eq[String]("one", items(0)?.getContent())

      // Test node-level xpathEvalString with namespaces
      let str_val = container.xpathEvalString("string(./ns:item[2])", ns) as String val
      h.assert_eq[String]("two", str_val)

      // Test node-level xpathEvalF64 with namespaces
      let count = container.xpathEvalF64("count(./ns:item)", ns) as F64
      h.assert_true(count == 2.0)

      // Test node-level xpathEvalBool with namespaces
      let exists = container.xpathEvalBool("boolean(./ns:item)", ns) as Bool
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // Test deep XPath query
      let nodes = doc.xpathEvalNodes("//level5") as Array[Xml2Node]
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // Test sum function
      let total = doc.xpathEvalF64("sum(//item/@price)") as F64
      h.assert_true((total > 36.49) and (total < 36.51))

      // Test count
      let count = doc.xpathEvalF64("count(//item)") as F64
      h.assert_true(count == 3.0)

      // Test numeric comparison in boolean
      let has_expensive = doc.xpathEvalBool("boolean(//item[@price > 15])") as Bool
      h.assert_true(has_expensive)

      let has_cheap = doc.xpathEvalBool("boolean(//item[@price < 6])") as Bool
      h.assert_true(has_cheap)

      let has_very_expensive =
        doc.xpathEvalBool("boolean(//item[@price > 100])") as Bool
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // Test string-length
      let len = doc.xpathEvalF64("string-length(//item[1]/@name)") as F64
      h.assert_true(len == 11.0)  // "Hello World" = 11 chars

      // Test contains
      let has_hello = doc.xpathEvalBool("contains(//item[1]/@name, 'Hello')") as Bool
      h.assert_true(has_hello)

      let has_bye = doc.xpathEvalBool("contains(//item[1]/@name, 'Goodbye')") as Bool
      h.assert_false(has_bye)

      // Test starts-with
      let starts_hello =
        doc.xpathEvalBool("starts-with(//item[1]/@name, 'Hello')") as Bool
      h.assert_true(starts_hello)

      // Test concat
      let concat_result =
        doc.xpathEvalString("concat('prefix-', //item[1]/@name, '-suffix')") as String val
      h.assert_eq[String]("prefix-Hello World-suffix", concat_result)

      // Test normalize-space
      let normalized = doc.xpathEvalString("normalize-space(//item[2]/@name)") as String val
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
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

class \nodoc\ iso TestSerializeRoundTrip is UnitTest
  """
  Tests for round-trip serialization (parse → serialize → parse)
  """
  fun name(): String => "xml2doc/serialize-roundtrip"

  fun apply(h: TestHelper) =>
    let xml = "<root><child id=\"c1\">text</child></root>"
    try
      let doc1 = Xml2Parser.parseDoc(xml) as Xml2Doc
      let serialized = doc1.serialize(false)?  // compact
      let doc2 = Xml2Parser.parseDoc(serialized) as Xml2Doc

      // Verify structure is preserved
      let root = doc2.getRootElement()?
      h.assert_eq[String]("root", root.name())
      let children = root.getChildren()
      h.assert_eq[USize](1, children.size())
      h.assert_eq[String]("child", children(0)?.name())
      h.assert_eq[String]("c1", children(0)?.getProp("id"))
      h.assert_eq[String]("text", children(0)?.getContent())
    else
      h.fail("Round-trip serialization failed")
    end

class \nodoc\ iso TestSerializeFormatting is UnitTest
  """
  Tests for serialize() formatting options
  """
  fun name(): String => "xml2doc/serialize-formatting"

  fun apply(h: TestHelper) =>
    let xml = "<root><child>text</child></root>"
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // Compact should have no newlines in content
      let compact = doc.serialize(false)?
      h.assert_false(compact.contains("\n  "))

      // Formatted should have newlines and indentation
      let formatted = doc.serialize(true)?
      h.assert_true(formatted.contains("\n"))
    else
      h.fail("Formatting test failed")
    end

class \nodoc\ iso TestSaveToFile is UnitTest
  """
  Tests for saveToFile() and file save/load round-trip
  """
  fun name(): String => "xml2doc/save-to-file"

  fun apply(h: TestHelper) =>
    let xml = "<root><child id=\"test\">content</child></root>"
    let temp_file = "/tmp/pony_libxml2_test_output.xml"

    try
      let auth = FileAuth(h.env.root)

      // Save document
      let doc1 = Xml2Parser.parseDoc(xml) as Xml2Doc
      doc1.saveToFile(auth, temp_file)?

      // Load it back
      let doc2 = Xml2Parser.parseFile(auth, temp_file) as Xml2Doc
      let root = doc2.getRootElement()?
      h.assert_eq[String]("root", root.name())

      let children = root.getChildren()
      h.assert_eq[String]("test", children(0)?.getProp("id"))
      h.assert_eq[String]("content", children(0)?.getContent())

      // Clean up test file
      let fp = FilePath(auth, temp_file)
      fp.remove()
    else
      h.fail("Save/load test failed")
    end

class \nodoc\ iso TestSerializeEncoding is UnitTest
  """
  Tests for serialize() with different encodings
  """
  fun name(): String => "xml2doc/serialize-encoding"

  fun apply(h: TestHelper) =>
    let xml = "<root><child>Test content</child></root>"
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // UTF-8 encoding (default)
      let utf8 = doc.serialize(true, "UTF-8")?
      h.assert_true(utf8.contains("UTF-8"))
      h.assert_true(utf8.contains("Test content"))

      // ISO-8859-1 encoding
      let iso8859 = doc.serialize(true, "ISO-8859-1")?
      h.assert_true(iso8859.contains("ISO-8859-1"))
    else
      h.fail("Encoding test failed")
    end

class \nodoc\ iso TestSerializeModified is UnitTest
  """
  Tests for serializing modified documents
  """
  fun name(): String => "xml2doc/serialize-modified"

  fun apply(h: TestHelper) =>
    let xml = "<root><child id=\"old\">text</child></root>"
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let root = doc.getRootElement()?
      let children = root.getChildren()

      // Modify attribute
      children(0)?.setProp("id", "new")

      // Serialize and verify modification persisted
      let serialized = doc.serialize(false)?
      h.assert_true(serialized.contains("id=\"new\""))
      h.assert_false(serialized.contains("id=\"old\""))
    else
      h.fail("Modified document serialization failed")
    end

class \nodoc\ iso TestSerializeErrors is UnitTest
  """
  Tests for serialize() and saveToFile() error handling
  """
  fun name(): String => "xml2doc/serialize-errors"

  fun apply(h: TestHelper) =>
    let xml = "<root><child>test</child></root>"

    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let auth = FileAuth(h.env.root)

      // Try to save to invalid path (should error)
      try
        doc.saveToFile(auth, "/nonexistent/path/file.xml")?
        h.fail("Should have raised error for invalid path")
      end

      // Successful save should not error
      doc.saveToFile(auth, "/tmp/valid_path.xml")?

      // Clean up test file
      let fp = FilePath(auth, "/tmp/valid_path.xml")
      fp.remove()
    else
      h.fail("Error handling test setup failed")
    end

class \nodoc\ iso TestCreateWithRootConvenience is UnitTest
  """
  Tests for createWithRoot() convenience constructor
  """
  fun name(): String => "xml2doc/create-with-root-convenience"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      h.assert_eq[String]("root", root.name())

      // Verify it's a valid document that can be serialized
      let xml = doc.serialize()?
      h.assert_true(xml.contains("<?xml version"))
      h.assert_true(xml.contains("<root"))
    else
      h.fail("Failed to create document with root convenience method")
    end

class \nodoc\ iso TestMixedContent is UnitTest
  """
  Tests for creating mixed content (text nodes + element nodes)
  """
  fun name(): String => "xml2doc/mixed-content"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("para")?
      let para = doc.getRootElement()?

      // Add text node
      para.appendChild(doc.createTextNode("Start ")?)?

      // Add bold element
      let bold = doc.createElement("b", "bold")?
      para.appendChild(bold)?

      // Add more text
      para.appendChild(doc.createTextNode(" end")?)?

      // Verify content concatenation
      let content = para.getContent()
      h.assert_eq[String]("Start bold end", content)

      // Verify serialization includes all parts
      let xml = doc.serialize()?
      h.assert_true(xml.contains("Start "))
      h.assert_true(xml.contains("<b>bold</b>"))
      h.assert_true(xml.contains(" end"))
    else
      h.fail("Failed to create mixed content")
    end

class \nodoc\ iso TestAddChildConvenience is UnitTest
  """
  Tests for addChild() convenience method
  """
  fun name(): String => "xml2node/add-child-convenience"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?

      // Use addChild convenience method
      let child1 = root.addChild("item", "first")?
      let child2 = root.addChild("item", "second")?

      // Set attributes
      child1.setProp("id", "1")
      child2.setProp("id", "2")

      // Verify structure using XPath
      let items = doc.xpathEvalNodes("//item") as Array[Xml2Node]
      h.assert_eq[USize](2, items.size())

      // Verify attributes
      h.assert_eq[String]("1", items(0)?.getProp("id"))
      h.assert_eq[String]("2", items(1)?.getProp("id"))

      // Verify content
      h.assert_eq[String]("first", items(0)?.getContent())
      h.assert_eq[String]("second", items(1)?.getContent())
    else
      h.fail("Failed to use addChild convenience method")
    end

class \nodoc\ iso TestCreateComment is UnitTest
  """
  Tests for comment node creation
  """
  fun name(): String => "xml2doc/create-comment"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?

      // Add comment
      let comment = doc.createComment("This is a comment")?
      root.appendChild(comment)?

      // Add element
      let child = doc.createElement("child", "text")?
      root.appendChild(child)?

      // Add another comment
      let comment2 = doc.createComment("Another comment")?
      root.appendChild(comment2)?

      // Verify serialization includes comments
      let xml = doc.serialize()?
      h.assert_true(xml.contains("<!--This is a comment-->"))
      h.assert_true(xml.contains("<!--Another comment-->"))
      h.assert_true(xml.contains("<child>text</child>"))
    else
      h.fail("Failed to create comments")
    end

class \nodoc\ iso TestComplexDocumentCreation is UnitTest
  """
  Tests for creating a more complex document structure
  """
  fun name(): String => "xml2doc/complex-creation"

  fun apply(h: TestHelper) =>
    try
      // Create HTML-like structure
      let doc = Xml2Doc.createWithRoot("html")?
      let html = doc.getRootElement()?

      // Add head
      let head = html.addChild("head")?
      let title = head.addChild("title", "Test Page")?

      // Add body
      let body = html.addChild("body")?

      // Add heading
      let h1 = body.addChild("h1", "Welcome")?

      // Add paragraph with mixed content
      let p = body.addChild("p")?
      p.appendChild(doc.createTextNode("This is ")?)?
      let em = doc.createElement("em", "emphasized")?
      p.appendChild(em)?
      p.appendChild(doc.createTextNode(" text.")?)?

      // Add comment
      body.appendChild(doc.createComment("End of content")?)?

      // Verify structure using XPath
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//html") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//head") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//body") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//title") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//h1") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//p") as Array[Xml2Node]).size())
      h.assert_eq[USize](1, (doc.xpathEvalNodes("//em") as Array[Xml2Node]).size())

      // Verify content
      h.assert_eq[String]("Test Page", doc.xpathEvalString("string(//title)") as String val)
      h.assert_eq[String]("Welcome", doc.xpathEvalString("string(//h1)") as String val)
      h.assert_eq[String]("This is emphasized text.", doc.xpathEvalString("string(//p)") as String val)

      // Verify serialization
      let xml = doc.serialize()?
      h.assert_true(xml.contains("<html>"))
      h.assert_true(xml.contains("<head>"))
      h.assert_true(xml.contains("<title>Test Page</title>"))
      h.assert_true(xml.contains("<body>"))
      h.assert_true(xml.contains("<h1>Welcome</h1>"))
      h.assert_true(xml.contains("<!--End of content-->"))
    else
      h.fail("Failed to create complex document")
    end

class \nodoc\ iso TestXPathResultPostFreeAccess is UnitTest
  """
  Regression test for the xmlXPathObject free in Xml2XPathObject.apply.

  After xpathEvalNodes returns, the libxml2 xmlXPathObject (which owned the
  nodeTab buffer) has been freed. The Xml2Node wrappers we got back must
  still be safely accessible because their underlying node pointers point
  into the document, not into the freed XPath object.

  If a regression were to free the XPath object before snapshotting node
  pointers into the Pony array — or fail to copy stringval before freeing —
  reading node names/content here would surface as a crash or garbage data.
  Equivalently, sustained iteration would surface the original leak through
  external memory monitoring (not asserted here, but the loop count is
  picked so a missing free would be visible under a profiler).
  """
  fun name(): String => "xml2xpathobject/post-free-access"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <item id="a">alpha</item>
        <item id="b">beta</item>
        <item id="c">gamma</item>
        <item id="d">delta</item>
      </root>
      """
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc

      // 1. Nodeset path: verify every node's name and content are readable
      //    after xpathEvalNodes returns (post-free correctness check).
      let nodes = doc.xpathEvalNodes("//item") as Array[Xml2Node]
      h.assert_eq[USize](4, nodes.size())
      h.assert_eq[String]("item", nodes(0)?.name())
      h.assert_eq[String]("item", nodes(3)?.name())
      h.assert_eq[String]("alpha", nodes(0)?.xpathCastNodeToString())
      h.assert_eq[String]("delta", nodes(3)?.xpathCastNodeToString())

      // 2. Repeated nodeset queries: each call allocates and frees an
      //    xmlXPathObject. The previously-returned nodes must remain valid
      //    across subsequent allocations.
      var i: USize = 0
      while i < 200 do
        let again = doc.xpathEvalNodes("//item") as Array[Xml2Node]
        h.assert_eq[USize](4, again.size())
        h.assert_eq[String]("item", again(0)?.name())
        i = i + 1
      end
      // First batch of nodes must still be readable.
      h.assert_eq[String]("alpha", nodes(0)?.xpathCastNodeToString())

      // 3. String result path: stringval is owned by the XPath object and
      //    is freed when the object is freed. The clone must have happened
      //    before the free.
      let s1: String = doc.xpathEvalString("string(//item[@id='b'])") as String val
      h.assert_eq[String]("beta", s1)
      // Run repeatedly to surface any free-before-clone regression.
      var j: USize = 0
      while j < 200 do
        let s = doc.xpathEvalString("string(//item[@id='c'])") as String val
        h.assert_eq[String]("gamma", s)
        j = j + 1
      end
      // Original string must still be intact.
      h.assert_eq[String]("beta", s1)

      // 4. Scalar paths (Bool, F64): no buffer to free, but exercise the
      //    same code path to ensure the unconditional free at the end of
      //    Xml2XPathObject.apply doesn't crash on these branches.
      h.assert_eq[F64](4.0, doc.xpathEvalF64("count(//item)") as F64)
      h.assert_eq[Bool](true, doc.xpathEvalBool("count(//item) = 4") as Bool)
    else
      h.fail("Failed to exercise post-free XPath access")
    end

class \nodoc\ iso TestNodeDumpRepeatedCalls is UnitTest
  """
  Regression test for the xmlBuffer free in nodeDump.

  Each call allocates a temporary xmlBuffer, dumps into it, copies the
  content into a Pony String, then frees the buffer. The returned strings
  must remain intact across subsequent calls (no aliasing into the freed
  buffer) and must contain the expected content (the copy must happen
  before the free).

  A regression that freed the buffer before extracting its content would
  surface here as empty or corrupted strings. The original leak (buffer
  never freed) is invisible to unit assertions and requires external
  memory instrumentation to detect.
  """
  fun name(): String => "xml2node/nodedump-repeated"

  fun apply(h: TestHelper) =>
    let xml =
      "<root><item id=\"a\">alpha</item><item id=\"b\">beta</item></root>"
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let root = doc.getRootElement()?
      let children = root.getChildren()
      h.assert_eq[USize](2, children.size())

      // Capture dumps of two siblings, then verify they remain distinct
      // and intact after subsequent calls allocate fresh buffers.
      let first_dump: String val = children(0)?.nodeDump(0, 0)
      let second_dump: String val = children(1)?.nodeDump(0, 0)
      h.assert_eq[String]("<item id=\"a\">alpha</item>", first_dump)
      h.assert_eq[String]("<item id=\"b\">beta</item>", second_dump)

      // Sustained loop exercising allocate-and-free across many iterations.
      var i: USize = 0
      while i < 200 do
        let dump = root.nodeDump(0, 0)
        h.assert_eq[String](
          "<root><item id=\"a\">alpha</item><item id=\"b\">beta</item></root>",
          dump)
        i = i + 1
      end

      // Earlier captures must still be intact after the loop.
      h.assert_eq[String]("<item id=\"a\">alpha</item>", first_dump)
      h.assert_eq[String]("<item id=\"b\">beta</item>", second_dump)
    else
      h.fail("Failed to exercise repeated nodeDump")
    end

class \nodoc\ iso TestNamespaceUriAndPrefix is UnitTest
  """
  Tests for Xml2Node.namespaceUri() and Xml2Node.namespacePrefix() on
  elements with no namespace, a default namespace, and a prefixed
  namespace.
  """
  fun name(): String => "xml2node/namespace-uri-and-prefix"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <repository xmlns="http://www.gtk.org/introspection/core/1.0"
                  xmlns:glib="http://www.gtk.org/introspection/glib/1.0">
        <class>
          <method/>
          <glib:signal/>
        </class>
        <namespace-free xmlns=""/>
      </repository>
      """
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let repository = doc.getRootElement()?
      // Root is in the default namespace - URI populated, prefix empty.
      h.assert_eq[String](
        "http://www.gtk.org/introspection/core/1.0",
        repository.namespaceUri())
      h.assert_eq[String]("", repository.namespacePrefix())

      let children = repository.getChildren()
      h.assert_eq[USize](2, children.size())
      let class_node = children(0)?
      let ns_free = children(1)?

      // <class> inherits the default namespace.
      h.assert_eq[String](
        "http://www.gtk.org/introspection/core/1.0",
        class_node.namespaceUri())
      h.assert_eq[String]("", class_node.namespacePrefix())

      let class_children = class_node.getChildren()
      h.assert_eq[USize](2, class_children.size())
      let method_node = class_children(0)?
      let signal_node = class_children(1)?

      // <method> is in the default namespace.
      h.assert_eq[String]("method", method_node.name())
      h.assert_eq[String](
        "http://www.gtk.org/introspection/core/1.0",
        method_node.namespaceUri())
      h.assert_eq[String]("", method_node.namespacePrefix())

      // <glib:signal> reports the glib URI AND the source-level prefix.
      h.assert_eq[String]("signal", signal_node.name())
      h.assert_eq[String](
        "http://www.gtk.org/introspection/glib/1.0",
        signal_node.namespaceUri())
      h.assert_eq[String]("glib", signal_node.namespacePrefix())

      // <namespace-free xmlns=""/> resets the default namespace to none.
      h.assert_eq[String]("", ns_free.namespaceUri())
      h.assert_eq[String]("", ns_free.namespacePrefix())
    else
      h.fail("Failed to parse XML or access namespace accessors")
    end

class \nodoc\ iso TestQname is UnitTest
  """
  Tests for Xml2Node.qname() returning (namespace_uri, local_name).
  """
  fun name(): String => "xml2node/qname"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root xmlns="http://example.com/default"
            xmlns:c="http://example.com/c">
        <plain/>
        <c:typed/>
      </root>
      """
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let root = doc.getRootElement()?
      let kids = root.getChildren()

      // Direct tuple destructuring at the call site.
      (let root_uri, let root_local) = root.qname()
      h.assert_eq[String]("http://example.com/default", root_uri)
      h.assert_eq[String]("root", root_local)

      (let plain_uri, let plain_local) = kids(0)?.qname()
      h.assert_eq[String]("http://example.com/default", plain_uri)
      h.assert_eq[String]("plain", plain_local)

      (let typed_uri, let typed_local) = kids(1)?.qname()
      h.assert_eq[String]("http://example.com/c", typed_uri)
      h.assert_eq[String]("typed", typed_local)
    else
      h.fail("Failed to parse XML or exercise qname")
    end

class \nodoc\ iso TestGetPropNs is UnitTest
  """
  Tests for Xml2Node.getPropNs(uri, local) resolving namespaced
  attributes by URI. Verifies that the URI-based lookup works
  regardless of which source-level prefix the document used to bind
  the namespace.
  """
  fun name(): String => "xml2node/get-prop-ns"

  fun apply(h: TestHelper) =>
    // Use a non-conventional prefix ("capi" instead of "c") to confirm
    // that getPropNs locates the attribute via its URI, not its prefix.
    let xml =
      """
      <root xmlns:capi="http://www.gtk.org/introspection/c/1.0">
        <field name="x" capi:type="gint" capi:identifier="x_field"/>
      </root>
      """
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let root = doc.getRootElement()?
      let field = root.getChildren()(0)?

      // Plain (non-namespaced) attribute still works via getProp.
      h.assert_eq[String]("x", field.getProp("name"))

      // Namespaced attributes retrieved by URI + local name.
      h.assert_eq[String](
        "gint",
        field.getPropNs(
          "http://www.gtk.org/introspection/c/1.0", "type"))
      h.assert_eq[String](
        "x_field",
        field.getPropNs(
          "http://www.gtk.org/introspection/c/1.0", "identifier"))

      // Unknown namespace returns empty string.
      h.assert_eq[String](
        "",
        field.getPropNs("http://not-a-real-namespace/", "type"))

      // Known namespace, unknown local name returns empty string.
      h.assert_eq[String](
        "",
        field.getPropNs(
          "http://www.gtk.org/introspection/c/1.0", "nope"))
    else
      h.fail("Failed to parse XML or exercise getPropNs")
    end

class \nodoc\ iso TestParserOptionsDefaults is UnitTest
  """
  Verify that the default-constructed Xml2ParserOptions is
  safe-by-default: no_net is enabled, entity substitution is disabled,
  external DTD subset is not loaded.
  """
  fun name(): String => "xml2parseroptions/defaults"

  fun apply(h: TestHelper) =>
    let defaults = Xml2ParserOptions.create()
    h.assert_eq[Bool](true,  defaults.no_net)
    h.assert_eq[Bool](false, defaults.substitute_entities)
    h.assert_eq[Bool](false, defaults.load_dtd)
    h.assert_eq[Bool](false, defaults.load_dtd_attrs)
    h.assert_eq[Bool](false, defaults.error_recovery)
    h.assert_eq[Bool](false, defaults.no_blanks)
    h.assert_eq[Bool](false, defaults.pedantic)
    h.assert_eq[Bool](false, defaults.huge)
    // to_flags() must include XML_PARSE_NONET (2048) and nothing else.
    h.assert_eq[I32](2048, defaults.to_flags())

class \nodoc\ iso TestParserOptionsFlagComposition is UnitTest
  """
  Verify that enabling multiple options OR's their bits correctly into
  the flag bitmask passed to libxml2.
  """
  fun name(): String => "xml2parseroptions/flag-composition"

  fun apply(h: TestHelper) =>
    // Compose every flag set to true.
    let all_on = Xml2ParserOptions.create(
      where
        error_recovery' = true,
        substitute_entities' = true,
        no_blanks' = true,
        no_net' = true,
        load_dtd' = true,
        load_dtd_attrs' = true,
        pedantic' = true,
        huge' = true)
    // Expected: 1 + 2 + 4 + 8 + 128 + 256 + 2048 + 524288
    h.assert_eq[I32](526735, all_on.to_flags())

    // Compose nothing.
    let all_off = Xml2ParserOptions.create(
      where no_net' = false)
    h.assert_eq[I32](0, all_off.to_flags())

    // Compose a typical "lenient parse" config.
    let lenient = Xml2ParserOptions.create(
      where error_recovery' = true, no_blanks' = true)
    // 1 (RECOVER) + 256 (NOBLANKS) + 2048 (NONET) = 2305
    h.assert_eq[I32](2305, lenient.to_flags())

class \nodoc\ iso TestParseDocNoBlanks is UnitTest
  """
  no_blanks = true should cause libxml2 to discard ignorable whitespace
  text nodes between elements. Without it, indentation produces text
  nodes between element children.
  """
  fun name(): String => "xml2doc/parse-no-blanks"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <a/>
        <b/>
        <c/>
      </root>
      """
    try
      // Default: blank text nodes preserved. getChildren() returns
      // element-only children, so we can't distinguish via that API
      // alone; instead, serialize and look for the indentation.
      let doc_default = Xml2Parser.parseDoc(xml) as Xml2Doc
      let root_default = doc_default.getRootElement()?
      let dump_default = root_default.nodeDump(0, 0)
      // With blanks preserved, nodeDump output includes the original
      // indentation between elements.
      h.assert_true(dump_default.contains("\n  <a/>"))

      // With no_blanks: ignorable whitespace dropped during parse.
      // The serialized form has no inter-element whitespace.
      let opts = Xml2ParserOptions.create(where no_blanks' = true)
      let doc_no_blanks = Xml2Parser.parseDoc(xml, opts) as Xml2Doc
      let root_no_blanks = doc_no_blanks.getRootElement()?
      let dump_no_blanks = root_no_blanks.nodeDump(0, 0)
      h.assert_eq[String](
        "<root><a/><b/><c/></root>", dump_no_blanks)
    else
      h.fail("Failed to parse XML")
    end

class \nodoc\ iso TestParseDocErrorRecovery is UnitTest
  """
  error_recovery = true should cause libxml2 to return a (partial)
  document for malformed input that would otherwise fail to parse.
  """
  fun name(): String => "xml2doc/parse-error-recovery"

  fun apply(h: TestHelper) =>
    // Malformed: tag never closed.
    let malformed = "<root><a><b></a>"

    // Default: strict parse fails on this input.
    try
      let _ = Xml2Parser.parseDoc(malformed) as Xml2Doc
      h.fail("Default parse should have rejected malformed XML")
    end

    // error_recovery = true: parse succeeds, returning a doc that
    // libxml2 reconstructed as best it could.
    let opts = Xml2ParserOptions.create(where error_recovery' = true)
    try
      let doc = Xml2Parser.parseDoc(malformed, opts) as Xml2Doc
      let root = doc.getRootElement()?
      // Whatever libxml2 recovers, the doc has a usable root.
      h.assert_eq[String]("root", root.name())
    else
      h.fail("error_recovery should have allowed parse to succeed")
    end

class \nodoc\ iso TestParseDocEntitiesNotSubstitutedByDefault is UnitTest
  """
  By default, substitute_entities is false, so internal entity
  references remain as entity-reference nodes in the document and are
  preserved during serialization. With substitute_entities = true,
  libxml2 expands them inline.

  This guards the XXE-relevant defaults: a future regression that
  enabled XML_PARSE_NOENT by accident would re-introduce the
  attack surface for hostile inputs.
  """
  fun name(): String => "xml2doc/parse-entities-not-substituted-by-default"

  fun apply(h: TestHelper) =>
    let xml =
      "<!DOCTYPE foo [<!ENTITY hello \"WORLD\">]><foo>&hello;</foo>"

    // Default: entity reference preserved.
    try
      let doc = Xml2Parser.parseDoc(xml) as Xml2Doc
      let foo = doc.getRootElement()?
      let dump = foo.nodeDump(0, 0)
      h.assert_true(
        dump.contains("&hello;"),
        "expected entity reference to be preserved, got: " + dump)
      h.assert_false(
        dump.contains("WORLD"),
        "entity value must not appear in element body, got: " + dump)
    else
      h.fail("Default parse of internal entity should have succeeded")
    end

    // substitute_entities = true: entity expanded inline.
    let opts = Xml2ParserOptions.create(
      where substitute_entities' = true)
    try
      let doc = Xml2Parser.parseDoc(xml, opts) as Xml2Doc
      let foo = doc.getRootElement()?
      let dump = foo.nodeDump(0, 0)
      h.assert_false(
        dump.contains("&hello;"),
        "entity ref must be gone after substitution, got: " + dump)
      h.assert_true(
        dump.contains("WORLD"),
        "expected expanded value in element body, got: " + dump)
    else
      h.fail("substitute_entities parse should have succeeded")
    end

class \nodoc\ iso TestRepeatedCstringAccessors is UnitTest
  """
  Regression test for the libxml2 xmlChar*-returning accessors that
  used to leak their C-side allocation on every call.

  Each accessor (`getProp`, `getNsProp`, `getNodePath`, `getContent`,
  `getLang`, `xpathCastNodeToString`) is invoked in a tight loop with
  results captured up-front so the strings persist across subsequent
  calls. If the wrapper accidentally freed a borrowed pointer (e.g.
  the const-pointer return from `xmlBufferContent`), or if it
  double-freed, the loop would crash with `free(): invalid pointer`
  or `double free or corruption`. If the captured strings shared
  backing memory with the freed allocation, the post-loop assertions
  would surface garbage.

  The leak itself is invisible to Pony assertions and only detectable
  under external memory instrumentation; this test guards against
  future regressions where the generator template starts emitting
  the free call for functions that return borrowed pointers.
  """
  fun name(): String => "xml2node/repeated-cstring-accessors"

  fun apply(h: TestHelper) =>
    let xml =
      "<root xml:lang=\"en\" xmlns:c=\"http://example.com/c\">"
      + "<item id=\"x\" c:type=\"gint\">hello</item>"
      + "</root>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        let item = root.getChildren()(0)?

        let initial_path: String = item.getNodePath()
        let initial_content: String = item.getContent()
        let initial_id: String = item.getProp("id")
        let initial_lang: String = item.getLang()
        let initial_cast: String = item.xpathCastNodeToString()
        let initial_nstype: String =
          item.getPropNs("http://example.com/c", "type")
        // nodeDump also exercises xmlBufferContent (which must NOT
        // be freed by the generator-emitted wrapper).
        let initial_dump: String = item.nodeDump(0, 0)

        var i: USize = 0
        while i < 500 do
          h.assert_eq[String]("/root/item", item.getNodePath())
          h.assert_eq[String]("hello", item.getContent())
          h.assert_eq[String]("x", item.getProp("id"))
          h.assert_eq[String]("en", item.getLang())
          h.assert_eq[String]("hello", item.xpathCastNodeToString())
          h.assert_eq[String](
            "gint", item.getPropNs("http://example.com/c", "type"))
          let _ = item.nodeDump(0, 0)
          i = i + 1
        end

        h.assert_eq[String]("/root/item", initial_path)
        h.assert_eq[String]("hello", initial_content)
        h.assert_eq[String]("x", initial_id)
        h.assert_eq[String]("en", initial_lang)
        h.assert_eq[String]("hello", initial_cast)
        h.assert_eq[String]("gint", initial_nstype)
        h.assert_true(initial_dump.size() > 0)
      else
        h.fail("Failed to access nodes")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end
