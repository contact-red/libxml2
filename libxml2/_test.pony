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
    test(TestNodeXPathRelative)
    test(TestNodeAttributesAndContent)
    test(TestXPathScalarResults)

