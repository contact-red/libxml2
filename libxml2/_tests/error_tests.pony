use "../../libxml2"
use "pony_test"
use "files"

class \nodoc\ iso TestParseError is UnitTest
  fun name(): String => "xml2doc/parse-error"

  fun apply(h: TestHelper) =>
    let xml =
      """
      <root>
        <child id="c1"hello</child>
        <child id="c2">world</child>
      </root>
      """
    try
      let doc = Xml2Doc.parseDoc(xml)?
      h.fail("It did not throw an error on bad parse")
    else
      let err: Xml2Error = Xml2Error
      /*
       * Unfortunately, these tests are non-deterministic as the error that is
       * grabbed could be one of many.  Roll on later versions with callbacks!
       */
//      h.assert_eq[String](err.domain, "PARSER")
//      h.assert_eq[I32](err.code, 5)
//      h.assert_eq[String](err.level, "Fatal")
//      h.assert_eq[I32](err.line, 3)
//      h.assert_eq[String](err.message, "Extra content at the end of the document\n")
    end
