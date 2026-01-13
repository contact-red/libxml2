use "pony_test"
use "_tests"

actor \nodoc\ Main is TestList
  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    rto.ponyminthreads = U32(2)

  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    None

  fun tag tests(test: PonyTest) =>
    test(TestXPath)
    test(TestParseDocAndRoot)
    test(TestDocXPathSimpleNodeset)
    test(TestDocXPathSimpleNodesetConvenience)
    test(TestNodeXPathRelative)
    test(TestNodeXPathRelativeConvenience)
    test(TestNodeAttributesAndContent)
    test(TestXPathScalarResults)
    test(TestXPathScalarResultsConvenience)
    test(TestParseError)
    test(TestGetProps)
    test(TestModifyProps)
    // Additional coverage tests
    test(TestNodeUtilityMethods)
    test(TestGetLang)
    test(TestEmptyNodeset)
    test(TestNonExistentAttribute)
    test(TestNoElementChildren)
    test(TestNodeDumpFormatting)
    test(TestXPathConvenienceWithNamespaces)
    test(TestNodeXPathConvenienceWithNamespaces)
    test(TestXPathNoneResult)
    test(TestMultipleAttributes)
    test(TestDeepNesting)
    test(TestXPathNumericOperations)
    test(TestXPathStringFunctions)
    test(TestEmptyDocument)
    test(TestSpecialCharacters)

