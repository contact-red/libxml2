use "../../libxml2"
use "pony_test"
use "pony_check"
use "files"

// Extensive coverage of the Pony API beyond the happy-path basic
// tests. Each test below targets either:
//
//   * an API branch not exercised by basic_tests / coverage_tests
//     (e.g. setRootElement on a doc that already has a root,
//     Xml2Doc.create with a non-default XML version)
//   * an edge case (empty attribute value, many attributes, very
//     deep nesting, unicode in names/values/content)
//   * a libxml2 / Pony interaction that's easy to misuse (encoding
//     transcoding bytes, XPath functions returning different result
//     types, parser options interacting)
//   * a property the API claims but doesn't currently assert
//     directly (setProp/getProp round-trip, appendChild count)

// ---------------------------------------------------------------
// API branch coverage
// ---------------------------------------------------------------

class \nodoc\ iso TestSetRootElementReplacesOldRoot is UnitTest
  """
  `Xml2Doc.setRootElement` is documented to return the previous root
  element when the document already had one, otherwise the new root.
  Existing tests only exercise the "no previous root" branch; this
  test covers the "had a root, returns the old one" branch.
  """
  fun name(): String => "extensive/set-root-element-replaces"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("first")?
      let original_root = doc.getRootElement()?
      h.assert_eq[String]("first", original_root.name())

      // Create a second element and install it as the new root.
      let replacement = doc.createElement("second")?
      let returned = doc.setRootElement(replacement)?

      // Document's current root should now be "second".
      h.assert_eq[String]("second", doc.getRootElement()?.name())
      // Per the docstring, the call returns the old root.
      h.assert_eq[String]("first", returned.name())
    else
      h.fail("setRootElement-replace branch failed unexpectedly")
    end

class \nodoc\ iso TestCreateDocWithCustomVersion is UnitTest
  """
  `Xml2Doc.create(version)` is documented to accept a non-default
  XML version string and forward it to libxml2. Verify that the
  version string appears in the serialised XML declaration.
  """
  fun name(): String => "extensive/create-doc-custom-version"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.create("1.1")?
      let root = doc.createElement("root")?
      doc.setRootElement(root)?
      let serialized = doc.serialize()?
      h.assert_true(
        serialized.contains("version=\"1.1\""),
        "expected version=\"1.1\" in serialised XML, got: " + serialized)
    else
      h.fail("create with custom version failed")
    end

class \nodoc\ iso TestSetPropOverwritesExisting is UnitTest
  """
  Calling `setProp` a second time on the same attribute name should
  overwrite the previous value rather than creating a duplicate
  attribute. The XML 1.0 spec forbids duplicate attribute names on
  the same element and libxml2 enforces this; this test verifies
  the Pony binding honours that.
  """
  fun name(): String => "extensive/set-prop-overwrites"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.setProp("name", "first")
      root.setProp("name", "second")
      root.setProp("name", "third")
      h.assert_eq[String]("third", root.getProp("name"))
      // getProps should report the attribute once, not three times.
      let props = root.getProps()
      h.assert_eq[USize](1, props.size())
      h.assert_eq[String]("name", props(0)?._1)
      h.assert_eq[String]("third", props(0)?._2)
    else
      h.fail("setProp overwrite flow failed")
    end

class \nodoc\ iso TestEmptyAttributeValue is UnitTest
  """
  Attributes with empty string values are valid XML
  (`<elem attr=""/>`) and should round-trip through getProp.
  Distinguishes "attribute present with empty value" from "attribute
  absent" - both return "" from getProp.
  """
  fun name(): String => "extensive/empty-attribute-value"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<r a=\"\" b=\"v\"/>")
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[String]("", root.getProp("a"))
        h.assert_eq[String]("v", root.getProp("b"))
        h.assert_eq[String]("", root.getProp("missing"))
        // getProps must report both "a" and "b" even though "a" is empty.
        let props = root.getProps()
        h.assert_eq[USize](2, props.size())
      else
        h.fail("getRootElement on parsed doc failed")
      end
    | let err: Xml2Error =>
      h.fail("parse of valid XML failed: " + err.string())
    end

// ---------------------------------------------------------------
// Unicode / encoding
// ---------------------------------------------------------------

class \nodoc\ iso TestUnicodeContentRoundTrip is UnitTest
  """
  Non-ASCII content in element bodies must survive parse → serialize
  → re-parse without corruption. Covers a mix of multi-byte scripts
  (Cyrillic, Greek, CJK, Arabic) and supplementary-plane characters
  (a single emoji codepoint encoded as four UTF-8 bytes).
  """
  fun name(): String => "extensive/unicode-content-roundtrip"

  fun apply(h: TestHelper) =>
    let xml =
      "<root>"
      + "<ru>Привет, мир</ru>"
      + "<gr>γειά σου</gr>"
      + "<cn>你好世界</cn>"
      + "<ar>مرحبا</ar>"
      + "<emoji>🎉</emoji>"
      + "</root>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let serialized = doc.serialize(false)?
        match Xml2Parser.parseDoc(serialized)
        | let doc2: Xml2Doc =>
          let root2 = doc2.getRootElement()?
          let kids = root2.getChildren()
          h.assert_eq[USize](5, kids.size())
          h.assert_eq[String]("Привет, мир", kids(0)?.getContent())
          h.assert_eq[String]("γειά σου",   kids(1)?.getContent())
          h.assert_eq[String]("你好世界",     kids(2)?.getContent())
          h.assert_eq[String]("مرحبا",        kids(3)?.getContent())
          h.assert_eq[String]("🎉",            kids(4)?.getContent())
        | let err: Xml2Error =>
          h.fail("re-parse of serialised doc failed: " + err.string())
        end
      else
        h.fail("failed to access nodes")
      end
    | let err: Xml2Error =>
      h.fail("initial parse failed: " + err.string())
    end

class \nodoc\ iso TestUnicodeAttributeValues is UnitTest
  """
  Non-ASCII attribute values should round-trip through setProp /
  getProp / serialize / parse.
  """
  fun name(): String => "extensive/unicode-attribute-values"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.setProp("greeting", "Привет")
      root.setProp("emoji", "🎉")
      root.setProp("mixed", "hello-世界")

      h.assert_eq[String]("Привет", root.getProp("greeting"))
      h.assert_eq[String]("🎉",      root.getProp("emoji"))
      h.assert_eq[String]("hello-世界", root.getProp("mixed"))

      // Round-trip through serialize + parse.
      let serialized = doc.serialize(false)?
      match Xml2Parser.parseDoc(serialized)
      | let doc2: Xml2Doc =>
        let root2 = doc2.getRootElement()?
        h.assert_eq[String]("Привет", root2.getProp("greeting"))
        h.assert_eq[String]("🎉",      root2.getProp("emoji"))
        h.assert_eq[String]("hello-世界", root2.getProp("mixed"))
      | let err: Xml2Error =>
        h.fail("re-parse failed: " + err.string())
      end
    else
      h.fail("unicode attribute round-trip failed")
    end

class \nodoc\ iso TestSerializeUTF16Encoding is UnitTest
  """
  `serialize(_, "UTF-16")` must produce a byte stream that begins
  with a UTF-16 BOM and declares `encoding="UTF-16"` in the XML
  prolog. The body bytes for non-ASCII content should differ from
  the UTF-8 encoding of the same document, proving real transcoding
  occurred rather than the encoding declaration being a relabel.
  """
  fun name(): String => "extensive/serialize-utf16-encoding"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      let child = doc.createElement("greeting", "Привет")?
      root.appendChild(child)?

      let utf8 = doc.serialize(false, "UTF-8")?
      let utf16 = doc.serialize(false, "UTF-16")?

      // UTF-16 output must begin with a byte-order mark (FF FE or
      // FE FF). Note: we can't substring-match "UTF-16" in the
      // output because the encoding declaration itself is encoded
      // as UTF-16 bytes ("U" "\0" "T" "\0" ...), so the UTF-8
      // substring "UTF-16" doesn't appear.
      let first_byte: U8 =
        try utf16.at_offset(0)? else U8(0) end
      h.assert_true(
        (first_byte == 0xFF) or (first_byte == 0xFE),
        "expected UTF-16 BOM (FF FE or FE FF) at start, got byte "
          + first_byte.i32().string())
      // The encoded body must NOT contain the UTF-8 byte sequence
      // for "Привет" - that would mean no transcoding happened.
      h.assert_false(
        utf16.contains("Привет"),
        "UTF-16 output should not contain UTF-8 bytes for the body")
      // UTF-8 output must keep the original bytes verbatim.
      h.assert_true(
        utf8.contains("Привет"),
        "UTF-8 output should contain the literal Cyrillic bytes")
    else
      h.fail("UTF-16 serialization failed")
    end

// ---------------------------------------------------------------
// Parser options interactions
// ---------------------------------------------------------------

class \nodoc\ iso TestParserOptionsCombined is UnitTest
  """
  Combining `error_recovery` and `no_blanks` must apply both flags:
  malformed input is still recovered AND ignorable inter-element
  whitespace in element-only content is dropped. Note that
  libxml2's `no_blanks` only affects whitespace between elements
  that have element-only children, not whitespace adjacent to text
  (mixed content).
  """
  fun name(): String => "extensive/parser-options-combined"

  fun apply(h: TestHelper) =>
    // Element-only content with indentation: no_blanks strips the
    // whitespace between children. Also slightly malformed (extra
    // close tag) to verify recovery still runs.
    let malformed =
      """
      <root>
        <a>1</a>
        <b>2</b>
        <c>3</c></root></extra>
      """
    let opts = Xml2ParserOptions.create(
      where error_recovery' = true, no_blanks' = true)
    match Xml2Parser.parseDoc(malformed, opts)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        let dump = root.nodeDump(0, 0)
        // no_blanks must have dropped the inter-element indentation;
        // the dump should be compact <root><a>1</a>... with no
        // "\n  <" sequences.
        h.assert_false(
          dump.contains("\n  <"),
          "no_blanks should strip indented whitespace; got: " + dump)
        // Recovery must have produced all three children despite
        // the trailing garbage.
        h.assert_eq[USize](3, root.getChildren().size())
      else
        h.fail("post-parse traversal failed")
      end
    | let err: Xml2Error =>
      h.fail(
        "recovery should have produced a doc; got error: "
          + err.string())
    end

// ---------------------------------------------------------------
// XPath function coverage (libxml2 implements XPath 1.0)
// ---------------------------------------------------------------

class \nodoc\ iso TestXPathStringFunctionsExtensive is UnitTest
  """
  Exercise XPath 1.0 string functions: `concat`, `substring`,
  `substring-before`, `substring-after`, `normalize-space`,
  `string-length`, `contains`, `starts-with`. Each is wrapped
  through `xpathEvalString` and asserted on the expected value.
  """
  fun name(): String => "extensive/xpath-string-functions"

  fun apply(h: TestHelper) =>
    let xml = "<r><a>  hello   world  </a></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      match doc.xpathEvalString("concat('A', '-', 'B', '-', 'C')")
      | let s: String val => h.assert_eq[String]("A-B-C", s)
      | let _: Xml2Error => h.fail("concat eval failed")
      end
      match doc.xpathEvalString("substring('hello world', 7)")
      | let s: String val => h.assert_eq[String]("world", s)
      | let _: Xml2Error => h.fail("substring eval failed")
      end
      match doc.xpathEvalString("substring-before('foo:bar', ':')")
      | let s: String val => h.assert_eq[String]("foo", s)
      | let _: Xml2Error => h.fail("substring-before eval failed")
      end
      match doc.xpathEvalString("substring-after('foo:bar', ':')")
      | let s: String val => h.assert_eq[String]("bar", s)
      | let _: Xml2Error => h.fail("substring-after eval failed")
      end
      match doc.xpathEvalString("normalize-space(/r/a)")
      | let s: String val => h.assert_eq[String]("hello world", s)
      | let _: Xml2Error => h.fail("normalize-space eval failed")
      end
      match doc.xpathEvalF64("string-length('hello')")
      | let f: F64 => h.assert_eq[F64](5.0, f)
      | let _: Xml2Error => h.fail("string-length eval failed")
      end
      match doc.xpathEvalBool("contains('hello world', 'world')")
      | let b: Bool => h.assert_eq[Bool](true, b)
      | let _: Xml2Error => h.fail("contains eval failed")
      end
      match doc.xpathEvalBool("starts-with('hello', 'hel')")
      | let b: Bool => h.assert_eq[Bool](true, b)
      | let _: Xml2Error => h.fail("starts-with eval failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestXPathPositionAndLast is UnitTest
  """
  XPath predicates can use `position()` and `last()` to index into a
  matched set. Verify positional indexing returns the expected node.
  """
  fun name(): String => "extensive/xpath-position-and-last"

  fun apply(h: TestHelper) =>
    let xml =
      "<r><i>a</i><i>b</i><i>c</i><i>d</i><i>e</i></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      // last() picks the final element.
      match doc.xpathEvalString("string(/r/i[last()])")
      | let s: String val => h.assert_eq[String]("e", s)
      | let _: Xml2Error => h.fail("last() eval failed")
      end
      // position()=3 picks the third (1-indexed).
      match doc.xpathEvalString("string(/r/i[position()=3])")
      | let s: String val => h.assert_eq[String]("c", s)
      | let _: Xml2Error => h.fail("position()=3 eval failed")
      end
      // last()-1 picks the penultimate.
      match doc.xpathEvalString("string(/r/i[last()-1])")
      | let s: String val => h.assert_eq[String]("d", s)
      | let _: Xml2Error => h.fail("last()-1 eval failed")
      end
      // count() returns the cardinality.
      match doc.xpathEvalF64("count(/r/i)")
      | let f: F64 => h.assert_eq[F64](5.0, f)
      | let _: Xml2Error => h.fail("count() eval failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestXPathNameFunctions is UnitTest
  """
  XPath `name()`, `local-name()`, and `namespace-uri()` functions
  expose the same data as `Xml2Node.name() / namespacePrefix() /
  namespaceUri()` via XPath expressions. Test against a document
  with namespaced elements.
  """
  fun name(): String => "extensive/xpath-name-functions"

  fun apply(h: TestHelper) =>
    let xml =
      "<r xmlns:c=\"http://example.com/c\"><c:item/></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      let ns: Array[(String val, String val)] =
        [("c", "http://example.com/c")]
      // name() returns the qualified name (prefix:local).
      match doc.xpathEvalString("name(/r/c:item)", ns)
      | let s: String val => h.assert_eq[String]("c:item", s)
      | let _: Xml2Error => h.fail("name() eval failed")
      end
      // local-name() returns just the local part.
      match doc.xpathEvalString("local-name(/r/c:item)", ns)
      | let s: String val => h.assert_eq[String]("item", s)
      | let _: Xml2Error => h.fail("local-name() eval failed")
      end
      // namespace-uri() returns the URI.
      match doc.xpathEvalString("namespace-uri(/r/c:item)", ns)
      | let s: String val =>
        h.assert_eq[String]("http://example.com/c", s)
      | let _: Xml2Error => h.fail("namespace-uri() eval failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// Edge cases on data volume
// ---------------------------------------------------------------

class \nodoc\ iso TestManyAttributesRoundTrip is UnitTest
  """
  A single element with many attributes (50) must round-trip
  through setProp / serialize / parse / getProp with all values
  preserved. XML doesn't guarantee attribute order across parse +
  serialize so the test is order-independent.
  """
  fun name(): String => "extensive/many-attributes-roundtrip"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      var i: USize = 0
      while i < 50 do
        root.setProp("a" + i.string(), "v" + i.string())
        i = i + 1
      end

      let serialized = doc.serialize(false)?
      match Xml2Parser.parseDoc(serialized)
      | let doc2: Xml2Doc =>
        let root2 = doc2.getRootElement()?
        i = 0
        while i < 50 do
          h.assert_eq[String](
            "v" + i.string(),
            root2.getProp("a" + i.string()))
          i = i + 1
        end
        // getProps must report all 50 attributes.
        h.assert_eq[USize](50, root2.getProps().size())
      | let err: Xml2Error =>
        h.fail("re-parse failed: " + err.string())
      end
    else
      h.fail("many-attribute round-trip failed")
    end

// ---------------------------------------------------------------
// Property-based round-trips (PonyCheck)
// ---------------------------------------------------------------

class \nodoc\ iso PropSetGetPropRoundTrip is Property1[(String, String)]
  """
  For any valid attribute name (ASCII letters, length 1-32) and any
  printable-ASCII value (length 0-128), the following identity must
  hold:

      setProp(name, value); getProp(name) == value

  Restricts inputs to character classes libxml2 accepts without
  normalisation. Stronger generators (allowing NUL, control bytes,
  multibyte unicode) would surface additional concerns (NUL
  truncation, name validation rejection) that other tests cover.
  """
  fun name(): String => "extensive/prop-set-get-roundtrip/property"

  fun gen(): Generator[(String, String)] =>
    Generators.zip2[String, String](
      Generators.ascii_letters(1, 32),
      Generators.ascii_printable(0, 128))

  fun ref property(arg1: (String, String), h: PropertyHelper) =>
    (let n, let v) = arg1
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.setProp(n, v)
      h.assert_eq[String](v, root.getProp(n))
    } box)

class \nodoc\ iso PropAppendChildPreservesCount is Property1[USize]
  """
  Appending N children to a fresh root element must result in
  `getChildren().size() == N`. Also verifies the XPath
  `count(./elem)` returns the same value, confirming both
  navigation paths agree.
  """
  fun name(): String =>
    "extensive/append-child-preserves-count/property"

  fun gen(): Generator[USize] =>
    Generators.usize(where min = USize(0), max = USize(50))

  fun ref property(arg1: USize, h: PropertyHelper) =>
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      var i: USize = 0
      while i < arg1 do
        let child = doc.createElement("item")?
        root.appendChild(child)?
        i = i + 1
      end
      h.assert_eq[USize](arg1, root.getChildren().size())
      match doc.xpathEvalF64("count(/root/item)")
      | let f: F64 => h.assert_eq[F64](arg1.f64(), f)
      | let _: Xml2Error => h.fail("count() XPath failed")
      end
    } box)

// ---------------------------------------------------------------
// XPath axes coverage
// ---------------------------------------------------------------

class \nodoc\ iso TestXPathAxes is UnitTest
  """
  Walking the XPath tree with non-default axes: descendant,
  ancestor, parent, self, following-sibling, preceding-sibling.
  These produce different node sets than the default child axis
  and exercise libxml2's traversal beyond simple path expressions.
  """
  fun name(): String => "extensive/xpath-axes"

  fun apply(h: TestHelper) =>
    let xml = "<r><a><b/></a><c><d/></c></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      // descendant axis from /r picks up every element below.
      match doc.xpathEvalNodes("/r/descendant::*")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](4, nodes.size())
      | let _: Xml2Error => h.fail("descendant axis failed")
      end
      // ancestor of /r//d is r and c.
      match doc.xpathEvalNodes("//d/ancestor::*")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](2, nodes.size())
      | let _: Xml2Error => h.fail("ancestor axis failed")
      end
      // following-sibling of /r/a is c.
      match doc.xpathEvalNodes("/r/a/following-sibling::*")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
        try h.assert_eq[String]("c", nodes(0)?.name()) end
      | let _: Xml2Error => h.fail("following-sibling axis failed")
      end
      // preceding-sibling of /r/c is a.
      match doc.xpathEvalNodes("/r/c/preceding-sibling::*")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
        try h.assert_eq[String]("a", nodes(0)?.name()) end
      | let _: Xml2Error => h.fail("preceding-sibling axis failed")
      end
      // parent of /r//b is a.
      match doc.xpathEvalNodes("//b/parent::*")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
        try h.assert_eq[String]("a", nodes(0)?.name()) end
      | let _: Xml2Error => h.fail("parent axis failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestXPathNumberFunctions is UnitTest
  """
  XPath 1.0 number functions: sum, floor, ceiling, round, number.
  Exercised through xpathEvalF64.
  """
  fun name(): String => "extensive/xpath-number-functions"

  fun apply(h: TestHelper) =>
    let xml =
      "<r><i p=\"1\"/><i p=\"2\"/><i p=\"3\"/><i p=\"4\"/></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      match doc.xpathEvalF64("sum(/r/i/@p)")
      | let f: F64 => h.assert_eq[F64](10.0, f)
      | let _: Xml2Error => h.fail("sum() failed")
      end
      match doc.xpathEvalF64("floor(2.7)")
      | let f: F64 => h.assert_eq[F64](2.0, f)
      | let _: Xml2Error => h.fail("floor() failed")
      end
      match doc.xpathEvalF64("ceiling(2.3)")
      | let f: F64 => h.assert_eq[F64](3.0, f)
      | let _: Xml2Error => h.fail("ceiling() failed")
      end
      match doc.xpathEvalF64("round(2.5)")
      | let f: F64 => h.assert_eq[F64](3.0, f)
      | let _: Xml2Error => h.fail("round() failed")
      end
      match doc.xpathEvalF64("number('42')")
      | let f: F64 => h.assert_eq[F64](42.0, f)
      | let _: Xml2Error => h.fail("number() failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestXPathBooleanFunctions is UnitTest
  """
  XPath 1.0 boolean functions: true, false, not, boolean.
  """
  fun name(): String => "extensive/xpath-boolean-functions"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<r/>")
    | let doc: Xml2Doc =>
      match doc.xpathEvalBool("true()")
      | let b: Bool => h.assert_eq[Bool](true, b)
      | let _: Xml2Error => h.fail("true() failed")
      end
      match doc.xpathEvalBool("false()")
      | let b: Bool => h.assert_eq[Bool](false, b)
      | let _: Xml2Error => h.fail("false() failed")
      end
      match doc.xpathEvalBool("not(true())")
      | let b: Bool => h.assert_eq[Bool](false, b)
      | let _: Xml2Error => h.fail("not() failed")
      end
      match doc.xpathEvalBool("boolean('non-empty')")
      | let b: Bool => h.assert_eq[Bool](true, b)
      | let _: Xml2Error => h.fail("boolean('...') failed")
      end
      match doc.xpathEvalBool("boolean('')")
      | let b: Bool => h.assert_eq[Bool](false, b)
      | let _: Xml2Error => h.fail("boolean('') failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestXPathAttributePredicates is UnitTest
  """
  Attribute predicates: existence (`@id`), equality (`@id='x'`),
  inequality (`@n != 0`), negation (`not(@id)`), wildcard
  (`@*`). These are the most common XPath patterns in practice
  and exercise libxml2's attribute-node handling.
  """
  fun name(): String => "extensive/xpath-attribute-predicates"

  fun apply(h: TestHelper) =>
    let xml =
      "<r>"
      + "<i id=\"1\" n=\"5\"/>"
      + "<i id=\"2\" n=\"0\"/>"
      + "<i class=\"x\"/>"
      + "</r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      // Existence predicate: two of three <i> have id.
      match doc.xpathEvalNodes("//i[@id]")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](2, nodes.size())
      | let _: Xml2Error => h.fail("@id existence failed")
      end
      // Equality predicate: one match.
      match doc.xpathEvalNodes("//i[@id='2']")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
      | let _: Xml2Error => h.fail("@id='2' failed")
      end
      // Inequality + numeric comparison: one match (n=5, not n=0).
      match doc.xpathEvalNodes("//i[@n != 0]")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
      | let _: Xml2Error => h.fail("@n != 0 failed")
      end
      // Negation: the <i class="x"/> has no @id.
      match doc.xpathEvalNodes("//i[not(@id)]")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
      | let _: Xml2Error => h.fail("not(@id) failed")
      end
      // Wildcard: every <i> with at least one attribute (all three).
      match doc.xpathEvalNodes("//i[@*]")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](3, nodes.size())
      | let _: Xml2Error => h.fail("@* failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// XML parser / serialiser semantics
// ---------------------------------------------------------------

class \nodoc\ iso TestCDATAContentPreserved is UnitTest
  """
  Content inside a `<![CDATA[...]]>` section must reach getContent
  intact (regardless of whether libxml2 represents it as a CDATA
  node or merges it into adjacent text). The point is the *value*
  survives, not the representation.
  """
  fun name(): String => "extensive/cdata-content-preserved"

  fun apply(h: TestHelper) =>
    let xml = "<r><![CDATA[<not really a tag> & raw chars]]></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[String](
          "<not really a tag> & raw chars",
          root.getContent())
      else
        h.fail("getRootElement failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestSelfClosingEquivalence is UnitTest
  """
  `<a/>` and `<a></a>` are semantically identical per XML 1.0 and
  must parse to equivalent trees: same parent count, same children
  count (zero), same name, same content (empty).
  """
  fun name(): String => "extensive/self-closing-equivalence"

  fun apply(h: TestHelper) =>
    let xml_short = "<r><a/></r>"
    let xml_long  = "<r><a></a></r>"
    match Xml2Parser.parseDoc(xml_short)
    | let doc1: Xml2Doc =>
      match Xml2Parser.parseDoc(xml_long)
      | let doc2: Xml2Doc =>
        try
          let r1 = doc1.getRootElement()?
          let r2 = doc2.getRootElement()?
          h.assert_eq[USize](1, r1.getChildren().size())
          h.assert_eq[USize](1, r2.getChildren().size())
          let a1 = r1.getChildren()(0)?
          let a2 = r2.getChildren()(0)?
          h.assert_eq[String]("a", a1.name())
          h.assert_eq[String]("a", a2.name())
          h.assert_eq[USize](0, a1.getChildren().size())
          h.assert_eq[USize](0, a2.getChildren().size())
          h.assert_eq[String]("", a1.getContent())
          h.assert_eq[String]("", a2.getContent())
        else
          h.fail("self-closing equivalence traversal failed")
        end
      | let err: Xml2Error =>
        h.fail("long form parse failed: " + err.string())
      end
    | let err: Xml2Error =>
      h.fail("short form parse failed: " + err.string())
    end

class \nodoc\ iso TestCommentRoundTrip is UnitTest
  """
  Comments are preserved by parse → serialize. After re-parsing
  the serialised output, the comment text must still be visible
  in another serialise pass. (libxml2 keeps comment nodes in the
  tree even though `getChildren` filters them out.)
  """
  fun name(): String => "extensive/comment-roundtrip"

  fun apply(h: TestHelper) =>
    let xml = "<r><!-- note --><a/></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let s1 = doc.serialize(false)?
        h.assert_true(
          s1.contains("<!-- note -->"),
          "first serialize must preserve comment, got: " + s1)
        match Xml2Parser.parseDoc(s1)
        | let doc2: Xml2Doc =>
          let s2 = doc2.serialize(false)?
          h.assert_true(
            s2.contains("<!-- note -->"),
            "second serialize must still preserve comment, got: " + s2)
        | let err: Xml2Error =>
          h.fail("re-parse failed: " + err.string())
        end
      else
        h.fail("serialize failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// Mutation semantics
// ---------------------------------------------------------------

class \nodoc\ iso TestSetContentReplacesChildren is UnitTest
  """
  `Xml2Node.setContent` is documented to set the text content of a
  node. On an element that already has element children, libxml2's
  `xmlNodeSetContent` removes the existing children and installs
  the new text. Verify both effects:

    - After setContent, getChildren returns no element children.
    - After setContent, getContent returns the new text.
  """
  fun name(): String => "extensive/set-content-replaces-children"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<r><a/><b/><c/></r>")
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[USize](3, root.getChildren().size())
        root.setContent("plain text")
        h.assert_eq[USize](0, root.getChildren().size())
        h.assert_eq[String]("plain text", root.getContent())
      else
        h.fail("traversal after setContent failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestSetUnsetGetPropEmpty is UnitTest
  """
  setProp followed by unsetProp leaves the attribute absent;
  getProp on the absent attribute returns the empty string, and
  the call must not raise.
  """
  fun name(): String => "extensive/set-unset-get-prop-empty"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.setProp("flag", "on")
      h.assert_eq[String]("on", root.getProp("flag"))
      root.unsetProp("flag")
      h.assert_eq[String]("", root.getProp("flag"))
      h.assert_eq[USize](0, root.getProps().size())
    else
      h.fail("setProp / unsetProp flow failed")
    end

// ---------------------------------------------------------------
// Volume / boundary
// ---------------------------------------------------------------

class \nodoc\ iso TestLongNamesAndValues is UnitTest
  """
  Element names of 256 characters and attribute values of 4096
  characters round-trip cleanly. libxml2 has internal buffer
  limits but neither of these should exceed them.
  """
  fun name(): String => "extensive/long-names-and-values"

  fun apply(h: TestHelper) =>
    // Build a 256-char element name and a 4096-char value.
    let long_name: String iso = recover iso String end
    var i: USize = 0
    while i < 256 do
      long_name.push('a')
      i = i + 1
    end
    let stable_name: String val = consume long_name
    let long_value: String iso = recover iso String end
    var j: USize = 0
    while j < 4096 do
      long_value.push('v')
      j = j + 1
    end
    let stable_value: String val = consume long_value

    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      let child = doc.createElement(stable_name)?
      child.setProp("data", stable_value)
      root.appendChild(child)?

      let serialized = doc.serialize(false)?
      match Xml2Parser.parseDoc(serialized)
      | let doc2: Xml2Doc =>
        let r2 = doc2.getRootElement()?
        let c2 = r2.getChildren()(0)?
        h.assert_eq[String](stable_name, c2.name())
        h.assert_eq[String](stable_value, c2.getProp("data"))
      | let err: Xml2Error =>
        h.fail("re-parse of long-name doc failed: " + err.string())
      end
    else
      h.fail("long name/value construction failed")
    end

// ---------------------------------------------------------------
// getLang inheritance semantics
// ---------------------------------------------------------------

class \nodoc\ iso TestGetLangNestedScopes is UnitTest
  """
  `xml:lang` declarations are inherited down the tree by default
  and overridden by a nested `xml:lang`. Verify each child reports
  the correct in-scope language and that explicit overrides take
  precedence over the inherited value.
  """
  fun name(): String => "extensive/get-lang-nested-scopes"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <r xml:lang="en">
        <a>
          <b/>
        </a>
        <c xml:lang="fr">
          <d>
            <e xml:lang="ja"/>
          </d>
        </c>
      </r>
      """
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let r = doc.getRootElement()?
        h.assert_eq[String]("en", r.getLang())
        let kids = r.getChildren()
        let a = kids(0)?
        let c = kids(1)?
        h.assert_eq[String]("en", a.getLang())
        h.assert_eq[String]("fr", c.getLang())
        let b = a.getChildren()(0)?
        let d = c.getChildren()(0)?
        let e = d.getChildren()(0)?
        // b inherits en from root.
        h.assert_eq[String]("en", b.getLang())
        // d inherits fr from c.
        h.assert_eq[String]("fr", d.getLang())
        // e overrides with ja.
        h.assert_eq[String]("ja", e.getLang())
      else
        h.fail("nested xml:lang traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// saveToFile interaction with format and encoding
// ---------------------------------------------------------------

class \nodoc\ iso TestSaveToFileWithFormatAndEncoding is UnitTest
  """
  `saveToFile` accepts format and encoding parameters. Verify the
  output file is formatted (indented) when format=true and that
  the encoding declaration matches when encoding is specified.
  """
  fun name(): String => "extensive/save-to-file-format-encoding"

  fun apply(h: TestHelper) =>
    let path = "/tmp/pony_libxml2_extensive_test.xml"
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      let child = doc.createElement("child", "hello")?
      root.appendChild(child)?

      let auth = FileAuth(h.env.root)
      doc.saveToFile(auth, path, true, "ISO-8859-1")?

      // Read the file back and inspect.
      let fp = FilePath(auth, path)
      match OpenFile(fp)
      | let f: File =>
        let bytes = f.read(8192)
        let content: String val = String.from_iso_array(consume bytes)
        f.dispose()
        fp.remove()
        // Formatted output has newlines + indentation between root
        // and child.
        h.assert_true(
          content.contains("\n  <child"),
          "expected formatted indentation in file, got: " + content)
        // The encoding declaration must reflect the requested
        // encoding.
        h.assert_true(
          content.contains("ISO-8859-1"),
          "expected encoding declaration in file, got: " + content)
      else
        fp.remove()
        h.fail("could not open file written by saveToFile")
      end
    else
      h.fail("saveToFile flow failed")
    end

// ---------------------------------------------------------------
// Additional property-based tests
// ---------------------------------------------------------------

class \nodoc\ iso PropStructuralRoundTripStable is Property1[Array[String]]
  """
  For any list of valid element names, building a document with
  those names as children of a root and then running it through
  N parse-serialize cycles produces a structurally stable result:
  the same number of root children, with the same names, on every
  cycle. This is the practical "serialise is a stable encoding"
  property without requiring a full XML AST equality check.
  """
  fun name(): String =>
    "extensive/structural-roundtrip-stable/property"

  fun gen(): Generator[Array[String]] =>
    Generators.seq_of[String, Array[String]](
      Generators.ascii_letters(1, 16), 0, 8)

  fun ref property(arg1: Array[String], h: PropertyHelper) =>
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      for nm in arg1.values() do
        let c = doc.createElement(nm)?
        root.appendChild(c)?
      end
      // Round-trip three times; assert structure on each cycle.
      var current: String val = doc.serialize(false)?
      var i: USize = 0
      while i < 3 do
        match Xml2Parser.parseDoc(current)
        | let d: Xml2Doc =>
          let r = d.getRootElement()?
          h.assert_eq[USize](arg1.size(), r.getChildren().size())
          var j: USize = 0
          while j < arg1.size() do
            h.assert_eq[String](
              arg1(j)?, r.getChildren()(j)?.name())
            j = j + 1
          end
          current = d.serialize(false)?
        | let _: Xml2Error =>
          h.fail("re-parse in roundtrip chain failed")
          return
        end
        i = i + 1
      end
    } box)

class \nodoc\ iso PropGetPropsCardinality is Property1[USize]
  """
  Setting N attributes with distinct names on a root element must
  yield exactly N entries in `getProps()`. Names are generated from
  the iteration index (a0, a1, ...) to guarantee uniqueness; the
  property exercises the cardinality invariant rather than name
  validity.
  """
  fun name(): String => "extensive/getprops-cardinality/property"

  fun gen(): Generator[USize] =>
    Generators.usize(where min = USize(0), max = USize(40))

  fun ref property(arg1: USize, h: PropertyHelper) =>
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      var i: USize = 0
      while i < arg1 do
        root.setProp("a" + i.string(), "v" + i.string())
        i = i + 1
      end
      h.assert_eq[USize](arg1, root.getProps().size())
    } box)

class \nodoc\ iso PropSetUnsetIsEmpty is Property1[(String, String)]
  """
  For any valid attribute name and printable-ASCII value, the
  sequence setProp(n,v); unsetProp(n) must leave the attribute
  absent (getProp returns empty string, getProps reports zero
  entries).
  """
  fun name(): String => "extensive/set-unset-is-empty/property"

  fun gen(): Generator[(String, String)] =>
    Generators.zip2[String, String](
      Generators.ascii_letters(1, 32),
      Generators.ascii_printable(0, 64))

  fun ref property(arg1: (String, String), h: PropertyHelper) =>
    (let n, let v) = arg1
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      root.setProp(n, v)
      root.unsetProp(n)
      h.assert_eq[String]("", root.getProp(n))
      h.assert_eq[USize](0, root.getProps().size())
    } box)
