use "pony_test"
use "pony_check"
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
    test(TestXml2ErrorString)
    test(TestXml2ErrorDomainFromI32)
    test(TestXml2ErrorLevelFromI32)
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
    // Serialization tests
    test(TestSerializeRoundTrip)
    test(TestSerializeFormatting)
    test(TestSaveToFile)
    test(TestSerializeEncoding)
    test(TestSerializeModified)
    test(TestSerializeErrors)
    // Document creation tests (Phase 1)
    test(TestCreateEmptyDocument)
    test(TestCreateDocumentWithRoot)
    test(TestCreateAndAppendChildren)
    test(TestSetContent)
    test(TestCreateAndXPath)
    test(TestCreateAndSaveFile)
    // Document creation tests (Phase 2)
    test(TestCreateWithRootConvenience)
    test(TestMixedContent)
    test(TestAddChildConvenience)
    test(TestCreateComment)
    test(TestComplexDocumentCreation)
    // Regression tests for memory-management fixes
    test(TestXPathResultPostFreeAccess)
    test(TestNodeDumpRepeatedCalls)
    test(TestRepeatedCstringAccessors)
    // Namespace accessors (#33)
    test(TestNamespaceUriAndPrefix)
    test(TestQname)
    test(TestGetPropNs)
    // Parser options (#12)
    test(TestParserOptionsDefaults)
    test(TestParserOptionsFlagComposition)
    test(TestParseDocNoBlanks)
    test(TestParseDocErrorRecovery)
    test(TestParseDocEntitiesNotSubstitutedByDefault)
    // Extensive API coverage
    test(TestSetRootElementReplacesOldRoot)
    test(TestCreateDocWithCustomVersion)
    test(TestSetPropOverwritesExisting)
    test(TestEmptyAttributeValue)
    test(TestUnicodeContentRoundTrip)
    test(TestUnicodeAttributeValues)
    test(TestSerializeUTF16Encoding)
    test(TestParserOptionsCombined)
    test(TestXPathStringFunctionsExtensive)
    test(TestXPathPositionAndLast)
    test(TestXPathNameFunctions)
    test(TestManyAttributesRoundTrip)
    test(Property1UnitTest[(String, String)](
      recover iso PropSetGetPropRoundTrip end))
    test(Property1UnitTest[USize](
      recover iso PropAppendChildPreservesCount end))
    // Extensive API coverage (batch 2)
    test(TestXPathAxes)
    test(TestXPathNumberFunctions)
    test(TestXPathBooleanFunctions)
    test(TestXPathAttributePredicates)
    test(TestCDATAContentPreserved)
    test(TestSelfClosingEquivalence)
    test(TestCommentRoundTrip)
    test(TestSetContentReplacesChildren)
    test(TestSetUnsetGetPropEmpty)
    test(TestLongNamesAndValues)
    test(TestGetLangNestedScopes)
    test(TestSaveToFileWithFormatAndEncoding)
    test(Property1UnitTest[Array[String]](
      recover iso PropStructuralRoundTripStable end))
    test(Property1UnitTest[USize](
      recover iso PropGetPropsCardinality end))
    test(Property1UnitTest[(String, String)](
      recover iso PropSetUnsetIsEmpty end))
    // Crash-resistance fuzz tests (PonyCheck Property1)
    test(Property1UnitTest[String](recover iso FuzzParseDoc end))
    test(Property1UnitTest[(String, String)](
      recover iso FuzzCreateAndCreateElement end))
    test(Property1UnitTest[(String, String)](
      recover iso FuzzSetGetProp end))
    test(Property1UnitTest[String](recover iso FuzzXPathExpression end))
    test(Property1UnitTest[Array[String]](
      recover iso FuzzAppendChildChain end))

