use "../../libxml2"
use "pony_test"
use "files"

class \nodoc\ iso TestParseError is UnitTest
  """
  Parse a deliberately malformed document and verify the returned
  `Xml2Error` carries useful structured information. Each assertion
  is loose enough to survive libxml2 version drift on the exact
  diagnostic, but tight enough to fail if a regression replaces the
  rich error with a placeholder.
  """
  fun name(): String => "xml2doc/parse-error"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1"hello</child>
        <child id="c2">world</child>
      </root>
      """
    match Xml2Parser.parseDoc(xml)
    | let _: Xml2Doc =>
      h.fail("malformed XML should not have parsed successfully")
    | let err: Xml2Error =>
      // Domain should be the parser - this is a parse error.
      h.assert_true(
        err.domain is Xml2ErrorDomainParser,
        "expected domain=Parser, got domain=" + err.domain.string())
      // Level should signal an actual problem (Error or Fatal).
      let level_is_real_error =
        (err.level is Xml2ErrorLevelError) or
        (err.level is Xml2ErrorLevelFatal)
      h.assert_true(
        level_is_real_error,
        "expected level Error or Fatal, got " + err.level.string())
      // libxml2 always assigns a non-zero parser error code.
      h.assert_ne[I32](I32(0), err.code)
      // Message should be non-empty.
      h.assert_true(
        err.message.size() > 0,
        "expected non-empty error message")
      // Line should point inside the input (lines 1-4).
      h.assert_true(
        (err.line >= I32(1)) and (err.line <= I32(5)),
        "line out of range: " + err.line.string())
    end

class \nodoc\ iso TestXml2ErrorString is UnitTest
  """
  `Xml2Error.string()` should produce a non-empty, human-readable
  representation containing the level and domain names.
  """
  fun name(): String => "xml2error/string-rendering"

  fun apply(h: TestHelper) =>
    let xml = "<not-closed>"
    match Xml2Parser.parseDoc(xml)
    | let _: Xml2Doc => h.fail("malformed XML parsed unexpectedly")
    | let err: Xml2Error =>
      let s = err.string()
      h.assert_true(
        s.contains("Parser"),
        "string() output missing domain name: " + s)
      h.assert_true(
        (s.contains("Error") or s.contains("Fatal")),
        "string() output missing level name: " + s)
      h.assert_true(
        s.size() > 0,
        "string() output should be non-empty")
    end

class \nodoc\ iso TestXml2ErrorDomainFromI32 is UnitTest
  """
  Verify the libxml2 domain-code → `Xml2ErrorDomain` mapping covers
  the documented enum and falls through to Unknown for out-of-range
  values.
  """
  fun name(): String => "xml2error/domain-mapping"

  fun apply(h: TestHelper) =>
    h.assert_true(Xml2ErrorDomainFromI32(0) is Xml2ErrorDomainNone)
    h.assert_true(Xml2ErrorDomainFromI32(1) is Xml2ErrorDomainParser)
    h.assert_true(Xml2ErrorDomainFromI32(8) is Xml2ErrorDomainIo)
    h.assert_true(Xml2ErrorDomainFromI32(12) is Xml2ErrorDomainXPath)
    h.assert_true(Xml2ErrorDomainFromI32(30) is Xml2ErrorDomainUri)
    // Out-of-range falls through.
    h.assert_true(Xml2ErrorDomainFromI32(99) is Xml2ErrorDomainUnknown)
    h.assert_true(Xml2ErrorDomainFromI32(-1) is Xml2ErrorDomainUnknown)

class \nodoc\ iso TestXml2ErrorLevelFromI32 is UnitTest
  """
  Verify the libxml2 level-code → `Xml2ErrorLevel` mapping.
  """
  fun name(): String => "xml2error/level-mapping"

  fun apply(h: TestHelper) =>
    h.assert_true(Xml2ErrorLevelFromI32(0) is Xml2ErrorLevelNone)
    h.assert_true(Xml2ErrorLevelFromI32(1) is Xml2ErrorLevelWarning)
    h.assert_true(Xml2ErrorLevelFromI32(2) is Xml2ErrorLevelError)
    h.assert_true(Xml2ErrorLevelFromI32(3) is Xml2ErrorLevelFatal)
    h.assert_true(Xml2ErrorLevelFromI32(99) is Xml2ErrorLevelUnknown)
