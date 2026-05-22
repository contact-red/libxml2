use "../../libxml2"
use "../../libxml2/raw"
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

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

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

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

  fun gen(): Generator[USize] =>
    Generators.usize(where min = USize(0), max = USize(200))

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

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

  fun gen(): Generator[Array[String]] =>
    Generators.seq_of[String, Array[String]](
      Generators.ascii_letters(1, 16), 0, 32)

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

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

  fun gen(): Generator[USize] =>
    Generators.usize(where min = USize(0), max = USize(200))

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

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

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

// ---------------------------------------------------------------
// Tree mutation: re-parenting
// ---------------------------------------------------------------

class \nodoc\ iso TestAppendChildPreservesOrder is UnitTest
  """
  Multiple `appendChild` calls preserve insertion order: the
  resulting `getChildren()` returns nodes in the order they were
  appended, and an XPath positional query agrees.

  (Note: re-parenting an existing child via `appendChild` is not
  well-defined in the current API - `xmlAddChild` does not detach
  the node from its previous parent, which would require an
  explicit `xmlUnlinkNode` call this binding doesn't expose. This
  test focuses on the supported case of building a tree from new
  nodes.)
  """
  fun name(): String => "extensive/append-child-preserves-order"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      let names = ["alpha"; "beta"; "gamma"; "delta"; "epsilon"]
      for nm in names.values() do
        let c = doc.createElement(nm)?
        root.appendChild(c)?
      end
      let kids = root.getChildren()
      h.assert_eq[USize](names.size(), kids.size())
      var i: USize = 0
      while i < names.size() do
        h.assert_eq[String](names(i)?, kids(i)?.name())
        i = i + 1
      end
      // XPath positional agreement: /root/*[3] is the third child.
      match doc.xpathEvalString("name(/root/*[3])")
      | let s: String val => h.assert_eq[String]("gamma", s)
      | let _: Xml2Error => h.fail("positional XPath failed")
      end
    else
      h.fail("appendChild order test failed")
    end

// ---------------------------------------------------------------
// DOCTYPE handling
// ---------------------------------------------------------------

class \nodoc\ iso TestDoctypeParsing is UnitTest
  """
  Documents with a DOCTYPE declaration parse successfully and the
  declaration is preserved through serialise/parse round-trips. The
  Pony API doesn't yet expose DTD-specific accessors, but the doc
  must remain navigable.
  """
  fun name(): String => "extensive/doctype-parsing"

  fun apply(h: TestHelper) =>
    let html_like =
      "<!DOCTYPE html><html><body><p>hi</p></body></html>"
    match Xml2Parser.parseDoc(html_like)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[String]("html", root.name())
        // The body and p must be navigable.
        let body = root.getChildren()(0)?
        h.assert_eq[String]("body", body.name())
        h.assert_eq[String]("p", body.getChildren()(0)?.name())
        // Round-trip preserves the DOCTYPE in serialised output.
        let s = doc.serialize(false)?
        h.assert_true(
          s.contains("<!DOCTYPE html"),
          "serialised doc should preserve DOCTYPE; got: " + s)
      else
        h.fail("DOCTYPE traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("DOCTYPE parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// Empty / minimal document edge cases
// ---------------------------------------------------------------

class \nodoc\ iso TestEmptyDocumentVariants is UnitTest
  """
  Distinguish what parses from what doesn't at the boundary of
  "empty":

    - `<r/>`                          - valid empty element
    - `<r></r>`                       - valid empty element (long)
    - `<?xml version="1.0"?>`         - declaration with no root,
                                        should be rejected
    - `   ` (whitespace only)         - should be rejected
    - `""` (empty string)             - should be rejected
  """
  fun name(): String => "extensive/empty-document-variants"

  fun apply(h: TestHelper) =>
    // Valid forms succeed.
    match Xml2Parser.parseDoc("<r/>")
    | let _: Xml2Doc => None
    | let err: Xml2Error =>
      h.fail("<r/> should parse, got: " + err.string())
    end
    match Xml2Parser.parseDoc("<r></r>")
    | let _: Xml2Doc => None
    | let err: Xml2Error =>
      h.fail("<r></r> should parse, got: " + err.string())
    end
    // Invalid forms produce an error rather than a doc.
    match Xml2Parser.parseDoc("<?xml version=\"1.0\"?>")
    | let _: Xml2Doc =>
      h.fail("XML declaration alone should not produce a doc")
    | let _: Xml2Error => None
    end
    match Xml2Parser.parseDoc("   ")
    | let _: Xml2Doc => h.fail("whitespace-only should not parse")
    | let _: Xml2Error => None
    end
    match Xml2Parser.parseDoc("")
    | let _: Xml2Doc => h.fail("empty string should not parse")
    | let _: Xml2Error => None
    end

// ---------------------------------------------------------------
// XPath against a doc with no root
// ---------------------------------------------------------------

class \nodoc\ iso TestXPathOnDocWithoutRoot is UnitTest
  """
  `Xml2Doc.create()` produces a doc with no root element. XPath
  evaluation against such a doc must not crash. Both `xpathEval`
  (non-partial) and the typed convenience methods are exercised.
  """
  fun name(): String => "extensive/xpath-on-doc-without-root"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.create()?
      // Bare-result form: any of the union variants is acceptable
      // (None / empty array / Xml2Error). The important thing is
      // no crash.
      let _ = doc.xpathEval("//anything")
      // Typed-nodeset form: with no root, "//anything" matches
      // nothing. Should return an empty Array[Xml2Node] (libxml2
      // succeeds with a nodeset of size 0).
      match doc.xpathEvalNodes("//anything")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](0, nodes.size())
      | let _: Xml2Error =>
        // Acceptable: some libxml2 versions may error rather than
        // returning an empty set; either is non-crashing.
        None
      end
    else
      h.fail("Xml2Doc.create / xpath on empty doc failed")
    end

// ---------------------------------------------------------------
// Parser flags: DTD attribute defaulting
// ---------------------------------------------------------------

class \nodoc\ iso TestLoadDtdFlagsAcceptValidInput is UnitTest
  """
  Documents containing an internal DTD subset must parse with the
  load_dtd and load_dtd_attrs options set without error, and the
  document tree must be usable after parsing. (Whether default
  attributes from inline ATTLIST declarations are applied to
  matching elements depends on libxml2's validation pass and is
  not asserted here.)
  """
  fun name(): String => "extensive/load-dtd-flags-accept-valid"

  fun apply(h: TestHelper) =>
    let xml =
      "<!DOCTYPE r [<!ATTLIST r class CDATA \"default-value\">]>"
      + "<r><child/></r>"
    let opts = Xml2ParserOptions.create(
      where load_dtd' = true, load_dtd_attrs' = true)
    match Xml2Parser.parseDoc(xml, opts)
    | let doc: Xml2Doc =>
      try
        let r = doc.getRootElement()?
        h.assert_eq[String]("r", r.name())
        h.assert_eq[USize](1, r.getChildren().size())
        h.assert_eq[String]("child", r.getChildren()(0)?.name())
        // Round-trip preserves the DOCTYPE.
        let s = doc.serialize(false)?
        h.assert_true(
          s.contains("<!DOCTYPE r"),
          "DOCTYPE should survive round-trip; got: " + s)
      else
        h.fail("load_dtd traversal failed")
      end
    | let err: Xml2Error =>
      h.fail(
        "load_dtd options should accept valid input; got error: "
          + err.string())
    end

// ---------------------------------------------------------------
// Pedantic mode regression
// ---------------------------------------------------------------

class \nodoc\ iso TestPedanticAcceptsValidInput is UnitTest
  """
  `pedantic = true` enables stricter warning reporting but must not
  reject standards-compliant XML. This test guards against a
  regression where pedantic mode accidentally fails on valid input.
  """
  fun name(): String => "extensive/pedantic-accepts-valid"

  fun apply(h: TestHelper) =>
    let xml =
      "<r><a id=\"1\">first</a><b id=\"2\">second</b></r>"
    let opts = Xml2ParserOptions.create(where pedantic' = true)
    match Xml2Parser.parseDoc(xml, opts)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[USize](2, root.getChildren().size())
        h.assert_eq[String]("first",
          root.getChildren()(0)?.getContent())
      else
        h.fail("pedantic traversal failed")
      end
    | let err: Xml2Error =>
      h.fail(
        "pedantic mode should accept valid XML; got error: "
          + err.string())
    end

// ---------------------------------------------------------------
// Deeply nested XPath
// ---------------------------------------------------------------

class \nodoc\ iso TestDeepXPathExpression is UnitTest
  """
  Build a 20-level-deep tree and verify that an absolute XPath
  navigates to the deepest node and that a descendant-axis query
  finds it from the root. Exercises libxml2's path resolution on
  longer paths than the basic tests use.
  """
  fun name(): String => "extensive/deep-xpath-expression"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      var parent = doc.getRootElement()?
      var i: USize = 0
      while i < 20 do
        let child = doc.createElement("n")?
        parent.appendChild(child)?
        parent = child
        i = i + 1
      end
      // Tag the deepest node so we can find it specifically.
      parent.setProp("marker", "leaf")

      // Absolute path: /root/n/n/.../n (20 n's deep).
      let absolute_path: String iso = recover iso String end
      absolute_path.append("/root")
      var j: USize = 0
      while j < 20 do
        absolute_path.append("/n")
        j = j + 1
      end
      let absolute_path_str: String val = consume absolute_path

      match doc.xpathEvalNodes(absolute_path_str)
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
        h.assert_eq[String]("leaf", nodes(0)?.getProp("marker"))
      | let _: Xml2Error => h.fail("absolute deep path failed")
      end

      // Descendant axis: find the marker via attribute predicate.
      match doc.xpathEvalNodes("//n[@marker='leaf']")
      | let nodes: Array[Xml2Node] =>
        h.assert_eq[USize](1, nodes.size())
      | let _: Xml2Error => h.fail("descendant-marker query failed")
      end
    else
      h.fail("deep-tree construction failed")
    end

// ---------------------------------------------------------------
// xml:space attribute
// ---------------------------------------------------------------

class \nodoc\ iso TestXmlSpaceAttributePreserved is UnitTest
  """
  `xml:space` is in the implicit XML namespace
  `http://www.w3.org/XML/1998/namespace`. Verify that it is
  preserved through parse / serialise and is readable via
  `getPropNs` with the XML namespace URI. (Reading it via
  `getProp("xml:space")` is implementation-defined since `getProp`
  is namespace-unaware.)
  """
  fun name(): String => "extensive/xml-space-preserved"

  fun apply(h: TestHelper) =>
    let xml_ns = "http://www.w3.org/XML/1998/namespace"
    let xml =
      "<r xml:space=\"preserve\"><a xml:space=\"default\"/></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[String](
          "preserve", root.getPropNs(xml_ns, "space"))
        let a = root.getChildren()(0)?
        h.assert_eq[String](
          "default", a.getPropNs(xml_ns, "space"))
        // Round-trip via serialise.
        let s = doc.serialize(false)?
        h.assert_true(
          s.contains("xml:space=\"preserve\""),
          "serialised root must keep xml:space attribute; got: "
            + s)
      else
        h.fail("xml:space traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("xml:space parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// Namespace prefix shadowing
// ---------------------------------------------------------------

class \nodoc\ iso TestNamespacePrefixShadowing is UnitTest
  """
  When the same namespace prefix is redeclared on a nested element,
  the inner declaration shadows the outer for that subtree.
  `Xml2Node.namespaceUri()` must return the URI in scope at each
  node - the outer URI for nodes outside the redeclaration, the
  inner URI for the redeclaring element and its descendants.
  """
  fun name(): String => "extensive/namespace-prefix-shadowing"

  fun apply(h: TestHelper) =>
    let outer_uri = "http://example.com/outer"
    let inner_uri = "http://example.com/inner"
    let xml: String val =
      "<r xmlns:x=\"" + outer_uri + "\">"
      + "<x:outer>"
      + "<x:inner xmlns:x=\"" + inner_uri + "\">"
      + "<x:deepest/>"
      + "</x:inner>"
      + "</x:outer>"
      + "</r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let r = doc.getRootElement()?
        let outer = r.getChildren()(0)?
        let inner = outer.getChildren()(0)?
        let deepest = inner.getChildren()(0)?
        h.assert_eq[String](outer_uri, outer.namespaceUri())
        h.assert_eq[String](inner_uri, inner.namespaceUri())
        // deepest inherits the inner declaration.
        h.assert_eq[String](inner_uri, deepest.namespaceUri())
        // All three report prefix "x" - prefix is source-level
        // and doesn't change with shadowing.
        h.assert_eq[String]("x", outer.namespacePrefix())
        h.assert_eq[String]("x", inner.namespacePrefix())
        h.assert_eq[String]("x", deepest.namespacePrefix())
      else
        h.fail("shadowing traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("shadowing parse failed: " + err.string())
    end

// ---------------------------------------------------------------
// Xml2Node.fromPTR error path
// ---------------------------------------------------------------

class \nodoc\ iso TestFromPTRRejectsNull is UnitTest
  """
  `Xml2Node.fromPTR` is documented to raise on a `None` pointer.
  Verify the error path explicitly: the call must raise rather
  than silently produce a wrapper around a null pointer.
  """
  fun name(): String => "extensive/from-ptr-rejects-null"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      try
        let _ = Xml2Node.fromPTR(
          recover tag doc end,
          NullablePointer[XmlNode].none())?
        h.fail("fromPTR with None pointer should have raised")
      end
    else
      h.fail("could not even build the doc to test fromPTR null path")
    end

// ---------------------------------------------------------------
// Primitive identity sweeps
// ---------------------------------------------------------------

class \nodoc\ iso TestAllXml2ErrorDomainPrimitives is UnitTest
  """
  Iterate the full libxml2 error-domain enum and verify each
  integer code maps to the documented `Xml2ErrorDomain*` primitive
  via `Xml2ErrorDomainFromI32`, and that each primitive's
  `string()` method returns the documented short name. Out-of-
  range codes map to `Xml2ErrorDomainUnknown`.

  This catches any drift between the libxml2 `xmlErrorDomain` enum
  ordering and the Pony-side mapping table.
  """
  fun name(): String => "extensive/all-error-domain-primitives"

  fun apply(h: TestHelper) =>
    h.assert_true(Xml2ErrorDomainFromI32(0)  is Xml2ErrorDomainNone)
    h.assert_true(Xml2ErrorDomainFromI32(1)  is Xml2ErrorDomainParser)
    h.assert_true(Xml2ErrorDomainFromI32(2)  is Xml2ErrorDomainTree)
    h.assert_true(Xml2ErrorDomainFromI32(3)  is Xml2ErrorDomainNamespace)
    h.assert_true(Xml2ErrorDomainFromI32(4)  is Xml2ErrorDomainDtd)
    h.assert_true(Xml2ErrorDomainFromI32(5)  is Xml2ErrorDomainHtml)
    h.assert_true(Xml2ErrorDomainFromI32(6)  is Xml2ErrorDomainMemory)
    h.assert_true(Xml2ErrorDomainFromI32(7)  is Xml2ErrorDomainOutput)
    h.assert_true(Xml2ErrorDomainFromI32(8)  is Xml2ErrorDomainIo)
    h.assert_true(Xml2ErrorDomainFromI32(9)  is Xml2ErrorDomainFtp)
    h.assert_true(Xml2ErrorDomainFromI32(10) is Xml2ErrorDomainHttp)
    h.assert_true(Xml2ErrorDomainFromI32(11) is Xml2ErrorDomainXInclude)
    h.assert_true(Xml2ErrorDomainFromI32(12) is Xml2ErrorDomainXPath)
    h.assert_true(Xml2ErrorDomainFromI32(13) is Xml2ErrorDomainXPointer)
    h.assert_true(Xml2ErrorDomainFromI32(14) is Xml2ErrorDomainRegexp)
    h.assert_true(Xml2ErrorDomainFromI32(15) is Xml2ErrorDomainDatatype)
    h.assert_true(Xml2ErrorDomainFromI32(16) is Xml2ErrorDomainSchemasParser)
    h.assert_true(Xml2ErrorDomainFromI32(17) is Xml2ErrorDomainSchemasValid)
    h.assert_true(Xml2ErrorDomainFromI32(18) is Xml2ErrorDomainRelaxNgParser)
    h.assert_true(Xml2ErrorDomainFromI32(19) is Xml2ErrorDomainRelaxNgValid)
    h.assert_true(Xml2ErrorDomainFromI32(20) is Xml2ErrorDomainCatalog)
    h.assert_true(Xml2ErrorDomainFromI32(21) is Xml2ErrorDomainC14n)
    h.assert_true(Xml2ErrorDomainFromI32(22) is Xml2ErrorDomainXslt)
    h.assert_true(Xml2ErrorDomainFromI32(23) is Xml2ErrorDomainValid)
    h.assert_true(Xml2ErrorDomainFromI32(24) is Xml2ErrorDomainCheck)
    h.assert_true(Xml2ErrorDomainFromI32(25) is Xml2ErrorDomainWriter)
    h.assert_true(Xml2ErrorDomainFromI32(26) is Xml2ErrorDomainModule)
    h.assert_true(Xml2ErrorDomainFromI32(27) is Xml2ErrorDomainI18n)
    h.assert_true(Xml2ErrorDomainFromI32(28) is Xml2ErrorDomainSchematronValid)
    h.assert_true(Xml2ErrorDomainFromI32(29) is Xml2ErrorDomainBuffer)
    h.assert_true(Xml2ErrorDomainFromI32(30) is Xml2ErrorDomainUri)
    h.assert_true(Xml2ErrorDomainFromI32(31) is Xml2ErrorDomainUnknown)
    h.assert_true(Xml2ErrorDomainFromI32(-1) is Xml2ErrorDomainUnknown)

    // Per-primitive string() round-trip.
    h.assert_eq[String]("None",            Xml2ErrorDomainNone.string())
    h.assert_eq[String]("Parser",          Xml2ErrorDomainParser.string())
    h.assert_eq[String]("Tree",            Xml2ErrorDomainTree.string())
    h.assert_eq[String]("Namespace",       Xml2ErrorDomainNamespace.string())
    h.assert_eq[String]("Dtd",             Xml2ErrorDomainDtd.string())
    h.assert_eq[String]("Html",            Xml2ErrorDomainHtml.string())
    h.assert_eq[String]("Memory",          Xml2ErrorDomainMemory.string())
    h.assert_eq[String]("Output",          Xml2ErrorDomainOutput.string())
    h.assert_eq[String]("Io",              Xml2ErrorDomainIo.string())
    h.assert_eq[String]("Ftp",             Xml2ErrorDomainFtp.string())
    h.assert_eq[String]("Http",            Xml2ErrorDomainHttp.string())
    h.assert_eq[String]("XInclude",        Xml2ErrorDomainXInclude.string())
    h.assert_eq[String]("XPath",           Xml2ErrorDomainXPath.string())
    h.assert_eq[String]("XPointer",        Xml2ErrorDomainXPointer.string())
    h.assert_eq[String]("Regexp",          Xml2ErrorDomainRegexp.string())
    h.assert_eq[String]("Datatype",        Xml2ErrorDomainDatatype.string())
    h.assert_eq[String]("SchemasParser",   Xml2ErrorDomainSchemasParser.string())
    h.assert_eq[String]("SchemasValid",    Xml2ErrorDomainSchemasValid.string())
    h.assert_eq[String]("RelaxNgParser",   Xml2ErrorDomainRelaxNgParser.string())
    h.assert_eq[String]("RelaxNgValid",    Xml2ErrorDomainRelaxNgValid.string())
    h.assert_eq[String]("Catalog",         Xml2ErrorDomainCatalog.string())
    h.assert_eq[String]("C14n",            Xml2ErrorDomainC14n.string())
    h.assert_eq[String]("Xslt",            Xml2ErrorDomainXslt.string())
    h.assert_eq[String]("Valid",           Xml2ErrorDomainValid.string())
    h.assert_eq[String]("Check",           Xml2ErrorDomainCheck.string())
    h.assert_eq[String]("Writer",          Xml2ErrorDomainWriter.string())
    h.assert_eq[String]("Module",          Xml2ErrorDomainModule.string())
    h.assert_eq[String]("I18n",            Xml2ErrorDomainI18n.string())
    h.assert_eq[String]("SchematronValid", Xml2ErrorDomainSchematronValid.string())
    h.assert_eq[String]("Buffer",          Xml2ErrorDomainBuffer.string())
    h.assert_eq[String]("Uri",             Xml2ErrorDomainUri.string())
    h.assert_eq[String]("Unknown",         Xml2ErrorDomainUnknown.string())

class \nodoc\ iso TestAllXml2ErrorLevelPrimitives is UnitTest
  """
  All four documented libxml2 `xmlErrorLevel` values plus the
  out-of-range fall-through map correctly through
  `Xml2ErrorLevelFromI32` and report the expected `string()`.
  """
  fun name(): String => "extensive/all-error-level-primitives"

  fun apply(h: TestHelper) =>
    h.assert_true(Xml2ErrorLevelFromI32(0)   is Xml2ErrorLevelNone)
    h.assert_true(Xml2ErrorLevelFromI32(1)   is Xml2ErrorLevelWarning)
    h.assert_true(Xml2ErrorLevelFromI32(2)   is Xml2ErrorLevelError)
    h.assert_true(Xml2ErrorLevelFromI32(3)   is Xml2ErrorLevelFatal)
    h.assert_true(Xml2ErrorLevelFromI32(4)   is Xml2ErrorLevelUnknown)
    h.assert_true(Xml2ErrorLevelFromI32(-1)  is Xml2ErrorLevelUnknown)
    h.assert_eq[String]("None",    Xml2ErrorLevelNone.string())
    h.assert_eq[String]("Warning", Xml2ErrorLevelWarning.string())
    h.assert_eq[String]("Error",   Xml2ErrorLevelError.string())
    h.assert_eq[String]("Fatal",   Xml2ErrorLevelFatal.string())
    h.assert_eq[String]("Unknown", Xml2ErrorLevelUnknown.string())

class \nodoc\ iso TestAllXPathTypePrimitives is UnitTest
  """
  All ten libxml2 `xmlXPathObjectType` integers have a
  corresponding `XPathType*` primitive whose `apply()` returns the
  expected integer code. Catches drift between libxml2's enum
  ordering and the Pony-side primitive set.
  """
  fun name(): String => "extensive/all-xpath-type-primitives"

  fun apply(h: TestHelper) =>
    h.assert_eq[I32](0, XPathTypeUndefined())
    h.assert_eq[I32](1, XPathTypeNodeset())
    h.assert_eq[I32](2, XPathTypeBoolean())
    h.assert_eq[I32](3, XPathTypeNumber())
    h.assert_eq[I32](4, XPathTypeString())
    h.assert_eq[I32](5, XPathTypePoint())
    h.assert_eq[I32](6, XPathTypeRange())
    h.assert_eq[I32](7, XPathTypeLocationSet())
    h.assert_eq[I32](8, XPathTypeUsers())
    h.assert_eq[I32](9, XPathTypeXsltTree())

// ---------------------------------------------------------------
// Edge cases on text / comment / attribute creation
// ---------------------------------------------------------------

class \nodoc\ iso TestCreateTextNodeEntityChars is UnitTest
  """
  Text nodes containing the five XML special characters (`<`,
  `>`, `&`, `'`, `"`) must escape them in the serialised output.
  libxml2 does this transparently on `xmlNodeSetContent` /
  `xmlNewDocText`.
  """
  fun name(): String => "extensive/text-node-entity-chars"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("r")?
      let root = doc.getRootElement()?
      let txt = doc.createTextNode(
        "a < b & c > d \"quoted\" 'apostrophe'")?
      root.appendChild(txt)?
      let s = doc.serialize(false)?
      // < > & must be escaped; apostrophes and quotes are
      // typically passed through in text (only attribute values
      // require quote escaping).
      h.assert_true(s.contains("a &lt; b &amp; c &gt; d"),
        "expected < > & escaped in text body; got: " + s)
      // Round-trip must restore original characters.
      match Xml2Parser.parseDoc(s)
      | let doc2: Xml2Doc =>
        h.assert_eq[String](
          "a < b & c > d \"quoted\" 'apostrophe'",
          doc2.getRootElement()?.getContent())
      | let err: Xml2Error =>
        h.fail("re-parse failed: " + err.string())
      end
    else
      h.fail("text-node entity-char flow failed")
    end

class \nodoc\ iso TestCreateCommentEdgeCases is UnitTest
  """
  `createComment` with empty / single-character / space-only
  content produces nodes that survive serialise + re-parse. (XML
  forbids `--` inside comments; that's the user's responsibility
  rather than something the binding validates, so we don't probe
  it here.)
  """
  fun name(): String => "extensive/create-comment-edge-cases"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("r")?
      let root = doc.getRootElement()?
      let empty_comment = doc.createComment("")?
      let space_comment = doc.createComment(" ")?
      let unicode_comment = doc.createComment("نص عربي")?
      root.appendChild(empty_comment)?
      root.appendChild(space_comment)?
      root.appendChild(unicode_comment)?
      let s = doc.serialize(false)?
      h.assert_true(s.contains("<!---->"),
        "expected empty-comment delimiters; got: " + s)
      h.assert_true(s.contains("<!-- -->"),
        "expected single-space comment; got: " + s)
      h.assert_true(s.contains("نص عربي"),
        "expected unicode comment content preserved; got: " + s)
      // Re-parse must succeed.
      match Xml2Parser.parseDoc(s)
      | let _: Xml2Doc => None
      | let err: Xml2Error =>
        h.fail("re-parse failed: " + err.string())
      end
    else
      h.fail("create-comment edge-case flow failed")
    end

class \nodoc\ iso TestSetPropEmptyValue is UnitTest
  """
  `setProp(name, "")` creates an attribute with an empty value
  that's distinct from "attribute absent": `getProp` returns "" in
  both cases, but `getProps()` lists the explicitly-set one.
  """
  fun name(): String => "extensive/set-prop-empty-value"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("r")?
      let root = doc.getRootElement()?
      root.setProp("present", "")
      // getProp returns "" for both present-empty and absent.
      h.assert_eq[String]("", root.getProp("present"))
      h.assert_eq[String]("", root.getProp("absent"))
      // getProps must list `present` exactly once.
      let props = root.getProps()
      h.assert_eq[USize](1, props.size())
      h.assert_eq[String]("present", props(0)?._1)
      h.assert_eq[String]("", props(0)?._2)
      // Serialised form must include `present=""`.
      let s = doc.serialize(false)?
      h.assert_true(s.contains("present=\"\""),
        "expected empty-value attribute in serialised form; got: " + s)
    else
      h.fail("set-prop-empty flow failed")
    end

class \nodoc\ iso TestGetContentMixedChildren is UnitTest
  """
  `getContent` on an element with mixed text and element children
  returns the concatenated text content of the whole subtree
  (libxml2's `xmlNodeGetContent` walks descendants).
  """
  fun name(): String => "extensive/get-content-mixed-children"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<r>hello <b>bold</b> world</r>")
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        h.assert_eq[String]("hello bold world", root.getContent())
        // getChildren returns only the element children, not text.
        let kids = root.getChildren()
        h.assert_eq[USize](1, kids.size())
        h.assert_eq[String]("b", kids(0)?.name())
        h.assert_eq[String]("bold", kids(0)?.getContent())
      else
        h.fail("traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestAddChildWithContent is UnitTest
  """
  `Xml2Node.addChild(name, content)` creates and appends in one
  step. Verify both the resulting child has the requested name
  AND its content equals what was passed.
  """
  fun name(): String => "extensive/add-child-with-content"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("r")?
      let root = doc.getRootElement()?
      let added_full = root.addChild("with-content", "hello")?
      let added_empty = root.addChild("no-content")?
      h.assert_eq[String]("with-content", added_full.name())
      h.assert_eq[String]("hello", added_full.getContent())
      h.assert_eq[String]("no-content", added_empty.name())
      h.assert_eq[String]("", added_empty.getContent())
      // Both must appear as element children of the root.
      h.assert_eq[USize](2, root.getChildren().size())
    else
      h.fail("addChild flow failed")
    end

class \nodoc\ iso TestCommentsFilteredFromGetChildren is UnitTest
  """
  `getChildren` filters to element nodes only - comments and
  text-only nodes are skipped. XPath's `*` axis agrees: it
  matches elements, not comments.
  """
  fun name(): String => "extensive/comments-filtered-from-getchildren"

  fun apply(h: TestHelper) =>
    let xml =
      "<r><a/><!-- comment --><b/><!-- another --><c/></r>"
    match Xml2Parser.parseDoc(xml)
    | let doc: Xml2Doc =>
      try
        let root = doc.getRootElement()?
        // Three element children; the two comments are filtered.
        h.assert_eq[USize](3, root.getChildren().size())
        h.assert_eq[String]("a", root.getChildren()(0)?.name())
        h.assert_eq[String]("b", root.getChildren()(1)?.name())
        h.assert_eq[String]("c", root.getChildren()(2)?.name())
        // XPath /r/* matches the same three elements.
        match doc.xpathEvalF64("count(/r/*)")
        | let f: F64 => h.assert_eq[F64](3.0, f)
        | let _: Xml2Error => h.fail("count(/r/*) failed")
        end
        // XPath /r/comment() matches the two comments.
        match doc.xpathEvalF64("count(/r/comment())")
        | let f: F64 => h.assert_eq[F64](2.0, f)
        | let _: Xml2Error => h.fail("count(/r/comment()) failed")
        end
      else
        h.fail("traversal failed")
      end
    | let err: Xml2Error =>
      h.fail("parse failed: " + err.string())
    end

class \nodoc\ iso TestSerializeUnsupportedEncoding is UnitTest
  """
  `serialize` with an unknown encoding name must not crash. The
  expected behaviour is libxml2 either rejects (and the partial
  function raises) or falls back. Either is acceptable; the test
  guards against an unrecoverable crash that the "safe from
  crashes" promise forbids.
  """
  fun name(): String => "extensive/serialize-unsupported-encoding"

  fun apply(h: TestHelper) =>
    try
      let doc = Xml2Doc.createWithRoot("root")?
      try
        let s = doc.serialize(false, "this-encoding-does-not-exist")?
        // Successful return is acceptable as long as we get a
        // String of some kind. Trivially true once s is bound.
        h.assert_true(s.size() >= 0)
      end
      // Whether we reached here via success or partial-error, the
      // process did not crash - that's the contract.
      h.assert_true(true)
    else
      h.fail("could not build doc for unsupported-encoding test")
    end

// ---------------------------------------------------------------
// Error-path field assertions
// ---------------------------------------------------------------

class \nodoc\ iso TestXPathErrorFields is UnitTest
  """
  Triggering a malformed XPath expression must produce an
  `Xml2Error` with domain set to `Xml2ErrorDomainXPath`, a
  non-zero error code, and a non-empty message.
  """
  fun name(): String => "extensive/xpath-error-fields"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<r><a/></r>")
    | let doc: Xml2Doc =>
      match doc.xpathEvalNodes("invalid[expression")
      | let _: Array[Xml2Node] =>
        h.fail("malformed XPath should not have succeeded")
      | let err: Xml2Error =>
        h.assert_true(
          err.domain is Xml2ErrorDomainXPath,
          "expected domain=XPath; got " + err.domain.string())
        h.assert_ne[I32](I32(0), err.code)
        h.assert_true(err.message.size() > 0,
          "expected non-empty error message")
      end
    | let err: Xml2Error =>
      h.fail("setup parse failed: " + err.string())
    end

class \nodoc\ iso TestParseFileMissingFile is UnitTest
  """
  `Xml2Parser.parseFile` on a non-existent path must return an
  `Xml2Error` (not crash), and the error's domain should reflect
  an I/O failure - libxml2 reports this in the `IO` domain.
  """
  fun name(): String => "extensive/parse-file-missing-file"

  fun apply(h: TestHelper) =>
    let auth = FileAuth(h.env.root)
    match Xml2Parser.parseFile(
      auth, "/tmp/this-file-really-should-not-exist-xyz-12345.xml")
    | let _: Xml2Doc =>
      h.fail("parseFile on missing file should not have succeeded")
    | let err: Xml2Error =>
      // libxml2 reports missing-file errors in the IO domain.
      h.assert_true(
        err.domain is Xml2ErrorDomainIo,
        "expected domain=Io for missing file; got "
          + err.domain.string())
      h.assert_ne[I32](I32(0), err.code)
    end

class \nodoc\ iso TestParseErrorFieldsAreAccessible is UnitTest
  """
  After a parse error, every `Xml2Error` field is readable
  without raising or crashing. This is a structural-access
  guarantee rather than a value assertion - the str1/str2/str3
  and int1/int2 fields are populated by libxml2 for some error
  classes and left empty for others, so we can't assert specific
  contents portably. The point is the wrapper exposes them.
  """
  fun name(): String => "extensive/parse-error-fields-accessible"

  fun apply(h: TestHelper) =>
    match Xml2Parser.parseDoc("<root><unclosed")
    | let _: Xml2Doc =>
      h.fail("malformed XML should have errored")
    | let err: Xml2Error =>
      // Read every field; assert structural sanity where we can.
      h.assert_true(
        err.domain is Xml2ErrorDomainParser,
        "expected parser-domain error")
      let level_is_real_error =
        (err.level is Xml2ErrorLevelError) or
        (err.level is Xml2ErrorLevelFatal)
      h.assert_true(level_is_real_error,
        "expected level >= Error")
      h.assert_ne[I32](I32(0), err.code)
      h.assert_true(err.message.size() > 0,
        "expected non-empty message")
      // file can be empty for in-memory parsing - just access it.
      let _ = err.file.size()
      // line should be >= 0 (libxml2 may use 0 for unknown).
      h.assert_true(err.line >= I32(0),
        "line should be non-negative; got " + err.line.string())
      // str1/str2/str3 and int1/int2 are accessible; their values
      // are libxml2-error-specific. Just exercise the getters.
      let _ = err.str1.size()
      let _ = err.str2.size()
      let _ = err.str3.size()
      let _ = err.int1
      let _ = err.int2
    end

// ---------------------------------------------------------------
// Property-based: element-name and multi-prop coverage
// ---------------------------------------------------------------

class \nodoc\ iso PropElementNameRoundTrip is Property1[String]
  """
  For any valid XML element name (ASCII letters, length 1-32),
  `createElement(name)` produces a node whose `name()` is the
  input. Verifies that the binding doesn't mangle names en
  route to libxml2 and back.
  """
  fun name(): String =>
    "extensive/element-name-roundtrip/property"

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

  fun gen(): Generator[String] =>
    Generators.ascii_letters(1, 32)

  fun ref property(arg1: String, h: PropertyHelper) =>
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.create()?
      let elem = doc.createElement(arg1)?
      doc.setRootElement(elem)?
      h.assert_eq[String](arg1, doc.getRootElement()?.name())
    } box)

class \nodoc\ iso PropMultiplePropsAllRetrievable
  is Property1[USize]
  """
  For N (name, value) pairs where names are guaranteed unique via
  indexing (`a0`..`aN-1`), every pair is retrievable via
  `getProp(name)` independently and `getProps()` reports exactly
  N entries.
  """
  fun name(): String =>
    "extensive/multiple-props-all-retrievable/property"

  fun params(): PropertyParams =>
    PropertyParams(where num_samples' = 500)

  fun gen(): Generator[USize] =>
    Generators.usize(where min = USize(0), max = USize(100))

  fun ref property(arg1: USize, h: PropertyHelper) =>
    h.assert_no_error({() ? =>
      let doc = Xml2Doc.createWithRoot("root")?
      let root = doc.getRootElement()?
      var i: USize = 0
      while i < arg1 do
        root.setProp("a" + i.string(), "v" + i.string())
        i = i + 1
      end
      // Each name retrievable independently.
      var k: USize = 0
      while k < arg1 do
        h.assert_eq[String](
          "v" + k.string(),
          root.getProp("a" + k.string()))
        k = k + 1
      end
      // Cardinality matches.
      h.assert_eq[USize](arg1, root.getProps().size())
    } box)
