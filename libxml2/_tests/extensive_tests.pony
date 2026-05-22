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
