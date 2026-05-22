use "lib:xml2"

type XmlFreeFunc is @{(Pointer[None] tag): None}

primitive Xml2Free
  """
  Apply libxml2's configured free function to a heap-allocated
  `xmlChar*` / `void*` pointer. Used internally by the auto-generated
  `LibXML2` wrappers below to free pointers returned by libxml2
  functions like `xmlGetProp` / `xmlNodeGetContent` after the bytes
  have been cloned into Pony memory. Retrieves the allocator through
  `xmlMemGet` so application-installed allocators via `xmlMemSetup`
  are honoured. A null pointer is a no-op.
  """
  fun tag apply(p: Pointer[U8]) =>
    if p.is_null() then return end
    var free_func: XmlFreeFunc = @{(q: Pointer[None] tag) => None}
    var malloc_func: Pointer[None] = Pointer[None]
    var realloc_func: Pointer[None] = Pointer[None]
    var strdup_func: Pointer[None] = Pointer[None]
    if @xmlMemGet(
      addressof free_func, addressof malloc_func,
      addressof realloc_func, addressof strdup_func) == 0
    then
      free_func(p)
    end
    // If xmlMemGet fails (extremely rare; allocator-lookup failure),
    // free_func remains the no-op lambda. The leak in that
    // pathological case is acceptable; the alternative would be a
    // call through an uninitialised function pointer.

primitive LibXML2


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:134
  Original Name: UTF8ToHtml/usr/include/libxml2/libxml/HTMLparser.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun utf8ToHtml(out: String, outlen: Pointer[I32] tag, xmlin: String, inlen: Pointer[I32] tag): I32 =>
    @UTF8ToHtml(out.cstring(), outlen, xmlin.cstring(), inlen)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:231
  Original Name: UTF8Toisolat1/usr/include/libxml2/libxml/encoding.h:231

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun utf8Toisolat1(out: String, outlen: Pointer[I32] tag, xmlin: String, inlen: Pointer[I32] tag): I32 =>
    @UTF8Toisolat1(out.cstring(), outlen, xmlin.cstring(), inlen)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:171
  Original Name: docbDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:171

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun docbDefaultSAXHandlerInit(): None =>
    @docbDefaultSAXHandlerInit()


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:269
  Original Name: htmlAttrAllowed/usr/include/libxml2/libxml/HTMLparser.h:269

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlAttrAllowed(parg0: NullablePointer[HtmlElemDesc] tag, parg1: String, parg2: I32): I32 =>
    @htmlAttrAllowed(parg0, parg1.cstring(), parg2)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:97
  Original Name: htmlAutoCloseTag/usr/include/libxml2/libxml/HTMLparser.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun htmlAutoCloseTag(doc: NullablePointer[XmlDoc] tag, name: String, elem: NullablePointer[XmlNode] tag): I32 =>
    @htmlAutoCloseTag(doc, name.cstring(), elem)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:578
  Original Name: htmlCreateFileParserCtxt/usr/include/libxml2/libxml/parserInternals.h:578

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlCreateFileParserCtxt(filename: String, encoding: String): NullablePointer[XmlParserCtxt] =>
    @htmlCreateFileParserCtxt(filename.cstring(), encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:112
  Original Name: htmlCreateMemoryParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:112

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCreateMemoryParserCtxt(buffer: String, size: I32): NullablePointer[XmlParserCtxt] =>
    @htmlCreateMemoryParserCtxt(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:153
  Original Name: htmlCreatePushParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:153

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f42]
*/
  fun htmlCreatePushParserCtxt(sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, chunk: String, size: I32, filename: String, enc: I32): NullablePointer[XmlParserCtxt] =>
    @htmlCreatePushParserCtxt(sax, userdata, chunk.cstring(), size, filename.cstring(), enc)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:224
  Original Name: htmlCtxtReadDoc/usr/include/libxml2/libxml/HTMLparser.h:224

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtReadDoc(ctxt: NullablePointer[XmlParserCtxt] tag, cur: String, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlCtxtReadDoc(ctxt, cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:242
  Original Name: htmlCtxtReadFd/usr/include/libxml2/libxml/HTMLparser.h:242

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtReadFd(ctxt: NullablePointer[XmlParserCtxt] tag, fd: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlCtxtReadFd(ctxt, fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:230
  Original Name: htmlCtxtReadFile/usr/include/libxml2/libxml/HTMLparser.h:230

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtReadFile(ctxt: NullablePointer[XmlParserCtxt] tag, filename: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlCtxtReadFile(ctxt, filename.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:248
  Original Name: htmlCtxtReadIO/usr/include/libxml2/libxml/HTMLparser.h:248

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtReadIO(ctxt: NullablePointer[XmlParserCtxt] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlCtxtReadIO(ctxt, ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:235
  Original Name: htmlCtxtReadMemory/usr/include/libxml2/libxml/HTMLparser.h:235

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtReadMemory(ctxt: NullablePointer[XmlParserCtxt] tag, buffer: String, size: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlCtxtReadMemory(ctxt, buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:192
  Original Name: htmlCtxtReset/usr/include/libxml2/libxml/HTMLparser.h:192

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun htmlCtxtReset(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @htmlCtxtReset(ctxt)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:194
  Original Name: htmlCtxtUseOptions/usr/include/libxml2/libxml/HTMLparser.h:194

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun htmlCtxtUseOptions(ctxt: NullablePointer[XmlParserCtxt] tag, options: I32): I32 =>
    @htmlCtxtUseOptions(ctxt, options)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:165
  Original Name: htmlDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun htmlDefaultSAXHandlerInit(): None =>
    @htmlDefaultSAXHandlerInit()


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:124
  Original Name: htmlDocContentDumpFormatOutput/usr/include/libxml2/libxml/HTMLtree.h:124

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlDocContentDumpFormatOutput(buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: String, format: I32): None =>
    @htmlDocContentDumpFormatOutput(buf, cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:120
  Original Name: htmlDocContentDumpOutput/usr/include/libxml2/libxml/HTMLtree.h:120

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlDocContentDumpOutput(buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: String): None =>
    @htmlDocContentDumpOutput(buf, cur, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:84
  Original Name: htmlDocDump/usr/include/libxml2/libxml/HTMLtree.h:84

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun htmlDocDump(f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag): I32 =>
    @htmlDocDump(f, cur)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:270
  Original Name: htmlElementAllowedHere/usr/include/libxml2/libxml/HTMLparser.h:270

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlElementAllowedHere(parg0: NullablePointer[HtmlElemDesc] tag, parg1: String): I32 =>
    @htmlElementAllowedHere(parg0, parg1.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:271
  Original Name: htmlElementStatusHere/usr/include/libxml2/libxml/HTMLparser.h:271

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[Struct size=512,fid: f70]
*/
  fun htmlElementStatusHere(parg0: NullablePointer[HtmlElemDesc] tag, parg1: NullablePointer[HtmlElemDesc] tag): I32 =>
    @htmlElementStatusHere(parg0, parg1)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:139
  Original Name: htmlEncodeEntities/usr/include/libxml2/libxml/HTMLparser.h:139

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun htmlEncodeEntities(out: String, outlen: Pointer[I32] tag, xmlin: String, inlen: Pointer[I32] tag, quoteChar: I32): I32 =>
    @htmlEncodeEntities(out.cstring(), outlen, xmlin.cstring(), inlen, quoteChar)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:89
  Original Name: htmlEntityLookup/usr/include/libxml2/libxml/HTMLparser.h:89

  Return Value: [PointerType size=64]->[Struct size=192,fid: f70]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlEntityLookup(name: String): NullablePointer[HtmlEntityDesc] =>
    @htmlEntityLookup(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:91
  Original Name: htmlEntityValueLookup/usr/include/libxml2/libxml/HTMLparser.h:91

  Return Value: [PointerType size=64]->[Struct size=192,fid: f70]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun htmlEntityValueLookup(value: U32): NullablePointer[HtmlEntityDesc] =>
    @htmlEntityValueLookup(value)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:167
  Original Name: htmlFreeParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun htmlFreeParserCtxt(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @htmlFreeParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:69
  Original Name: htmlGetMetaEncoding/usr/include/libxml2/libxml/HTMLtree.h:69

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun htmlGetMetaEncoding(doc: NullablePointer[XmlDoc] tag): String val =>
    var pcstring: Pointer[U8] =  @htmlGetMetaEncoding(doc)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:146
  Original Name: htmlHandleOmittedElem/usr/include/libxml2/libxml/HTMLparser.h:146

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun htmlHandleOmittedElem(xmlval: I32): I32 =>
    @htmlHandleOmittedElem(xmlval)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:577
  Original Name: htmlInitAutoClose/usr/include/libxml2/libxml/parserInternals.h:577

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun htmlInitAutoClose(): None =>
    @htmlInitAutoClose()


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:94
  Original Name: htmlIsAutoClosed/usr/include/libxml2/libxml/HTMLparser.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun htmlIsAutoClosed(doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @htmlIsAutoClosed(doc, elem)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:137
  Original Name: htmlIsBooleanAttr/usr/include/libxml2/libxml/HTMLtree.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlIsBooleanAttr(name: String): I32 =>
    @htmlIsBooleanAttr(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:144
  Original Name: htmlIsScriptAttribute/usr/include/libxml2/libxml/HTMLparser.h:144

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlIsScriptAttribute(name: String): I32 =>
    @htmlIsScriptAttribute(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:63
  Original Name: htmlNewDoc/usr/include/libxml2/libxml/HTMLtree.h:63

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlNewDoc(uRI: String, externalID: String): NullablePointer[XmlDoc] =>
    @htmlNewDoc(uRI.cstring(), externalID.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:66
  Original Name: htmlNewDocNoDtD/usr/include/libxml2/libxml/HTMLtree.h:66

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlNewDocNoDtD(uRI: String, externalID: String): NullablePointer[XmlDoc] =>
    @htmlNewDocNoDtD(uRI.cstring(), externalID.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:109
  Original Name: htmlNewParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:109

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
*/
  fun htmlNewParserCtxt(): NullablePointer[XmlParserCtxt] =>
    @htmlNewParserCtxt()


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:90
  Original Name: htmlNodeDump/usr/include/libxml2/libxml/HTMLtree.h:90

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun htmlNodeDump(buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag): I32 =>
    @htmlNodeDump(buf, doc, cur)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:94
  Original Name: htmlNodeDumpFile/usr/include/libxml2/libxml/HTMLtree.h:94

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun htmlNodeDumpFile(out: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag): None =>
    @htmlNodeDumpFile(out, doc, cur)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:98
  Original Name: htmlNodeDumpFileFormat/usr/include/libxml2/libxml/HTMLtree.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlNodeDumpFileFormat(out: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: String, format: I32): I32 =>
    @htmlNodeDumpFileFormat(out, doc, cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:114
  Original Name: htmlNodeDumpFormatOutput/usr/include/libxml2/libxml/HTMLtree.h:114

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlNodeDumpFormatOutput(buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: String, format: I32): None =>
    @htmlNodeDumpFormatOutput(buf, doc, cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:129
  Original Name: htmlNodeDumpOutput/usr/include/libxml2/libxml/HTMLtree.h:129

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlNodeDumpOutput(buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: String): None =>
    @htmlNodeDumpOutput(buf, doc, cur, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:272
  Original Name: htmlNodeStatus/usr/include/libxml2/libxml/HTMLparser.h:272

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun htmlNodeStatus(parg0: NullablePointer[XmlNode] tag, parg1: I32): I32 =>
    @htmlNodeStatus(parg0, parg1)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:104
  Original Name: htmlParseCharRef/usr/include/libxml2/libxml/HTMLparser.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun htmlParseCharRef(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @htmlParseCharRef(ctxt)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:160
  Original Name: htmlParseChunk/usr/include/libxml2/libxml/HTMLparser.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun htmlParseChunk(ctxt: NullablePointer[XmlParserCtxt] tag, chunk: String, size: I32, terminate: I32): I32 =>
    @htmlParseChunk(ctxt, chunk.cstring(), size, terminate)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:123
  Original Name: htmlParseDoc/usr/include/libxml2/libxml/HTMLparser.h:123

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlParseDoc(cur: String, encoding: String): NullablePointer[XmlDoc] =>
    @htmlParseDoc(cur.cstring(), encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:116
  Original Name: htmlParseDocument/usr/include/libxml2/libxml/HTMLparser.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun htmlParseDocument(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @htmlParseDocument(ctxt)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:106
  Original Name: htmlParseElement/usr/include/libxml2/libxml/HTMLparser.h:106

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun htmlParseElement(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @htmlParseElement(ctxt)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:131
  Original Name: htmlParseFile/usr/include/libxml2/libxml/HTMLparser.h:131

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlParseFile(filename: String, encoding: String): NullablePointer[XmlDoc] =>
    @htmlParseFile(filename.cstring(), encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:197
  Original Name: htmlReadDoc/usr/include/libxml2/libxml/HTMLparser.h:197

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlReadDoc(cur: String, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlReadDoc(cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:212
  Original Name: htmlReadFd/usr/include/libxml2/libxml/HTMLparser.h:212

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlReadFd(fd: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlReadFd(fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:202
  Original Name: htmlReadFile/usr/include/libxml2/libxml/HTMLparser.h:202

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlReadFile(uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlReadFile(uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:217
  Original Name: htmlReadIO/usr/include/libxml2/libxml/HTMLparser.h:217

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlReadIO(ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlReadIO(ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:206
  Original Name: htmlReadMemory/usr/include/libxml2/libxml/HTMLparser.h:206

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlReadMemory(buffer: String, size: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @htmlReadMemory(buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:118
  Original Name: htmlSAXParseDoc/usr/include/libxml2/libxml/HTMLparser.h:118

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun htmlSAXParseDoc(cur: String, encoding: String, sax: NullablePointer[XmlSAXHandler] tag, userData: Pointer[None] tag): NullablePointer[XmlDoc] =>
    @htmlSAXParseDoc(cur.cstring(), encoding.cstring(), sax, userData)


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:126
  Original Name: htmlSAXParseFile/usr/include/libxml2/libxml/HTMLparser.h:126

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun htmlSAXParseFile(filename: String, encoding: String, sax: NullablePointer[XmlSAXHandler] tag, userData: Pointer[None] tag): NullablePointer[XmlDoc] =>
    @htmlSAXParseFile(filename.cstring(), encoding.cstring(), sax, userData)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:87
  Original Name: htmlSaveFile/usr/include/libxml2/libxml/HTMLtree.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun htmlSaveFile(filename: String, cur: NullablePointer[XmlDoc] tag): I32 =>
    @htmlSaveFile(filename.cstring(), cur)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:104
  Original Name: htmlSaveFileEnc/usr/include/libxml2/libxml/HTMLtree.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun htmlSaveFileEnc(filename: String, cur: NullablePointer[XmlDoc] tag, encoding: String): I32 =>
    @htmlSaveFileEnc(filename.cstring(), cur, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:108
  Original Name: htmlSaveFileFormat/usr/include/libxml2/libxml/HTMLtree.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun htmlSaveFileFormat(filename: String, cur: NullablePointer[XmlDoc] tag, encoding: String, format: I32): I32 =>
    @htmlSaveFileFormat(filename.cstring(), cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:71
  Original Name: htmlSetMetaEncoding/usr/include/libxml2/libxml/HTMLtree.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlSetMetaEncoding(doc: NullablePointer[XmlDoc] tag, encoding: String): I32 =>
    @htmlSetMetaEncoding(doc, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:87
  Original Name: htmlTagLookup/usr/include/libxml2/libxml/HTMLparser.h:87

  Return Value: [PointerType size=64]->[Struct size=512,fid: f70]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun htmlTagLookup(xmltag: String): NullablePointer[HtmlElemDesc] =>
    @htmlTagLookup(xmltag.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:866
  Original Name: initGenericErrorDefaultFunc/usr/include/libxml2/libxml/xmlerror.h:866

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun initGenericErrorDefaultFunc(handler: NullablePointer[Pointer[None]] tag): None =>
    @initGenericErrorDefaultFunc(handler)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:545
  Original Name: inputPop/usr/include/libxml2/libxml/parserInternals.h:545

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun inputPop(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlParserInput] =>
    @inputPop(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:543
  Original Name: inputPush/usr/include/libxml2/libxml/parserInternals.h:543

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun inputPush(ctxt: NullablePointer[XmlParserCtxt] tag, value: NullablePointer[XmlParserInput] tag): I32 =>
    @inputPush(ctxt, value)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:237
  Original Name: isolat1ToUTF8/usr/include/libxml2/libxml/encoding.h:237

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun isolat1ToUTF8(out: String, outlen: Pointer[I32] tag, xmlin: String, inlen: Pointer[I32] tag): I32 =>
    @isolat1ToUTF8(out.cstring(), outlen, xmlin.cstring(), inlen)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:546
  Original Name: namePop/usr/include/libxml2/libxml/parserInternals.h:546

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun namePop(ctxt: NullablePointer[XmlParserCtxt] tag): String val =>
    var pcstring: Pointer[U8] =  @namePop(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:547
  Original Name: namePush/usr/include/libxml2/libxml/parserInternals.h:547

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun namePush(ctxt: NullablePointer[XmlParserCtxt] tag, value: String): I32 =>
    @namePush(ctxt, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:542
  Original Name: nodePop/usr/include/libxml2/libxml/parserInternals.h:542

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun nodePop(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlNode] =>
    @nodePop(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:540
  Original Name: nodePush/usr/include/libxml2/libxml/parserInternals.h:540

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun nodePush(ctxt: NullablePointer[XmlParserCtxt] tag, value: NullablePointer[XmlNode] tag): I32 =>
    @nodePush(ctxt, value)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:482
  Original Name: valuePop/usr/include/libxml2/libxml/xpathInternals.h:482

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun valuePop(ctxt: NullablePointer[XmlXPathParserContext] tag): NullablePointer[XmlXPathObject] =>
    @valuePop(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:484
  Original Name: valuePush/usr/include/libxml2/libxml/xpathInternals.h:484

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun valuePush(ctxt: NullablePointer[XmlXPathParserContext] tag, value: NullablePointer[XmlXPathObject] tag): I32 =>
    @valuePush(ctxt, value)


/*
  Source: /usr/include/libxml2/libxml/xlink.h:164
  Original Name: xlinkGetDefaultDetect/usr/include/libxml2/libxml/xlink.h:164

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
*/
  fun xlinkGetDefaultDetect(): Pointer[None] =>
    @xlinkGetDefaultDetect()


/*
  Source: /usr/include/libxml2/libxml/xlink.h:172
  Original Name: xlinkGetDefaultHandler/usr/include/libxml2/libxml/xlink.h:172

  Return Value: [PointerType size=64]->[Struct size=192,fid: f62]

  Arguments:
*/
  fun xlinkGetDefaultHandler(): NullablePointer[XlinkHandler] =>
    @xlinkGetDefaultHandler()


/*
  Source: /usr/include/libxml2/libxml/xlink.h:180
  Original Name: xlinkIsLink/usr/include/libxml2/libxml/xlink.h:180

  Return Value: [Enumeration size=32,fid: f62]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xlinkIsLink(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag): I32 =>
    @xlinkIsLink(doc, node)


/*
  Source: /usr/include/libxml2/libxml/xlink.h:166
  Original Name: xlinkSetDefaultDetect/usr/include/libxml2/libxml/xlink.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xlinkSetDefaultDetect(func: Pointer[None] tag): None =>
    @xlinkSetDefaultDetect(func)


/*
  Source: /usr/include/libxml2/libxml/xlink.h:174
  Original Name: xlinkSetDefaultHandler/usr/include/libxml2/libxml/xlink.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f62]
*/
  fun xlinkSetDefaultHandler(handler: NullablePointer[XlinkHandler] tag): None =>
    @xlinkSetDefaultHandler(handler)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:78
  Original Name: xmlACatalogAdd/usr/include/libxml2/libxml/catalog.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogAdd(catal: NullablePointer[XmlCatalog] tag, xmltype: String, orig: String, replace: String): I32 =>
    @xmlACatalogAdd(catal, xmltype.cstring(), orig.cstring(), replace.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:100
  Original Name: xmlACatalogDump/usr/include/libxml2/libxml/catalog.h:100

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
  fun xmlACatalogDump(catal: NullablePointer[XmlCatalog] tag, out: NullablePointer[IOFILE] tag): None =>
    @xmlACatalogDump(catal, out)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:83
  Original Name: xmlACatalogRemove/usr/include/libxml2/libxml/catalog.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogRemove(catal: NullablePointer[XmlCatalog] tag, value: String): I32 =>
    @xmlACatalogRemove(catal, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:86
  Original Name: xmlACatalogResolve/usr/include/libxml2/libxml/catalog.h:86

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogResolve(catal: NullablePointer[XmlCatalog] tag, pubID: String, sysID: String): String =>
    var pcstring: Pointer[U8] =  @xmlACatalogResolve(catal, pubID.cstring(), sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:93
  Original Name: xmlACatalogResolvePublic/usr/include/libxml2/libxml/catalog.h:93

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogResolvePublic(catal: NullablePointer[XmlCatalog] tag, pubID: String): String =>
    var pcstring: Pointer[U8] =  @xmlACatalogResolvePublic(catal, pubID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:90
  Original Name: xmlACatalogResolveSystem/usr/include/libxml2/libxml/catalog.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogResolveSystem(catal: NullablePointer[XmlCatalog] tag, sysID: String): String =>
    var pcstring: Pointer[U8] =  @xmlACatalogResolveSystem(catal, sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:96
  Original Name: xmlACatalogResolveURI/usr/include/libxml2/libxml/catalog.h:96

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlACatalogResolveURI(catal: NullablePointer[XmlCatalog] tag, uRI: String): String =>
    var pcstring: Pointer[U8] =  @xmlACatalogResolveURI(catal, uRI.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/valid.h:242
  Original Name: xmlAddAttributeDecl/usr/include/libxml2/libxml/valid.h:242

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
    [Enumeration size=32,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlAddAttributeDecl(ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, elem: String, name: String, ns: String, xmltype: I32, def: I32, defaultValue: String, tree: NullablePointer[XmlEnumeration] tag): NullablePointer[XmlAttribute] =>
    @xmlAddAttributeDecl(ctxt, dtd, elem.cstring(), name.cstring(), ns.cstring(), xmltype, def, defaultValue.cstring(), tree)


/*
  Source: /usr/include/libxml2/libxml/tree.h:954
  Original Name: xmlAddChild/usr/include/libxml2/libxml/tree.h:954

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlAddChild(parent: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlAddChild(parent, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:957
  Original Name: xmlAddChildList/usr/include/libxml2/libxml/tree.h:957

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlAddChildList(parent: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlAddChildList(parent, cur)


/*
  Source: /usr/include/libxml2/libxml/entities.h:90
  Original Name: xmlAddDocEntity/usr/include/libxml2/libxml/entities.h:90

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlAddDocEntity(doc: NullablePointer[XmlDoc] tag, name: String, xmltype: I32, externalID: String, systemID: String, content: String): NullablePointer[XmlEntity] =>
    @xmlAddDocEntity(doc, name.cstring(), xmltype, externalID.cstring(), systemID.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/entities.h:97
  Original Name: xmlAddDtdEntity/usr/include/libxml2/libxml/entities.h:97

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlAddDtdEntity(doc: NullablePointer[XmlDoc] tag, name: String, xmltype: I32, externalID: String, systemID: String, content: String): NullablePointer[XmlEntity] =>
    @xmlAddDtdEntity(doc, name.cstring(), xmltype, externalID.cstring(), systemID.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:210
  Original Name: xmlAddElementDecl/usr/include/libxml2/libxml/valid.h:210

  Return Value: [PointerType size=64]->[Struct size=896,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlAddElementDecl(ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, name: String, xmltype: I32, content: NullablePointer[XmlElementContent] tag): NullablePointer[XmlElement] =>
    @xmlAddElementDecl(ctxt, dtd, name.cstring(), xmltype, content)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:190
  Original Name: xmlAddEncodingAlias/usr/include/libxml2/libxml/encoding.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlAddEncodingAlias(name: String, alias: String): I32 =>
    @xmlAddEncodingAlias(name.cstring(), alias.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:268
  Original Name: xmlAddID/usr/include/libxml2/libxml/valid.h:268

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlAddID(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, value: String, attr: NullablePointer[XmlAttr] tag): NullablePointer[XmlID] =>
    @xmlAddID(ctxt, doc, value.cstring(), attr)


/*
  Source: /usr/include/libxml2/libxml/tree.h:974
  Original Name: xmlAddNextSibling/usr/include/libxml2/libxml/tree.h:974

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlAddNextSibling(cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlAddNextSibling(cur, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:154
  Original Name: xmlAddNotationDecl/usr/include/libxml2/libxml/valid.h:154

  Return Value: [PointerType size=64]->[Struct size=192,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlAddNotationDecl(ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, name: String, publicID: String, systemID: String): NullablePointer[XmlNotation] =>
    @xmlAddNotationDecl(ctxt, dtd, name.cstring(), publicID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:967
  Original Name: xmlAddPrevSibling/usr/include/libxml2/libxml/tree.h:967

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlAddPrevSibling(cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlAddPrevSibling(cur, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:287
  Original Name: xmlAddRef/usr/include/libxml2/libxml/valid.h:287

  Return Value: [PointerType size=64]->[Struct size=320,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlAddRef(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, value: String, attr: NullablePointer[XmlAttr] tag): NullablePointer[XmlRef] =>
    @xmlAddRef(ctxt, doc, value.cstring(), attr)


/*
  Source: /usr/include/libxml2/libxml/tree.h:971
  Original Name: xmlAddSibling/usr/include/libxml2/libxml/tree.h:971

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlAddSibling(cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlAddSibling(cur, elem)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:225
  Original Name: xmlAllocOutputBuffer/usr/include/libxml2/libxml/xmlIO.h:225

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlAllocOutputBuffer(encoder: NullablePointer[XmlCharEncodingHandler] tag): NullablePointer[XmlOutputBuffer] =>
    @xmlAllocOutputBuffer(encoder)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:167
  Original Name: xmlAllocParserInputBuffer/usr/include/libxml2/libxml/xmlIO.h:167

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
  fun xmlAllocParserInputBuffer(enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlAllocParserInputBuffer(enc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1147
  Original Name: xmlAttrSerializeTxtContent/usr/include/libxml2/libxml/tree.h:1147

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlAttrSerializeTxtContent(buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag, string: String): None =>
    @xmlAttrSerializeTxtContent(buf, doc, attr, string.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:135
  Original Name: xmlAutomataCompile/usr/include/libxml2/libxml/xmlautomata.h:135

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataCompile(am: NullablePointer[XmlAutomata] tag): NullablePointer[XmlRegexp] =>
    @xmlAutomataCompile(am)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:49
  Original Name: xmlAutomataGetInitState/usr/include/libxml2/libxml/xmlautomata.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataGetInitState(am: NullablePointer[XmlAutomata] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataGetInitState(am)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:137
  Original Name: xmlAutomataIsDeterminist/usr/include/libxml2/libxml/xmlautomata.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataIsDeterminist(am: NullablePointer[XmlAutomata] tag): I32 =>
    @xmlAutomataIsDeterminist(am)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:111
  Original Name: xmlAutomataNewAllTrans/usr/include/libxml2/libxml/xmlautomata.h:111

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [FundamentalType(int) size=32]
*/
  fun xmlAutomataNewAllTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, lax: I32): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewAllTrans(am, from, to, lax)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:77
  Original Name: xmlAutomataNewCountTrans/usr/include/libxml2/libxml/xmlautomata.h:77

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewCountTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, min: I32, max: I32, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewCountTrans(am, from, to, token.cstring(), min, max, data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:85
  Original Name: xmlAutomataNewCountTrans2/usr/include/libxml2/libxml/xmlautomata.h:85

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewCountTrans2(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, token2: String, min: I32, max: I32, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewCountTrans2(am, from, to, token.cstring(), token2.cstring(), min, max, data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:120
  Original Name: xmlAutomataNewCountedTrans/usr/include/libxml2/libxml/xmlautomata.h:120

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [FundamentalType(int) size=32]
*/
  fun xmlAutomataNewCountedTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, counter: I32): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewCountedTrans(am, from, to, counter)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:130
  Original Name: xmlAutomataNewCounter/usr/include/libxml2/libxml/xmlautomata.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlAutomataNewCounter(am: NullablePointer[XmlAutomata] tag, min: I32, max: I32): I32 =>
    @xmlAutomataNewCounter(am, min, max)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:125
  Original Name: xmlAutomataNewCounterTrans/usr/include/libxml2/libxml/xmlautomata.h:125

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [FundamentalType(int) size=32]
*/
  fun xmlAutomataNewCounterTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, counter: I32): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewCounterTrans(am, from, to, counter)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:116
  Original Name: xmlAutomataNewEpsilon/usr/include/libxml2/libxml/xmlautomata.h:116

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataNewEpsilon(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewEpsilon(am, from, to)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:69
  Original Name: xmlAutomataNewNegTrans/usr/include/libxml2/libxml/xmlautomata.h:69

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewNegTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, token2: String, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewNegTrans(am, from, to, token.cstring(), token2.cstring(), data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:94
  Original Name: xmlAutomataNewOnceTrans/usr/include/libxml2/libxml/xmlautomata.h:94

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewOnceTrans(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, min: I32, max: I32, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewOnceTrans(am, from, to, token.cstring(), min, max, data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:102
  Original Name: xmlAutomataNewOnceTrans2/usr/include/libxml2/libxml/xmlautomata.h:102

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewOnceTrans2(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, token2: String, min: I32, max: I32, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewOnceTrans2(am, from, to, token.cstring(), token2.cstring(), min, max, data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:54
  Original Name: xmlAutomataNewState/usr/include/libxml2/libxml/xmlautomata.h:54

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataNewState(am: NullablePointer[XmlAutomata] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewState(am)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:56
  Original Name: xmlAutomataNewTransition/usr/include/libxml2/libxml/xmlautomata.h:56

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewTransition(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewTransition(am, from, to, token.cstring(), data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:62
  Original Name: xmlAutomataNewTransition2/usr/include/libxml2/libxml/xmlautomata.h:62

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlAutomataNewTransition2(am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: String, token2: String, data: Pointer[None] tag): NullablePointer[XmlAutomataState] =>
    @xmlAutomataNewTransition2(am, from, to, token.cstring(), token2.cstring(), data)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:51
  Original Name: xmlAutomataSetFinalState/usr/include/libxml2/libxml/xmlautomata.h:51

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlAutomataSetFinalState(am: NullablePointer[XmlAutomata] tag, state: NullablePointer[XmlAutomataState] tag): I32 =>
    @xmlAutomataSetFinalState(am, state)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:86
  Original Name: xmlBoolToText/usr/include/libxml2/libxml/debugXML.h:86

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlBoolToText(boolval: I32): String val =>
    var pcstring: Pointer[U8] =  @xmlBoolToText(boolval)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:120
  Original Name: xmlBufContent/usr/include/libxml2/libxml/tree.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
  fun xmlBufContent(buf: NullablePointer[XmlBuf] tag): String =>
    var pcstring: Pointer[U8] =  @xmlBufContent(buf)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:121
  Original Name: xmlBufEnd/usr/include/libxml2/libxml/tree.h:121

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
  fun xmlBufEnd(buf: NullablePointer[XmlBuf] tag): String =>
    var pcstring: Pointer[U8] =  @xmlBufEnd(buf)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1094
  Original Name: xmlBufGetNodeContent/usr/include/libxml2/libxml/tree.h:1094

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlBufGetNodeContent(buf: NullablePointer[XmlBuf] tag, cur: NullablePointer[XmlNode] tag): I32 =>
    @xmlBufGetNodeContent(buf, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1205
  Original Name: xmlBufNodeDump/usr/include/libxml2/libxml/tree.h:1205

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlBufNodeDump(buf: NullablePointer[XmlBuf] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32): U64 =>
    @xmlBufNodeDump(buf, doc, cur, level, format)


/*
  Source: /usr/include/libxml2/libxml/tree.h:123
  Original Name: xmlBufShrink/usr/include/libxml2/libxml/tree.h:123

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlBufShrink(buf: NullablePointer[XmlBuf] tag, len: U64): U64 =>
    @xmlBufShrink(buf, len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:122
  Original Name: xmlBufUse/usr/include/libxml2/libxml/tree.h:122

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
  fun xmlBufUse(buf: NullablePointer[XmlBuf] tag): U64 =>
    @xmlBufUse(buf)


/*
  Source: /usr/include/libxml2/libxml/tree.h:729
  Original Name: xmlBufferAdd/usr/include/libxml2/libxml/tree.h:729

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlBufferAdd(buf: NullablePointer[XmlBuffer] tag, str: String, len: I32): I32 =>
    @xmlBufferAdd(buf, str.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:733
  Original Name: xmlBufferAddHead/usr/include/libxml2/libxml/tree.h:733

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlBufferAddHead(buf: NullablePointer[XmlBuffer] tag, str: String, len: I32): I32 =>
    @xmlBufferAddHead(buf, str.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:740
  Original Name: xmlBufferCCat/usr/include/libxml2/libxml/tree.h:740

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlBufferCCat(buf: NullablePointer[XmlBuffer] tag, str: String): I32 =>
    @xmlBufferCCat(buf, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:737
  Original Name: xmlBufferCat/usr/include/libxml2/libxml/tree.h:737

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlBufferCat(buf: NullablePointer[XmlBuffer] tag, str: String): I32 =>
    @xmlBufferCat(buf, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:751
  Original Name: xmlBufferContent/usr/include/libxml2/libxml/tree.h:751

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferContent(buf: NullablePointer[XmlBuffer] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlBufferContent(buf)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:714
  Original Name: xmlBufferCreate/usr/include/libxml2/libxml/tree.h:714

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
*/
  fun xmlBufferCreate(): NullablePointer[XmlBuffer] =>
    @xmlBufferCreate()


/*
  Source: /usr/include/libxml2/libxml/tree.h:716
  Original Name: xmlBufferCreateSize/usr/include/libxml2/libxml/tree.h:716

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlBufferCreateSize(size: U64): NullablePointer[XmlBuffer] =>
    @xmlBufferCreateSize(size)


/*
  Source: /usr/include/libxml2/libxml/tree.h:718
  Original Name: xmlBufferCreateStatic/usr/include/libxml2/libxml/tree.h:718

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlBufferCreateStatic(mem: Pointer[None] tag, size: U64): NullablePointer[XmlBuffer] =>
    @xmlBufferCreateStatic(mem, size)


/*
  Source: /usr/include/libxml2/libxml/tree.h:753
  Original Name: xmlBufferDetach/usr/include/libxml2/libxml/tree.h:753

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferDetach(buf: NullablePointer[XmlBuffer] tag): String =>
    var pcstring: Pointer[U8] =  @xmlBufferDetach(buf)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:726
  Original Name: xmlBufferDump/usr/include/libxml2/libxml/tree.h:726

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferDump(file: NullablePointer[IOFILE] tag, buf: NullablePointer[XmlBuffer] tag): I32 =>
    @xmlBufferDump(file, buf)


/*
  Source: /usr/include/libxml2/libxml/tree.h:749
  Original Name: xmlBufferEmpty/usr/include/libxml2/libxml/tree.h:749

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferEmpty(buf: NullablePointer[XmlBuffer] tag): None =>
    @xmlBufferEmpty(buf)


/*
  Source: /usr/include/libxml2/libxml/tree.h:724
  Original Name: xmlBufferFree/usr/include/libxml2/libxml/tree.h:724

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferFree(buf: NullablePointer[XmlBuffer] tag): None =>
    @xmlBufferFree(buf)


/*
  Source: /usr/include/libxml2/libxml/tree.h:746
  Original Name: xmlBufferGrow/usr/include/libxml2/libxml/tree.h:746

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlBufferGrow(buf: NullablePointer[XmlBuffer] tag, len: U32): I32 =>
    @xmlBufferGrow(buf, len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:758
  Original Name: xmlBufferLength/usr/include/libxml2/libxml/tree.h:758

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlBufferLength(buf: NullablePointer[XmlBuffer] tag): I32 =>
    @xmlBufferLength(buf)


/*
  Source: /usr/include/libxml2/libxml/tree.h:721
  Original Name: xmlBufferResize/usr/include/libxml2/libxml/tree.h:721

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlBufferResize(buf: NullablePointer[XmlBuffer] tag, size: U32): I32 =>
    @xmlBufferResize(buf, size)


/*
  Source: /usr/include/libxml2/libxml/tree.h:755
  Original Name: xmlBufferSetAllocationScheme/usr/include/libxml2/libxml/tree.h:755

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [Enumeration size=32,fid: f16]
*/
  fun xmlBufferSetAllocationScheme(buf: NullablePointer[XmlBuffer] tag, scheme: I32): None =>
    @xmlBufferSetAllocationScheme(buf, scheme)


/*
  Source: /usr/include/libxml2/libxml/tree.h:743
  Original Name: xmlBufferShrink/usr/include/libxml2/libxml/tree.h:743

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlBufferShrink(buf: NullablePointer[XmlBuffer] tag, len: U32): I32 =>
    @xmlBufferShrink(buf, len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1137
  Original Name: xmlBufferWriteCHAR/usr/include/libxml2/libxml/tree.h:1137

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlBufferWriteXmlChar(buf: NullablePointer[XmlBuffer] tag, string: String): None =>
    @xmlBufferWriteCHAR(buf, string.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1140
  Original Name: xmlBufferWriteChar/usr/include/libxml2/libxml/tree.h:1140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlBufferWriteChar(buf: NullablePointer[XmlBuffer] tag, string: String): None =>
    @xmlBufferWriteChar(buf, string.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1143
  Original Name: xmlBufferWriteQuotedString/usr/include/libxml2/libxml/tree.h:1143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlBufferWriteQuotedString(buf: NullablePointer[XmlBuffer] tag, string: String): None =>
    @xmlBufferWriteQuotedString(buf, string.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:693
  Original Name: xmlBuildQName/usr/include/libxml2/libxml/tree.h:693

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlBuildQName(ncname: String, prefix: String, memory: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlBuildQName(ncname.cstring(), prefix.cstring(), memory.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/uri.h:58
  Original Name: xmlBuildRelativeURI/usr/include/libxml2/libxml/uri.h:58

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlBuildRelativeURI(uRI: String, base: String): String =>
    var pcstring: Pointer[U8] =  @xmlBuildRelativeURI(uRI.cstring(), base.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/uri.h:55
  Original Name: xmlBuildURI/usr/include/libxml2/libxml/uri.h:55

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlBuildURI(uRI: String, base: String): String =>
    var pcstring: Pointer[U8] =  @xmlBuildURI(uRI.cstring(), base.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parser.h:1080
  Original Name: xmlByteConsumed/usr/include/libxml2/libxml/parser.h:1080

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlByteConsumed(ctxt: NullablePointer[XmlParserCtxt] tag): I64 =>
    @xmlByteConsumed(ctxt)


/*
  Source: /usr/include/libxml2/libxml/uri.h:87
  Original Name: xmlCanonicPath/usr/include/libxml2/libxml/uri.h:87

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCanonicPath(path: String): String =>
    var pcstring: Pointer[U8] =  @xmlCanonicPath(path.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:133
  Original Name: xmlCatalogAdd/usr/include/libxml2/libxml/catalog.h:133

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogAdd(xmltype: String, orig: String, replace: String): I32 =>
    @xmlCatalogAdd(xmltype.cstring(), orig.cstring(), replace.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:150
  Original Name: xmlCatalogAddLocal/usr/include/libxml2/libxml/catalog.h:150

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogAddLocal(catalogs: Pointer[None] tag, uRL: String): Pointer[None] =>
    @xmlCatalogAddLocal(catalogs, uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:118
  Original Name: xmlCatalogCleanup/usr/include/libxml2/libxml/catalog.h:118

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCatalogCleanup(): None =>
    @xmlCatalogCleanup()


/*
  Source: /usr/include/libxml2/libxml/catalog.h:141
  Original Name: xmlCatalogConvert/usr/include/libxml2/libxml/catalog.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlCatalogConvert(): I32 =>
    @xmlCatalogConvert()


/*
  Source: /usr/include/libxml2/libxml/catalog.h:121
  Original Name: xmlCatalogDump/usr/include/libxml2/libxml/catalog.h:121

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
  fun xmlCatalogDump(out: NullablePointer[IOFILE] tag): None =>
    @xmlCatalogDump(out)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:148
  Original Name: xmlCatalogFreeLocal/usr/include/libxml2/libxml/catalog.h:148

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlCatalogFreeLocal(catalogs: Pointer[None] tag): None =>
    @xmlCatalogFreeLocal(catalogs)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:169
  Original Name: xmlCatalogGetDefaults/usr/include/libxml2/libxml/catalog.h:169

  Return Value: [Enumeration size=32,fid: f67]

  Arguments:
*/
  fun xmlCatalogGetDefaults(): I32 =>
    @xmlCatalogGetDefaults()


/*
  Source: /usr/include/libxml2/libxml/catalog.h:176
  Original Name: xmlCatalogGetPublic/usr/include/libxml2/libxml/catalog.h:176

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogGetPublic(pubID: String): String val =>
    var pcstring: Pointer[U8] =  @xmlCatalogGetPublic(pubID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:174
  Original Name: xmlCatalogGetSystem/usr/include/libxml2/libxml/catalog.h:174

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogGetSystem(sysID: String): String val =>
    var pcstring: Pointer[U8] =  @xmlCatalogGetSystem(sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:106
  Original Name: xmlCatalogIsEmpty/usr/include/libxml2/libxml/catalog.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
  fun xmlCatalogIsEmpty(catal: NullablePointer[XmlCatalog] tag): I32 =>
    @xmlCatalogIsEmpty(catal)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:153
  Original Name: xmlCatalogLocalResolve/usr/include/libxml2/libxml/catalog.h:153

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogLocalResolve(catalogs: Pointer[None] tag, pubID: String, sysID: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogLocalResolve(catalogs, pubID.cstring(), sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:157
  Original Name: xmlCatalogLocalResolveURI/usr/include/libxml2/libxml/catalog.h:157

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogLocalResolveURI(catalogs: Pointer[None] tag, uRI: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogLocalResolveURI(catalogs, uRI.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:137
  Original Name: xmlCatalogRemove/usr/include/libxml2/libxml/catalog.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogRemove(value: String): I32 =>
    @xmlCatalogRemove(value.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:124
  Original Name: xmlCatalogResolve/usr/include/libxml2/libxml/catalog.h:124

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogResolve(pubID: String, sysID: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogResolve(pubID.cstring(), sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:129
  Original Name: xmlCatalogResolvePublic/usr/include/libxml2/libxml/catalog.h:129

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogResolvePublic(pubID: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogResolvePublic(pubID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:127
  Original Name: xmlCatalogResolveSystem/usr/include/libxml2/libxml/catalog.h:127

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogResolveSystem(sysID: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogResolveSystem(sysID.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:131
  Original Name: xmlCatalogResolveURI/usr/include/libxml2/libxml/catalog.h:131

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCatalogResolveURI(uRI: String): String =>
    var pcstring: Pointer[U8] =  @xmlCatalogResolveURI(uRI.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/catalog.h:163
  Original Name: xmlCatalogSetDebug/usr/include/libxml2/libxml/catalog.h:163

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlCatalogSetDebug(level: I32): I32 =>
    @xmlCatalogSetDebug(level)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:165
  Original Name: xmlCatalogSetDefaultPrefer/usr/include/libxml2/libxml/catalog.h:165

  Return Value: [Enumeration size=32,fid: f67]

  Arguments:
    [Enumeration size=32,fid: f67]
*/
  fun xmlCatalogSetDefaultPrefer(prefer: I32): I32 =>
    @xmlCatalogSetDefaultPrefer(prefer)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:167
  Original Name: xmlCatalogSetDefaults/usr/include/libxml2/libxml/catalog.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [Enumeration size=32,fid: f67]
*/
  fun xmlCatalogSetDefaults(allow: I32): None =>
    @xmlCatalogSetDefaults(allow)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:224
  Original Name: xmlCharEncCloseFunc/usr/include/libxml2/libxml/encoding.h:224

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlCharEncCloseFunc(handler: NullablePointer[XmlCharEncodingHandler] tag): I32 =>
    @xmlCharEncCloseFunc(handler)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:220
  Original Name: xmlCharEncFirstLine/usr/include/libxml2/libxml/encoding.h:220

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlCharEncFirstLine(handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag): I32 =>
    @xmlCharEncFirstLine(handler, out, xmlin)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:216
  Original Name: xmlCharEncInFunc/usr/include/libxml2/libxml/encoding.h:216

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlCharEncInFunc(handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag): I32 =>
    @xmlCharEncInFunc(handler, out, xmlin)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:211
  Original Name: xmlCharEncOutFunc/usr/include/libxml2/libxml/encoding.h:211

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlCharEncOutFunc(handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag): I32 =>
    @xmlCharEncOutFunc(handler, out, xmlin)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:55
  Original Name: xmlCharInRange/usr/include/libxml2/libxml/chvalid.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f68]
*/
  fun xmlCharInRange(xmlval: U32, group: NullablePointer[XmlChRangeGroup] tag): I32 =>
    @xmlCharInRange(xmlval, group)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:49
  Original Name: xmlCharStrdup/usr/include/libxml2/libxml/xmlstring.h:49

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlCharStrdup(cur: String): String =>
    var pcstring: Pointer[U8] =  @xmlCharStrdup(cur.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:46
  Original Name: xmlCharStrndup/usr/include/libxml2/libxml/xmlstring.h:46

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCharStrndup(cur: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlCharStrndup(cur.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:312
  Original Name: xmlCheckFilename/usr/include/libxml2/libxml/xmlIO.h:312

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlCheckFilename(path: String): I32 =>
    @xmlCheckFilename(path.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:293
  Original Name: xmlCheckHTTPInput/usr/include/libxml2/libxml/xmlIO.h:293

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlCheckHTTPInput(ctxt: NullablePointer[XmlParserCtxt] tag, ret: NullablePointer[XmlParserInput] tag): NullablePointer[XmlParserInput] =>
    @xmlCheckHTTPInput(ctxt, ret)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:558
  Original Name: xmlCheckLanguageID/usr/include/libxml2/libxml/parserInternals.h:558

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCheckLanguageID(lang: String): I32 =>
    @xmlCheckLanguageID(lang.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:112
  Original Name: xmlCheckUTF8/usr/include/libxml2/libxml/xmlstring.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCheckUTF8(utf: String): I32 =>
    @xmlCheckUTF8(utf.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlversion.h:24
  Original Name: xmlCheckVersion/usr/include/libxml2/libxml/xmlversion.h:24

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlCheckVersion(version: I32): None =>
    @xmlCheckVersion(version)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1305
  Original Name: xmlChildElementCount/usr/include/libxml2/libxml/tree.h:1305

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlChildElementCount(parent: NullablePointer[XmlNode] tag): U64 =>
    @xmlChildElementCount(parent)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:174
  Original Name: xmlCleanupCharEncodingHandlers/usr/include/libxml2/libxml/encoding.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupCharEncodingHandlers(): None =>
    @xmlCleanupCharEncodingHandlers()


/*
  Source: /usr/include/libxml2/libxml/encoding.h:197
  Original Name: xmlCleanupEncodingAliases/usr/include/libxml2/libxml/encoding.h:197

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupEncodingAliases(): None =>
    @xmlCleanupEncodingAliases()


/*
  Source: /usr/include/libxml2/libxml/globals.h:28
  Original Name: xmlCleanupGlobals/usr/include/libxml2/libxml/globals.h:28

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupGlobals(): None =>
    @xmlCleanupGlobals()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:159
  Original Name: xmlCleanupInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupInputCallbacks(): None =>
    @xmlCleanupInputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:136
  Original Name: xmlCleanupMemory/usr/include/libxml2/libxml/xmlmemory.h:136

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupMemory(): None =>
    @xmlCleanupMemory()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:219
  Original Name: xmlCleanupOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:219

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupOutputCallbacks(): None =>
    @xmlCleanupOutputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/parser.h:827
  Original Name: xmlCleanupParser/usr/include/libxml2/libxml/parser.h:827

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupParser(): None =>
    @xmlCleanupParser()


/*
  Source: /usr/include/libxml2/libxml/entities.h:143
  Original Name: xmlCleanupPredefinedEntities/usr/include/libxml2/libxml/entities.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupPredefinedEntities(): None =>
    @xmlCleanupPredefinedEntities()


/*
  Source: /usr/include/libxml2/libxml/threads.h:71
  Original Name: xmlCleanupThreads/usr/include/libxml2/libxml/threads.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlCleanupThreads(): None =>
    @xmlCleanupThreads()


/*
  Source: /usr/include/libxml2/libxml/parser.h:1055
  Original Name: xmlClearNodeInfoSeq/usr/include/libxml2/libxml/parser.h:1055

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
*/
  fun xmlClearNodeInfoSeq(seq: NullablePointer[XmlParserNodeInfoSeq] tag): None =>
    @xmlClearNodeInfoSeq(seq)


/*
  Source: /usr/include/libxml2/libxml/parser.h:983
  Original Name: xmlClearParserCtxt/usr/include/libxml2/libxml/parser.h:983

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlClearParserCtxt(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlClearParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:76
  Original Name: xmlConvertSGMLCatalog/usr/include/libxml2/libxml/catalog.h:76

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
  fun xmlConvertSGMLCatalog(catal: NullablePointer[XmlCatalog] tag): I32 =>
    @xmlConvertSGMLCatalog(catal)


/*
  Source: /usr/include/libxml2/libxml/valid.h:253
  Original Name: xmlCopyAttributeTable/usr/include/libxml2/libxml/valid.h:253

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlCopyAttributeTable(table: NullablePointer[XmlHashTable] tag): NullablePointer[XmlHashTable] =>
    @xmlCopyAttributeTable(table)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:567
  Original Name: xmlCopyChar/usr/include/libxml2/libxml/parserInternals.h:567

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCopyChar(len: I32, out: String, xmlval: I32): I32 =>
    @xmlCopyChar(len, out.cstring(), xmlval)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:565
  Original Name: xmlCopyCharMultiByte/usr/include/libxml2/libxml/parserInternals.h:565

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCopyCharMultiByte(out: String, xmlval: I32): I32 =>
    @xmlCopyCharMultiByte(out.cstring(), xmlval)


/*
  Source: /usr/include/libxml2/libxml/tree.h:832
  Original Name: xmlCopyDoc/usr/include/libxml2/libxml/tree.h:832

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlCopyDoc(doc: NullablePointer[XmlDoc] tag, recursive: I32): NullablePointer[XmlDoc] =>
    @xmlCopyDoc(doc, recursive)


/*
  Source: /usr/include/libxml2/libxml/valid.h:189
  Original Name: xmlCopyDocElementContent/usr/include/libxml2/libxml/valid.h:189

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlCopyDocElementContent(doc: NullablePointer[XmlDoc] tag, content: NullablePointer[XmlElementContent] tag): NullablePointer[XmlElementContent] =>
    @xmlCopyDocElementContent(doc, content)


/*
  Source: /usr/include/libxml2/libxml/tree.h:828
  Original Name: xmlCopyDtd/usr/include/libxml2/libxml/tree.h:828

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
  fun xmlCopyDtd(dtd: NullablePointer[XmlDtd] tag): NullablePointer[XmlDtd] =>
    @xmlCopyDtd(dtd)


/*
  Source: /usr/include/libxml2/libxml/valid.h:180
  Original Name: xmlCopyElementContent/usr/include/libxml2/libxml/valid.h:180

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlCopyElementContent(content: NullablePointer[XmlElementContent] tag): NullablePointer[XmlElementContent] =>
    @xmlCopyElementContent(content)


/*
  Source: /usr/include/libxml2/libxml/valid.h:217
  Original Name: xmlCopyElementTable/usr/include/libxml2/libxml/valid.h:217

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlCopyElementTable(table: NullablePointer[XmlHashTable] tag): NullablePointer[XmlHashTable] =>
    @xmlCopyElementTable(table)


/*
  Source: /usr/include/libxml2/libxml/entities.h:129
  Original Name: xmlCopyEntitiesTable/usr/include/libxml2/libxml/entities.h:129

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlCopyEntitiesTable(table: NullablePointer[XmlHashTable] tag): NullablePointer[XmlHashTable] =>
    @xmlCopyEntitiesTable(table)


/*
  Source: /usr/include/libxml2/libxml/valid.h:237
  Original Name: xmlCopyEnumeration/usr/include/libxml2/libxml/valid.h:237

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlCopyEnumeration(cur: NullablePointer[XmlEnumeration] tag): NullablePointer[XmlEnumeration] =>
    @xmlCopyEnumeration(cur)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:910
  Original Name: xmlCopyError/usr/include/libxml2/libxml/xmlerror.h:910

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f25]
    [PointerType size=64]->[Struct size=704,fid: f25]
*/
  fun xmlCopyError(from: NullablePointer[XmlError] tag, to: NullablePointer[XmlError] tag): I32 =>
    @xmlCopyError(from, to)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1017
  Original Name: xmlCopyNamespace/usr/include/libxml2/libxml/tree.h:1017

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlCopyNamespace(cur: NullablePointer[XmlNs] tag): NullablePointer[XmlNs] =>
    @xmlCopyNamespace(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1019
  Original Name: xmlCopyNamespaceList/usr/include/libxml2/libxml/tree.h:1019

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlCopyNamespaceList(cur: NullablePointer[XmlNs] tag): NullablePointer[XmlNs] =>
    @xmlCopyNamespaceList(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:896
  Original Name: xmlCopyNode/usr/include/libxml2/libxml/tree.h:896

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlCopyNode(node: NullablePointer[XmlNode] tag, recursive: I32): NullablePointer[XmlNode] =>
    @xmlCopyNode(node, recursive)


/*
  Source: /usr/include/libxml2/libxml/tree.h:906
  Original Name: xmlCopyNodeList/usr/include/libxml2/libxml/tree.h:906

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlCopyNodeList(node: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlCopyNodeList(node)


/*
  Source: /usr/include/libxml2/libxml/valid.h:161
  Original Name: xmlCopyNotationTable/usr/include/libxml2/libxml/valid.h:161

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlCopyNotationTable(table: NullablePointer[XmlHashTable] tag): NullablePointer[XmlHashTable] =>
    @xmlCopyNotationTable(table)


/*
  Source: /usr/include/libxml2/libxml/tree.h:821
  Original Name: xmlCopyProp/usr/include/libxml2/libxml/tree.h:821

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlCopyProp(target: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlAttr] tag): NullablePointer[XmlAttr] =>
    @xmlCopyProp(target, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:824
  Original Name: xmlCopyPropList/usr/include/libxml2/libxml/tree.h:824

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlCopyPropList(target: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlAttr] tag): NullablePointer[XmlAttr] =>
    @xmlCopyPropList(target, cur)


/*
  Source: /usr/include/libxml2/libxml/parser.h:993
  Original Name: xmlCreateDocParserCtxt/usr/include/libxml2/libxml/parser.h:993

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCreateDocParserCtxt(cur: String): NullablePointer[XmlParserCtxt] =>
    @xmlCreateDocParserCtxt(cur.cstring())


/*
  Source: /usr/include/libxml2/libxml/entities.h:126
  Original Name: xmlCreateEntitiesTable/usr/include/libxml2/libxml/entities.h:126

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
*/
  fun xmlCreateEntitiesTable(): NullablePointer[XmlHashTable] =>
    @xmlCreateEntitiesTable()


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:333
  Original Name: xmlCreateEntityParserCtxt/usr/include/libxml2/libxml/parserInternals.h:333

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCreateEntityParserCtxt(uRL: String, iD: String, base: String): NullablePointer[XmlParserCtxt] =>
    @xmlCreateEntityParserCtxt(uRL.cstring(), iD.cstring(), base.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:232
  Original Name: xmlCreateEnumeration/usr/include/libxml2/libxml/valid.h:232

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCreateEnumeration(name: String): NullablePointer[XmlEnumeration] =>
    @xmlCreateEnumeration(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:325
  Original Name: xmlCreateFileParserCtxt/usr/include/libxml2/libxml/parserInternals.h:325

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlCreateFileParserCtxt(filename: String): NullablePointer[XmlParserCtxt] =>
    @xmlCreateFileParserCtxt(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:1034
  Original Name: xmlCreateIOParserCtxt/usr/include/libxml2/libxml/parser.h:1034

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [Enumeration size=32,fid: f42]
*/
  fun xmlCreateIOParserCtxt(sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, enc: I32): NullablePointer[XmlParserCtxt] =>
    @xmlCreateIOParserCtxt(sax, userdata, ioread, ioclose, ioctx, enc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:764
  Original Name: xmlCreateIntSubset/usr/include/libxml2/libxml/tree.h:764

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlCreateIntSubset(doc: NullablePointer[XmlDoc] tag, name: String, externalID: String, systemID: String): NullablePointer[XmlDtd] =>
    @xmlCreateIntSubset(doc, name.cstring(), externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:330
  Original Name: xmlCreateMemoryParserCtxt/usr/include/libxml2/libxml/parserInternals.h:330

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCreateMemoryParserCtxt(buffer: String, size: I32): NullablePointer[XmlParserCtxt] =>
    @xmlCreateMemoryParserCtxt(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1017
  Original Name: xmlCreatePushParserCtxt/usr/include/libxml2/libxml/parser.h:1017

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlCreatePushParserCtxt(sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, chunk: String, size: I32, filename: String): NullablePointer[XmlParserCtxt] =>
    @xmlCreatePushParserCtxt(sax, userdata, chunk.cstring(), size, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/uri.h:53
  Original Name: xmlCreateURI/usr/include/libxml2/libxml/uri.h:53

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
*/
  fun xmlCreateURI(): NullablePointer[XmlURI] =>
    @xmlCreateURI()


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:327
  Original Name: xmlCreateURLParserCtxt/usr/include/libxml2/libxml/parserInternals.h:327

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCreateURLParserCtxt(filename: String, options: I32): NullablePointer[XmlParserCtxt] =>
    @xmlCreateURLParserCtxt(filename.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:904
  Original Name: xmlCtxtGetLastError/usr/include/libxml2/libxml/xmlerror.h:904

  Return Value: [PointerType size=64]->[Struct size=704,fid: f25]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlCtxtGetLastError(ctx: Pointer[None] tag): NullablePointer[XmlError] =>
    @xmlCtxtGetLastError(ctx)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1158
  Original Name: xmlCtxtReadDoc/usr/include/libxml2/libxml/parser.h:1158

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtReadDoc(ctxt: NullablePointer[XmlParserCtxt] tag, cur: String, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlCtxtReadDoc(ctxt, cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1176
  Original Name: xmlCtxtReadFd/usr/include/libxml2/libxml/parser.h:1176

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtReadFd(ctxt: NullablePointer[XmlParserCtxt] tag, fd: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlCtxtReadFd(ctxt, fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1164
  Original Name: xmlCtxtReadFile/usr/include/libxml2/libxml/parser.h:1164

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtReadFile(ctxt: NullablePointer[XmlParserCtxt] tag, filename: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlCtxtReadFile(ctxt, filename.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1182
  Original Name: xmlCtxtReadIO/usr/include/libxml2/libxml/parser.h:1182

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtReadIO(ctxt: NullablePointer[XmlParserCtxt] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlCtxtReadIO(ctxt, ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1169
  Original Name: xmlCtxtReadMemory/usr/include/libxml2/libxml/parser.h:1169

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtReadMemory(ctxt: NullablePointer[XmlParserCtxt] tag, buffer: String, size: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlCtxtReadMemory(ctxt, buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1120
  Original Name: xmlCtxtReset/usr/include/libxml2/libxml/parser.h:1120

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlCtxtReset(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlCtxtReset(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:906
  Original Name: xmlCtxtResetLastError/usr/include/libxml2/libxml/xmlerror.h:906

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlCtxtResetLastError(ctx: Pointer[None] tag): None =>
    @xmlCtxtResetLastError(ctx)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1122
  Original Name: xmlCtxtResetPush/usr/include/libxml2/libxml/parser.h:1122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlCtxtResetPush(ctxt: NullablePointer[XmlParserCtxt] tag, chunk: String, size: I32, filename: String, encoding: String): I32 =>
    @xmlCtxtResetPush(ctxt, chunk.cstring(), size, filename.cstring(), encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:1128
  Original Name: xmlCtxtUseOptions/usr/include/libxml2/libxml/parser.h:1128

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlCtxtUseOptions(ctxt: NullablePointer[XmlParserCtxt] tag, options: I32): I32 =>
    @xmlCtxtUseOptions(ctxt, options)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:563
  Original Name: xmlCurrentChar/usr/include/libxml2/libxml/parserInternals.h:563

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun xmlCurrentChar(ctxt: NullablePointer[XmlParserCtxt] tag, len: Pointer[I32] tag): I32 =>
    @xmlCurrentChar(ctxt, len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1278
  Original Name: xmlDOMWrapAdoptNode/usr/include/libxml2/libxml/tree.h:1278

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDOMWrapAdoptNode(ctxt: NullablePointer[XmlDOMWrapCtxt] tag, sourceDoc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, destDoc: NullablePointer[XmlDoc] tag, destParent: NullablePointer[XmlNode] tag, options: I32): I32 =>
    @xmlDOMWrapAdoptNode(ctxt, sourceDoc, node, destDoc, destParent, options)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1290
  Original Name: xmlDOMWrapCloneNode/usr/include/libxml2/libxml/tree.h:1290

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlDOMWrapCloneNode(ctxt: NullablePointer[XmlDOMWrapCtxt] tag, sourceDoc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, clonedNode: Pointer[NullablePointer[XmlNode]] tag, destDoc: NullablePointer[XmlDoc] tag, destParent: NullablePointer[XmlNode] tag, deep: I32, options: I32): I32 =>
    @xmlDOMWrapCloneNode(ctxt, sourceDoc, node, clonedNode, destDoc, destParent, deep, options)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1272
  Original Name: xmlDOMWrapFreeCtxt/usr/include/libxml2/libxml/tree.h:1272

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
  fun xmlDOMWrapFreeCtxt(ctxt: NullablePointer[XmlDOMWrapCtxt] tag): None =>
    @xmlDOMWrapFreeCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1270
  Original Name: xmlDOMWrapNewCtxt/usr/include/libxml2/libxml/tree.h:1270

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
*/
  fun xmlDOMWrapNewCtxt(): NullablePointer[XmlDOMWrapCtxt] =>
    @xmlDOMWrapNewCtxt()


/*
  Source: /usr/include/libxml2/libxml/tree.h:1274
  Original Name: xmlDOMWrapReconcileNamespaces/usr/include/libxml2/libxml/tree.h:1274

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDOMWrapReconcileNamespaces(ctxt: NullablePointer[XmlDOMWrapCtxt] tag, elem: NullablePointer[XmlNode] tag, options: I32): I32 =>
    @xmlDOMWrapReconcileNamespaces(ctxt, elem, options)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1285
  Original Name: xmlDOMWrapRemoveNode/usr/include/libxml2/libxml/tree.h:1285

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDOMWrapRemoveNode(ctxt: NullablePointer[XmlDOMWrapCtxt] tag, doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, options: I32): I32 =>
    @xmlDOMWrapRemoveNode(ctxt, doc, node, options)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:71
  Original Name: xmlDebugCheckDocument/usr/include/libxml2/libxml/debugXML.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDebugCheckDocument(output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlDebugCheckDocument(output, doc)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:32
  Original Name: xmlDebugDumpAttr/usr/include/libxml2/libxml/debugXML.h:32

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDebugDumpAttr(output: NullablePointer[IOFILE] tag, attr: NullablePointer[XmlAttr] tag, depth: I32): None =>
    @xmlDebugDumpAttr(output, attr, depth)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:36
  Original Name: xmlDebugDumpAttrList/usr/include/libxml2/libxml/debugXML.h:36

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDebugDumpAttrList(output: NullablePointer[IOFILE] tag, attr: NullablePointer[XmlAttr] tag, depth: I32): None =>
    @xmlDebugDumpAttrList(output, attr, depth)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:58
  Original Name: xmlDebugDumpDTD/usr/include/libxml2/libxml/debugXML.h:58

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
  fun xmlDebugDumpDTD(output: NullablePointer[IOFILE] tag, dtd: NullablePointer[XmlDtd] tag): None =>
    @xmlDebugDumpDTD(output, dtd)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:55
  Original Name: xmlDebugDumpDocument/usr/include/libxml2/libxml/debugXML.h:55

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDebugDumpDocument(output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag): None =>
    @xmlDebugDumpDocument(output, doc)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:52
  Original Name: xmlDebugDumpDocumentHead/usr/include/libxml2/libxml/debugXML.h:52

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDebugDumpDocumentHead(output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag): None =>
    @xmlDebugDumpDocumentHead(output, doc)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:61
  Original Name: xmlDebugDumpEntities/usr/include/libxml2/libxml/debugXML.h:61

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDebugDumpEntities(output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag): None =>
    @xmlDebugDumpEntities(output, doc)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:44
  Original Name: xmlDebugDumpNode/usr/include/libxml2/libxml/debugXML.h:44

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDebugDumpNode(output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32): None =>
    @xmlDebugDumpNode(output, node, depth)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:48
  Original Name: xmlDebugDumpNodeList/usr/include/libxml2/libxml/debugXML.h:48

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDebugDumpNodeList(output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32): None =>
    @xmlDebugDumpNodeList(output, node, depth)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:40
  Original Name: xmlDebugDumpOneNode/usr/include/libxml2/libxml/debugXML.h:40

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDebugDumpOneNode(output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32): None =>
    @xmlDebugDumpOneNode(output, node, depth)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:29
  Original Name: xmlDebugDumpString/usr/include/libxml2/libxml/debugXML.h:29

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlDebugDumpString(output: NullablePointer[IOFILE] tag, str: String): None =>
    @xmlDebugDumpString(output, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:620
  Original Name: xmlDecodeEntities/usr/include/libxml2/libxml/parserInternals.h:620

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
*/
  fun xmlDecodeEntities(ctxt: NullablePointer[XmlParserCtxt] tag, len: I32, what: I32, xmlend: U8, end2: U8, end3: U8): String =>
    var pcstring: Pointer[U8] =  @xmlDecodeEntities(ctxt, len, what, xmlend, end2, end3)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:174
  Original Name: xmlDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlDefaultSAXHandlerInit(): None =>
    @xmlDefaultSAXHandlerInit()


/*
  Source: /usr/include/libxml2/libxml/encoding.h:193
  Original Name: xmlDelEncodingAlias/usr/include/libxml2/libxml/encoding.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlDelEncodingAlias(alias: String): I32 =>
    @xmlDelEncodingAlias(alias.cstring())


/*
  Source: /usr/include/libxml2/libxml/globals.h:185
  Original Name: xmlDeregisterNodeDefault/usr/include/libxml2/libxml/globals.h:185

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlDeregisterNodeDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlDeregisterNodeDefault(func)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:207
  Original Name: xmlDetectCharEncoding/usr/include/libxml2/libxml/encoding.h:207

  Return Value: [Enumeration size=32,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlDetectCharEncoding(xmlin: String, len: I32): I32 =>
    @xmlDetectCharEncoding(xmlin.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/dict.h:74
  Original Name: xmlDictCleanup/usr/include/libxml2/libxml/dict.h:74

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlDictCleanup(): None =>
    @xmlDictCleanup()


/*
  Source: /usr/include/libxml2/libxml/dict.h:36
  Original Name: xmlDictCreate/usr/include/libxml2/libxml/dict.h:36

  Return Value: [PointerType size=64]->[Struct size=,fid: f21]

  Arguments:
*/
  fun xmlDictCreate(): NullablePointer[XmlDict] =>
    @xmlDictCreate()


/*
  Source: /usr/include/libxml2/libxml/dict.h:43
  Original Name: xmlDictCreateSub/usr/include/libxml2/libxml/dict.h:43

  Return Value: [PointerType size=64]->[Struct size=,fid: f21]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlDictCreateSub(sub: NullablePointer[XmlDict] tag): NullablePointer[XmlDict] =>
    @xmlDictCreateSub(sub)


/*
  Source: /usr/include/libxml2/libxml/dict.h:57
  Original Name: xmlDictExists/usr/include/libxml2/libxml/dict.h:57

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlDictExists(dict: NullablePointer[XmlDict] tag, name: String, len: I32): String val =>
    var pcstring: Pointer[U8] =  @xmlDictExists(dict, name.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/dict.h:47
  Original Name: xmlDictFree/usr/include/libxml2/libxml/dict.h:47

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlDictFree(dict: NullablePointer[XmlDict] tag): None =>
    @xmlDictFree(dict)


/*
  Source: /usr/include/libxml2/libxml/dict.h:41
  Original Name: xmlDictGetUsage/usr/include/libxml2/libxml/dict.h:41

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlDictGetUsage(dict: NullablePointer[XmlDict] tag): U64 =>
    @xmlDictGetUsage(dict)


/*
  Source: /usr/include/libxml2/libxml/dict.h:53
  Original Name: xmlDictLookup/usr/include/libxml2/libxml/dict.h:53

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlDictLookup(dict: NullablePointer[XmlDict] tag, name: String, len: I32): String val =>
    var pcstring: Pointer[U8] =  @xmlDictLookup(dict, name.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/dict.h:65
  Original Name: xmlDictOwns/usr/include/libxml2/libxml/dict.h:65

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlDictOwns(dict: NullablePointer[XmlDict] tag, str: String): I32 =>
    @xmlDictOwns(dict, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/dict.h:61
  Original Name: xmlDictQLookup/usr/include/libxml2/libxml/dict.h:61

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlDictQLookup(dict: NullablePointer[XmlDict] tag, prefix: String, name: String): String val =>
    var pcstring: Pointer[U8] =  @xmlDictQLookup(dict, prefix.cstring(), name.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/dict.h:45
  Original Name: xmlDictReference/usr/include/libxml2/libxml/dict.h:45

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlDictReference(dict: NullablePointer[XmlDict] tag): I32 =>
    @xmlDictReference(dict)


/*
  Source: /usr/include/libxml2/libxml/dict.h:38
  Original Name: xmlDictSetLimit/usr/include/libxml2/libxml/dict.h:38

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlDictSetLimit(dict: NullablePointer[XmlDict] tag, limit: U64): U64 =>
    @xmlDictSetLimit(dict, limit)


/*
  Source: /usr/include/libxml2/libxml/dict.h:68
  Original Name: xmlDictSize/usr/include/libxml2/libxml/dict.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlDictSize(dict: NullablePointer[XmlDict] tag): I32 =>
    @xmlDictSize(dict)


/*
  Source: /usr/include/libxml2/libxml/tree.h:899
  Original Name: xmlDocCopyNode/usr/include/libxml2/libxml/tree.h:899

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDocCopyNode(node: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag, recursive: I32): NullablePointer[XmlNode] =>
    @xmlDocCopyNode(node, doc, recursive)


/*
  Source: /usr/include/libxml2/libxml/tree.h:903
  Original Name: xmlDocCopyNodeList/usr/include/libxml2/libxml/tree.h:903

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlDocCopyNodeList(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlDocCopyNodeList(doc, node)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1191
  Original Name: xmlDocDump/usr/include/libxml2/libxml/tree.h:1191

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDocDump(f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag): I32 =>
    @xmlDocDump(f, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1187
  Original Name: xmlDocFormatDump/usr/include/libxml2/libxml/tree.h:1187

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlDocFormatDump(f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag, format: I32): I32 =>
    @xmlDocFormatDump(f, cur, format)


/*
  Source: /usr/include/libxml2/libxml/tree.h:932
  Original Name: xmlDocGetRootElement/usr/include/libxml2/libxml/tree.h:932

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlDocGetRootElement(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlNode] =>
    @xmlDocGetRootElement(doc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:945
  Original Name: xmlDocSetRootElement/usr/include/libxml2/libxml/tree.h:945

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlDocSetRootElement(doc: NullablePointer[XmlDoc] tag, root: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlDocSetRootElement(doc, root)


/*
  Source: /usr/include/libxml2/libxml/valid.h:262
  Original Name: xmlDumpAttributeDecl/usr/include/libxml2/libxml/valid.h:262

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlDumpAttributeDecl(buf: NullablePointer[XmlBuffer] tag, attr: NullablePointer[XmlAttribute] tag): None =>
    @xmlDumpAttributeDecl(buf, attr)


/*
  Source: /usr/include/libxml2/libxml/valid.h:259
  Original Name: xmlDumpAttributeTable/usr/include/libxml2/libxml/valid.h:259

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlDumpAttributeTable(buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag): None =>
    @xmlDumpAttributeTable(buf, table)


/*
  Source: /usr/include/libxml2/libxml/valid.h:226
  Original Name: xmlDumpElementDecl/usr/include/libxml2/libxml/valid.h:226

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
  fun xmlDumpElementDecl(buf: NullablePointer[XmlBuffer] tag, elem: NullablePointer[XmlElement] tag): None =>
    @xmlDumpElementDecl(buf, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:223
  Original Name: xmlDumpElementTable/usr/include/libxml2/libxml/valid.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlDumpElementTable(buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag): None =>
    @xmlDumpElementTable(buf, table)


/*
  Source: /usr/include/libxml2/libxml/entities.h:135
  Original Name: xmlDumpEntitiesTable/usr/include/libxml2/libxml/entities.h:135

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlDumpEntitiesTable(buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag): None =>
    @xmlDumpEntitiesTable(buf, table)


/*
  Source: /usr/include/libxml2/libxml/entities.h:138
  Original Name: xmlDumpEntityDecl/usr/include/libxml2/libxml/entities.h:138

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
  fun xmlDumpEntityDecl(buf: NullablePointer[XmlBuffer] tag, ent: NullablePointer[XmlEntity] tag): None =>
    @xmlDumpEntityDecl(buf, ent)


/*
  Source: /usr/include/libxml2/libxml/valid.h:167
  Original Name: xmlDumpNotationDecl/usr/include/libxml2/libxml/valid.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=192,fid: f16]
*/
  fun xmlDumpNotationDecl(buf: NullablePointer[XmlBuffer] tag, nota: NullablePointer[XmlNotation] tag): None =>
    @xmlDumpNotationDecl(buf, nota)


/*
  Source: /usr/include/libxml2/libxml/valid.h:170
  Original Name: xmlDumpNotationTable/usr/include/libxml2/libxml/valid.h:170

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlDumpNotationTable(buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag): None =>
    @xmlDumpNotationTable(buf, table)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1194
  Original Name: xmlElemDump/usr/include/libxml2/libxml/tree.h:1194

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlElemDump(f: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag): None =>
    @xmlElemDump(f, doc, cur)


/*
  Source: /usr/include/libxml2/libxml/entities.h:116
  Original Name: xmlEncodeEntities/usr/include/libxml2/libxml/entities.h:116

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlEncodeEntities(doc: NullablePointer[XmlDoc] tag, input: String): String val =>
    var pcstring: Pointer[U8] =  @xmlEncodeEntities(doc, input.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/entities.h:120
  Original Name: xmlEncodeEntitiesReentrant/usr/include/libxml2/libxml/entities.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlEncodeEntitiesReentrant(doc: NullablePointer[XmlDoc] tag, input: String): String =>
    var pcstring: Pointer[U8] =  @xmlEncodeEntitiesReentrant(doc, input.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/entities.h:123
  Original Name: xmlEncodeSpecialChars/usr/include/libxml2/libxml/entities.h:123

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlEncodeSpecialChars(doc: NullablePointer[XmlDoc] tag, input: String): String =>
    var pcstring: Pointer[U8] =  @xmlEncodeSpecialChars(doc, input.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:325
  Original Name: xmlFileClose/usr/include/libxml2/libxml/xmlIO.h:325

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlFileClose(context: Pointer[None] tag): I32 =>
    @xmlFileClose(context)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:317
  Original Name: xmlFileMatch/usr/include/libxml2/libxml/xmlIO.h:317

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlFileMatch(filename: String): I32 =>
    @xmlFileMatch(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:319
  Original Name: xmlFileOpen/usr/include/libxml2/libxml/xmlIO.h:319

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlFileOpen(filename: String): Pointer[None] =>
    @xmlFileOpen(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:321
  Original Name: xmlFileRead/usr/include/libxml2/libxml/xmlIO.h:321

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlFileRead(context: Pointer[None] tag, buffer: String, len: I32): I32 =>
    @xmlFileRead(context, buffer.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:180
  Original Name: xmlFindCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:180

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlFindCharEncodingHandler(name: String): NullablePointer[XmlCharEncodingHandler] =>
    @xmlFindCharEncodingHandler(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1309
  Original Name: xmlFirstElementChild/usr/include/libxml2/libxml/tree.h:1309

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlFirstElementChild(parent: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlFirstElementChild(parent)


/*
  Source: /usr/include/libxml2/libxml/valid.h:256
  Original Name: xmlFreeAttributeTable/usr/include/libxml2/libxml/valid.h:256

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeAttributeTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeAttributeTable(table)


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:46
  Original Name: xmlFreeAutomata/usr/include/libxml2/libxml/xmlautomata.h:46

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
  fun xmlFreeAutomata(am: NullablePointer[XmlAutomata] tag): None =>
    @xmlFreeAutomata(am)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:104
  Original Name: xmlFreeCatalog/usr/include/libxml2/libxml/catalog.h:104

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
  fun xmlFreeCatalog(catal: NullablePointer[XmlCatalog] tag): None =>
    @xmlFreeCatalog(catal)


/*
  Source: /usr/include/libxml2/libxml/tree.h:794
  Original Name: xmlFreeDoc/usr/include/libxml2/libxml/tree.h:794

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlFreeDoc(cur: NullablePointer[XmlDoc] tag): None =>
    @xmlFreeDoc(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:192
  Original Name: xmlFreeDocElementContent/usr/include/libxml2/libxml/valid.h:192

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlFreeDocElementContent(doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlElementContent] tag): None =>
    @xmlFreeDocElementContent(doc, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:776
  Original Name: xmlFreeDtd/usr/include/libxml2/libxml/tree.h:776

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
  fun xmlFreeDtd(cur: NullablePointer[XmlDtd] tag): None =>
    @xmlFreeDtd(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:182
  Original Name: xmlFreeElementContent/usr/include/libxml2/libxml/valid.h:182

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlFreeElementContent(cur: NullablePointer[XmlElementContent] tag): None =>
    @xmlFreeElementContent(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:220
  Original Name: xmlFreeElementTable/usr/include/libxml2/libxml/valid.h:220

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeElementTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeElementTable(table)


/*
  Source: /usr/include/libxml2/libxml/entities.h:132
  Original Name: xmlFreeEntitiesTable/usr/include/libxml2/libxml/entities.h:132

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeEntitiesTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeEntitiesTable(table)


/*
  Source: /usr/include/libxml2/libxml/valid.h:234
  Original Name: xmlFreeEnumeration/usr/include/libxml2/libxml/valid.h:234

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlFreeEnumeration(cur: NullablePointer[XmlEnumeration] tag): None =>
    @xmlFreeEnumeration(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:273
  Original Name: xmlFreeIDTable/usr/include/libxml2/libxml/valid.h:273

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeIDTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeIDTable(table)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:372
  Original Name: xmlFreeInputStream/usr/include/libxml2/libxml/parserInternals.h:372

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlFreeInputStream(input: NullablePointer[XmlParserInput] tag): None =>
    @xmlFreeInputStream(input)


/*
  Source: /usr/include/libxml2/libxml/threads.h:46
  Original Name: xmlFreeMutex/usr/include/libxml2/libxml/threads.h:46

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlFreeMutex(tok: NullablePointer[XmlMutex] tag): None =>
    @xmlFreeMutex(tok)


/*
  Source: /usr/include/libxml2/libxml/tree.h:988
  Original Name: xmlFreeNode/usr/include/libxml2/libxml/tree.h:988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlFreeNode(cur: NullablePointer[XmlNode] tag): None =>
    @xmlFreeNode(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:986
  Original Name: xmlFreeNodeList/usr/include/libxml2/libxml/tree.h:986

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlFreeNodeList(cur: NullablePointer[XmlNode] tag): None =>
    @xmlFreeNodeList(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:164
  Original Name: xmlFreeNotationTable/usr/include/libxml2/libxml/valid.h:164

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeNotationTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeNotationTable(table)


/*
  Source: /usr/include/libxml2/libxml/tree.h:788
  Original Name: xmlFreeNs/usr/include/libxml2/libxml/tree.h:788

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlFreeNs(cur: NullablePointer[XmlNs] tag): None =>
    @xmlFreeNs(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:790
  Original Name: xmlFreeNsList/usr/include/libxml2/libxml/tree.h:790

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlFreeNsList(cur: NullablePointer[XmlNs] tag): None =>
    @xmlFreeNsList(cur)


/*
  Source: /usr/include/libxml2/libxml/parser.h:985
  Original Name: xmlFreeParserCtxt/usr/include/libxml2/libxml/parser.h:985

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlFreeParserCtxt(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlFreeParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:200
  Original Name: xmlFreeParserInputBuffer/usr/include/libxml2/libxml/xmlIO.h:200

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
*/
  fun xmlFreeParserInputBuffer(xmlin: NullablePointer[XmlParserInputBuffer] tag): None =>
    @xmlFreeParserInputBuffer(xmlin)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:47
  Original Name: xmlFreePattern/usr/include/libxml2/libxml/pattern.h:47

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlFreePattern(comp: NullablePointer[XmlPattern] tag): None =>
    @xmlFreePattern(comp)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:50
  Original Name: xmlFreePatternList/usr/include/libxml2/libxml/pattern.h:50

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlFreePatternList(comp: NullablePointer[XmlPattern] tag): None =>
    @xmlFreePatternList(comp)


/*
  Source: /usr/include/libxml2/libxml/tree.h:819
  Original Name: xmlFreeProp/usr/include/libxml2/libxml/tree.h:819

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlFreeProp(cur: NullablePointer[XmlAttr] tag): None =>
    @xmlFreeProp(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:817
  Original Name: xmlFreePropList/usr/include/libxml2/libxml/tree.h:817

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlFreePropList(cur: NullablePointer[XmlAttr] tag): None =>
    @xmlFreePropList(cur)


/*
  Source: /usr/include/libxml2/libxml/threads.h:55
  Original Name: xmlFreeRMutex/usr/include/libxml2/libxml/threads.h:55

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlFreeRMutex(tok: NullablePointer[XmlRMutex] tag): None =>
    @xmlFreeRMutex(tok)


/*
  Source: /usr/include/libxml2/libxml/valid.h:292
  Original Name: xmlFreeRefTable/usr/include/libxml2/libxml/valid.h:292

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlFreeRefTable(table: NullablePointer[XmlHashTable] tag): None =>
    @xmlFreeRefTable(table)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:76
  Original Name: xmlFreeStreamCtxt/usr/include/libxml2/libxml/pattern.h:76

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlFreeStreamCtxt(stream: NullablePointer[XmlStreamCtxt] tag): None =>
    @xmlFreeStreamCtxt(stream)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:118
  Original Name: xmlFreeTextReader/usr/include/libxml2/libxml/xmlreader.h:118

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlFreeTextReader(reader: NullablePointer[XmlTextReader] tag): None =>
    @xmlFreeTextReader(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:45
  Original Name: xmlFreeTextWriter/usr/include/libxml2/libxml/xmlwriter.h:45

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlFreeTextWriter(writer: NullablePointer[XmlTextWriter] tag): None =>
    @xmlFreeTextWriter(writer)


/*
  Source: /usr/include/libxml2/libxml/uri.h:85
  Original Name: xmlFreeURI/usr/include/libxml2/libxml/uri.h:85

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
  fun xmlFreeURI(uri: NullablePointer[XmlURI] tag): None =>
    @xmlFreeURI(uri)


/*
  Source: /usr/include/libxml2/libxml/valid.h:312
  Original Name: xmlFreeValidCtxt/usr/include/libxml2/libxml/valid.h:312

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
*/
  fun xmlFreeValidCtxt(parg0: NullablePointer[XmlValidCtxt] tag): None =>
    @xmlFreeValidCtxt(parg0)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:120
  Original Name: xmlGcMemGet/usr/include/libxml2/libxml/xmlmemory.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlGcMemGet(freeFunc: NullablePointer[Pointer[None]] tag, mallocFunc: NullablePointer[Pointer[None]] tag, mallocAtomicFunc: NullablePointer[Pointer[None]] tag, reallocFunc: NullablePointer[Pointer[None]] tag, strdupFunc: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlGcMemGet(freeFunc, mallocFunc, mallocAtomicFunc, reallocFunc, strdupFunc)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:114
  Original Name: xmlGcMemSetup/usr/include/libxml2/libxml/xmlmemory.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlGcMemSetup(freeFunc: Pointer[None] tag, mallocFunc: Pointer[None] tag, mallocAtomicFunc: Pointer[None] tag, reallocFunc: Pointer[None] tag, strdupFunc: Pointer[None] tag): I32 =>
    @xmlGcMemSetup(freeFunc, mallocFunc, mallocAtomicFunc, reallocFunc, strdupFunc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:711
  Original Name: xmlGetBufferAllocationScheme/usr/include/libxml2/libxml/tree.h:711

  Return Value: [Enumeration size=32,fid: f16]

  Arguments:
*/
  fun xmlGetBufferAllocationScheme(): I32 =>
    @xmlGetBufferAllocationScheme()


/*
  Source: /usr/include/libxml2/libxml/encoding.h:178
  Original Name: xmlGetCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:178

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
  fun xmlGetCharEncodingHandler(enc: I32): NullablePointer[XmlCharEncodingHandler] =>
    @xmlGetCharEncodingHandler(enc)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:201
  Original Name: xmlGetCharEncodingName/usr/include/libxml2/libxml/encoding.h:201

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
  fun xmlGetCharEncodingName(enc: I32): String val =>
    var pcstring: Pointer[U8] =  @xmlGetCharEncodingName(enc)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1262
  Original Name: xmlGetCompressMode/usr/include/libxml2/libxml/tree.h:1262

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlGetCompressMode(): I32 =>
    @xmlGetCompressMode()


/*
  Source: /usr/include/libxml2/libxml/tree.h:1257
  Original Name: xmlGetDocCompressMode/usr/include/libxml2/libxml/tree.h:1257

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlGetDocCompressMode(doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlGetDocCompressMode(doc)


/*
  Source: /usr/include/libxml2/libxml/entities.h:106
  Original Name: xmlGetDocEntity/usr/include/libxml2/libxml/entities.h:106

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDocEntity(doc: NullablePointer[XmlDoc] tag, name: String): NullablePointer[XmlEntity] =>
    @xmlGetDocEntity(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:390
  Original Name: xmlGetDtdAttrDesc/usr/include/libxml2/libxml/valid.h:390

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdAttrDesc(dtd: NullablePointer[XmlDtd] tag, elem: String, name: String): NullablePointer[XmlAttribute] =>
    @xmlGetDtdAttrDesc(dtd, elem.cstring(), name.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:406
  Original Name: xmlGetDtdElementDesc/usr/include/libxml2/libxml/valid.h:406

  Return Value: [PointerType size=64]->[Struct size=896,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdElementDesc(dtd: NullablePointer[XmlDtd] tag, name: String): NullablePointer[XmlElement] =>
    @xmlGetDtdElementDesc(dtd, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/entities.h:109
  Original Name: xmlGetDtdEntity/usr/include/libxml2/libxml/entities.h:109

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdEntity(doc: NullablePointer[XmlDoc] tag, name: String): NullablePointer[XmlEntity] =>
    @xmlGetDtdEntity(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:399
  Original Name: xmlGetDtdNotationDesc/usr/include/libxml2/libxml/valid.h:399

  Return Value: [PointerType size=64]->[Struct size=192,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdNotationDesc(dtd: NullablePointer[XmlDtd] tag, name: String): NullablePointer[XmlNotation] =>
    @xmlGetDtdNotationDesc(dtd, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:394
  Original Name: xmlGetDtdQAttrDesc/usr/include/libxml2/libxml/valid.h:394

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdQAttrDesc(dtd: NullablePointer[XmlDtd] tag, elem: String, name: String, prefix: String): NullablePointer[XmlAttribute] =>
    @xmlGetDtdQAttrDesc(dtd, elem.cstring(), name.cstring(), prefix.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:402
  Original Name: xmlGetDtdQElementDesc/usr/include/libxml2/libxml/valid.h:402

  Return Value: [PointerType size=64]->[Struct size=896,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetDtdQElementDesc(dtd: NullablePointer[XmlDtd] tag, name: String, prefix: String): NullablePointer[XmlElement] =>
    @xmlGetDtdQElementDesc(dtd, name.cstring(), prefix.cstring())


/*
  Source: /usr/include/libxml2/libxml/encoding.h:195
  Original Name: xmlGetEncodingAlias/usr/include/libxml2/libxml/encoding.h:195

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlGetEncodingAlias(alias: String): String val =>
    var pcstring: Pointer[U8] =  @xmlGetEncodingAlias(alias.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parser.h:1070
  Original Name: xmlGetExternalEntityLoader/usr/include/libxml2/libxml/parser.h:1070

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
*/
  fun xmlGetExternalEntityLoader(): Pointer[None] =>
    @xmlGetExternalEntityLoader()


/*
  Source: /usr/include/libxml2/libxml/parser.h:1003
  Original Name: xmlGetFeature/usr/include/libxml2/libxml/parser.h:1003

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlGetFeature(ctxt: NullablePointer[XmlParserCtxt] tag, name: String, result: Pointer[None] tag): I32 =>
    @xmlGetFeature(ctxt, name.cstring(), result)


/*
  Source: /usr/include/libxml2/libxml/threads.h:73
  Original Name: xmlGetGlobalState/usr/include/libxml2/libxml/threads.h:73

  Return Value: [PointerType size=64]->[Struct size=7744,fid: f64]

  Arguments:
*/
  fun xmlGetGlobalState(): NullablePointer[XmlGlobalState] =>
    @xmlGetGlobalState()


/*
  Source: /usr/include/libxml2/libxml/valid.h:275
  Original Name: xmlGetID/usr/include/libxml2/libxml/valid.h:275

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetID(doc: NullablePointer[XmlDoc] tag, iD: String): NullablePointer[XmlAttr] =>
    @xmlGetID(doc, iD.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:774
  Original Name: xmlGetIntSubset/usr/include/libxml2/libxml/tree.h:774

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlGetIntSubset(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlDtd] =>
    @xmlGetIntSubset(doc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:934
  Original Name: xmlGetLastChild/usr/include/libxml2/libxml/tree.h:934

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlGetLastChild(parent: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlGetLastChild(parent)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:900
  Original Name: xmlGetLastError/usr/include/libxml2/libxml/xmlerror.h:900

  Return Value: [PointerType size=64]->[Struct size=704,fid: f25]

  Arguments:
*/
  fun xmlGetLastError(): NullablePointer[XmlError] =>
    @xmlGetLastError()


/*
  Source: /usr/include/libxml2/libxml/tree.h:926
  Original Name: xmlGetLineNo/usr/include/libxml2/libxml/tree.h:926

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlGetLineNo(node: NullablePointer[XmlNode] tag): I64 =>
    @xmlGetLineNo(node)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1038
  Original Name: xmlGetNoNsProp/usr/include/libxml2/libxml/tree.h:1038

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetNoNsProp(node: NullablePointer[XmlNode] tag, name: String): String =>
    var pcstring: Pointer[U8] =  @xmlGetNoNsProp(node, name.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:929
  Original Name: xmlGetNodePath/usr/include/libxml2/libxml/tree.h:929

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlGetNodePath(node: NullablePointer[XmlNode] tag): String =>
    var pcstring: Pointer[U8] =  @xmlGetNodePath(node)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1009
  Original Name: xmlGetNsList/usr/include/libxml2/libxml/tree.h:1009

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlGetNsList(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag): Pointer[NullablePointer[XmlNs]] =>
    @xmlGetNsList(doc, node)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1051
  Original Name: xmlGetNsProp/usr/include/libxml2/libxml/tree.h:1051

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetNsProp(node: NullablePointer[XmlNode] tag, name: String, nameSpace: String): String =>
    var pcstring: Pointer[U8] =  @xmlGetNsProp(node, name.cstring(), nameSpace.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/entities.h:112
  Original Name: xmlGetParameterEntity/usr/include/libxml2/libxml/entities.h:112

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetParameterEntity(doc: NullablePointer[XmlDoc] tag, name: String): NullablePointer[XmlEntity] =>
    @xmlGetParameterEntity(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/entities.h:104
  Original Name: xmlGetPredefinedEntity/usr/include/libxml2/libxml/entities.h:104

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetPredefinedEntity(name: String): NullablePointer[XmlEntity] =>
    @xmlGetPredefinedEntity(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1041
  Original Name: xmlGetProp/usr/include/libxml2/libxml/tree.h:1041

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetProp(node: NullablePointer[XmlNode] tag, name: String): String =>
    var pcstring: Pointer[U8] =  @xmlGetProp(node, name.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/valid.h:301
  Original Name: xmlGetRefs/usr/include/libxml2/libxml/valid.h:301

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlGetRefs(doc: NullablePointer[XmlDoc] tag, iD: String): NullablePointer[XmlList] =>
    @xmlGetRefs(doc, iD.cstring())


/*
  Source: /usr/include/libxml2/libxml/threads.h:67
  Original Name: xmlGetThreadId/usr/include/libxml2/libxml/threads.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlGetThreadId(): I32 =>
    @xmlGetThreadId()


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:109
  Original Name: xmlGetUTF8Char/usr/include/libxml2/libxml/xmlstring.h:109

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun xmlGetUTF8Char(utf: String, len: Pointer[I32] tag): I32 =>
    @xmlGetUTF8Char(utf.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:627
  Original Name: xmlHandleEntity/usr/include/libxml2/libxml/parserInternals.h:627

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
  fun xmlHandleEntity(ctxt: NullablePointer[XmlParserCtxt] tag, entity: NullablePointer[XmlEntity] tag): None =>
    @xmlHandleEntity(ctxt, entity)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1238
  Original Name: xmlHasFeature/usr/include/libxml2/libxml/parser.h:1238

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [Enumeration size=32,fid: f17]
*/
  fun xmlHasFeature(feature: I32): I32 =>
    @xmlHasFeature(feature)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1047
  Original Name: xmlHasNsProp/usr/include/libxml2/libxml/tree.h:1047

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHasNsProp(node: NullablePointer[XmlNode] tag, name: String, nameSpace: String): NullablePointer[XmlAttr] =>
    @xmlHasNsProp(node, name.cstring(), nameSpace.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1044
  Original Name: xmlHasProp/usr/include/libxml2/libxml/tree.h:1044

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHasProp(node: NullablePointer[XmlNode] tag, name: String): NullablePointer[XmlAttr] =>
    @xmlHasProp(node, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:122
  Original Name: xmlHashAddEntry/usr/include/libxml2/libxml/hash.h:122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashAddEntry(table: NullablePointer[XmlHashTable] tag, name: String, userdata: Pointer[None] tag): I32 =>
    @xmlHashAddEntry(table, name.cstring(), userdata)


/*
  Source: /usr/include/libxml2/libxml/hash.h:131
  Original Name: xmlHashAddEntry2/usr/include/libxml2/libxml/hash.h:131

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashAddEntry2(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, userdata: Pointer[None] tag): I32 =>
    @xmlHashAddEntry2(table, name.cstring(), name2.cstring(), userdata)


/*
  Source: /usr/include/libxml2/libxml/hash.h:142
  Original Name: xmlHashAddEntry3/usr/include/libxml2/libxml/hash.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashAddEntry3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String, userdata: Pointer[None] tag): I32 =>
    @xmlHashAddEntry3(table, name.cstring(), name2.cstring(), name3.cstring(), userdata)


/*
  Source: /usr/include/libxml2/libxml/hash.h:207
  Original Name: xmlHashCopy/usr/include/libxml2/libxml/hash.h:207

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashCopy(table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag): NullablePointer[XmlHashTable] =>
    @xmlHashCopy(table, f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:107
  Original Name: xmlHashCreate/usr/include/libxml2/libxml/hash.h:107

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlHashCreate(size: I32): NullablePointer[XmlHashTable] =>
    @xmlHashCreate(size)


/*
  Source: /usr/include/libxml2/libxml/hash.h:109
  Original Name: xmlHashCreateDict/usr/include/libxml2/libxml/hash.h:109

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=,fid: f21]
*/
  fun xmlHashCreateDict(size: I32, dict: NullablePointer[XmlDict] tag): NullablePointer[XmlHashTable] =>
    @xmlHashCreateDict(size, dict)


/*
  Source: /usr/include/libxml2/libxml/hash.h:115
  Original Name: xmlHashDefaultDeallocator/usr/include/libxml2/libxml/hash.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashDefaultDeallocator(entry: Pointer[None] tag, name: String): None =>
    @xmlHashDefaultDeallocator(entry, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:112
  Original Name: xmlHashFree/usr/include/libxml2/libxml/hash.h:112

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashFree(table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag): None =>
    @xmlHashFree(table, f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:173
  Original Name: xmlHashLookup/usr/include/libxml2/libxml/hash.h:173

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashLookup(table: NullablePointer[XmlHashTable] tag, name: String): Pointer[None] =>
    @xmlHashLookup(table, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:176
  Original Name: xmlHashLookup2/usr/include/libxml2/libxml/hash.h:176

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashLookup2(table: NullablePointer[XmlHashTable] tag, name: String, name2: String): Pointer[None] =>
    @xmlHashLookup2(table, name.cstring(), name2.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:180
  Original Name: xmlHashLookup3/usr/include/libxml2/libxml/hash.h:180

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashLookup3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String): Pointer[None] =>
    @xmlHashLookup3(table, name.cstring(), name2.cstring(), name3.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:185
  Original Name: xmlHashQLookup/usr/include/libxml2/libxml/hash.h:185

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashQLookup(table: NullablePointer[XmlHashTable] tag, name: String, prefix: String): Pointer[None] =>
    @xmlHashQLookup(table, name.cstring(), prefix.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:189
  Original Name: xmlHashQLookup2/usr/include/libxml2/libxml/hash.h:189

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashQLookup2(table: NullablePointer[XmlHashTable] tag, name: String, prefix: String, name2: String, prefix2: String): Pointer[None] =>
    @xmlHashQLookup2(table, name.cstring(), prefix.cstring(), name2.cstring(), prefix2.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:195
  Original Name: xmlHashQLookup3/usr/include/libxml2/libxml/hash.h:195

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlHashQLookup3(table: NullablePointer[XmlHashTable] tag, name: String, prefix: String, name2: String, prefix2: String, name3: String, prefix3: String): Pointer[None] =>
    @xmlHashQLookup3(table, name.cstring(), prefix.cstring(), name2.cstring(), prefix2.cstring(), name3.cstring(), prefix3.cstring())


/*
  Source: /usr/include/libxml2/libxml/hash.h:159
  Original Name: xmlHashRemoveEntry/usr/include/libxml2/libxml/hash.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashRemoveEntry(table: NullablePointer[XmlHashTable] tag, name: String, f: Pointer[None] tag): I32 =>
    @xmlHashRemoveEntry(table, name.cstring(), f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:162
  Original Name: xmlHashRemoveEntry2/usr/include/libxml2/libxml/hash.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashRemoveEntry2(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, f: Pointer[None] tag): I32 =>
    @xmlHashRemoveEntry2(table, name.cstring(), name2.cstring(), f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:165
  Original Name: xmlHashRemoveEntry3/usr/include/libxml2/libxml/hash.h:165

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashRemoveEntry3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String, f: Pointer[None] tag): I32 =>
    @xmlHashRemoveEntry3(table, name.cstring(), name2.cstring(), name3.cstring(), f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:212
  Original Name: xmlHashScan/usr/include/libxml2/libxml/hash.h:212

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashScan(table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag, data: Pointer[None] tag): None =>
    @xmlHashScan(table, f, data)


/*
  Source: /usr/include/libxml2/libxml/hash.h:216
  Original Name: xmlHashScan3/usr/include/libxml2/libxml/hash.h:216

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashScan3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String, f: Pointer[None] tag, data: Pointer[None] tag): None =>
    @xmlHashScan3(table, name.cstring(), name2.cstring(), name3.cstring(), f, data)


/*
  Source: /usr/include/libxml2/libxml/hash.h:223
  Original Name: xmlHashScanFull/usr/include/libxml2/libxml/hash.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashScanFull(table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag, data: Pointer[None] tag): None =>
    @xmlHashScanFull(table, f, data)


/*
  Source: /usr/include/libxml2/libxml/hash.h:227
  Original Name: xmlHashScanFull3/usr/include/libxml2/libxml/hash.h:227

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlHashScanFull3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String, f: Pointer[None] tag, data: Pointer[None] tag): None =>
    @xmlHashScanFull3(table, name.cstring(), name2.cstring(), name3.cstring(), f, data)


/*
  Source: /usr/include/libxml2/libxml/hash.h:210
  Original Name: xmlHashSize/usr/include/libxml2/libxml/hash.h:210

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
  fun xmlHashSize(table: NullablePointer[XmlHashTable] tag): I32 =>
    @xmlHashSize(table)


/*
  Source: /usr/include/libxml2/libxml/hash.h:126
  Original Name: xmlHashUpdateEntry/usr/include/libxml2/libxml/hash.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashUpdateEntry(table: NullablePointer[XmlHashTable] tag, name: String, userdata: Pointer[None] tag, f: Pointer[None] tag): I32 =>
    @xmlHashUpdateEntry(table, name.cstring(), userdata, f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:136
  Original Name: xmlHashUpdateEntry2/usr/include/libxml2/libxml/hash.h:136

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashUpdateEntry2(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, userdata: Pointer[None] tag, f: Pointer[None] tag): I32 =>
    @xmlHashUpdateEntry2(table, name.cstring(), name2.cstring(), userdata, f)


/*
  Source: /usr/include/libxml2/libxml/hash.h:148
  Original Name: xmlHashUpdateEntry3/usr/include/libxml2/libxml/hash.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlHashUpdateEntry3(table: NullablePointer[XmlHashTable] tag, name: String, name2: String, name3: String, userdata: Pointer[None] tag, f: Pointer[None] tag): I32 =>
    @xmlHashUpdateEntry3(table, name.cstring(), name2.cstring(), name3.cstring(), userdata, f)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:361
  Original Name: xmlIOFTPClose/usr/include/libxml2/libxml/xmlIO.h:361

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlIOFTPClose(context: Pointer[None] tag): I32 =>
    @xmlIOFTPClose(context)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:353
  Original Name: xmlIOFTPMatch/usr/include/libxml2/libxml/xmlIO.h:353

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlIOFTPMatch(filename: String): I32 =>
    @xmlIOFTPMatch(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:355
  Original Name: xmlIOFTPOpen/usr/include/libxml2/libxml/xmlIO.h:355

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlIOFTPOpen(filename: String): Pointer[None] =>
    @xmlIOFTPOpen(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:357
  Original Name: xmlIOFTPRead/usr/include/libxml2/libxml/xmlIO.h:357

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlIOFTPRead(context: Pointer[None] tag, buffer: String, len: I32): I32 =>
    @xmlIOFTPRead(context, buffer.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:345
  Original Name: xmlIOHTTPClose/usr/include/libxml2/libxml/xmlIO.h:345

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlIOHTTPClose(context: Pointer[None] tag): I32 =>
    @xmlIOHTTPClose(context)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:332
  Original Name: xmlIOHTTPMatch/usr/include/libxml2/libxml/xmlIO.h:332

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlIOHTTPMatch(filename: String): I32 =>
    @xmlIOHTTPMatch(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:334
  Original Name: xmlIOHTTPOpen/usr/include/libxml2/libxml/xmlIO.h:334

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlIOHTTPOpen(filename: String): Pointer[None] =>
    @xmlIOHTTPOpen(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:337
  Original Name: xmlIOHTTPOpenW/usr/include/libxml2/libxml/xmlIO.h:337

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlIOHTTPOpenW(posturi: String, compression: I32): Pointer[None] =>
    @xmlIOHTTPOpenW(posturi.cstring(), compression)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:341
  Original Name: xmlIOHTTPRead/usr/include/libxml2/libxml/xmlIO.h:341

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlIOHTTPRead(context: Pointer[None] tag, buffer: String, len: I32): I32 =>
    @xmlIOHTTPRead(context, buffer.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/parser.h:932
  Original Name: xmlIOParseDTD/usr/include/libxml2/libxml/parser.h:932

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [Enumeration size=32,fid: f42]
*/
  fun xmlIOParseDTD(sax: NullablePointer[XmlSAXHandler] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32): NullablePointer[XmlDtd] =>
    @xmlIOParseDTD(sax, input, enc)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:172
  Original Name: xmlInitCharEncodingHandlers/usr/include/libxml2/libxml/encoding.h:172

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitCharEncodingHandlers(): None =>
    @xmlInitCharEncodingHandlers()


/*
  Source: /usr/include/libxml2/libxml/globals.h:27
  Original Name: xmlInitGlobals/usr/include/libxml2/libxml/globals.h:27

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitGlobals(): None =>
    @xmlInitGlobals()


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:130
  Original Name: xmlInitMemory/usr/include/libxml2/libxml/xmlmemory.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlInitMemory(): I32 =>
    @xmlInitMemory()


/*
  Source: /usr/include/libxml2/libxml/parser.h:1053
  Original Name: xmlInitNodeInfoSeq/usr/include/libxml2/libxml/parser.h:1053

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
*/
  fun xmlInitNodeInfoSeq(seq: NullablePointer[XmlParserNodeInfoSeq] tag): None =>
    @xmlInitNodeInfoSeq(seq)


/*
  Source: /usr/include/libxml2/libxml/parser.h:825
  Original Name: xmlInitParser/usr/include/libxml2/libxml/parser.h:825

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitParser(): None =>
    @xmlInitParser()


/*
  Source: /usr/include/libxml2/libxml/parser.h:981
  Original Name: xmlInitParserCtxt/usr/include/libxml2/libxml/parser.h:981

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlInitParserCtxt(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlInitParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/threads.h:61
  Original Name: xmlInitThreads/usr/include/libxml2/libxml/threads.h:61

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitThreads(): None =>
    @xmlInitThreads()


/*
  Source: /usr/include/libxml2/libxml/catalog.h:112
  Original Name: xmlInitializeCatalog/usr/include/libxml2/libxml/catalog.h:112

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitializeCatalog(): None =>
    @xmlInitializeCatalog()


/*
  Source: /usr/include/libxml2/libxml/dict.h:30
  Original Name: xmlInitializeDict/usr/include/libxml2/libxml/dict.h:30

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlInitializeDict(): I32 =>
    @xmlInitializeDict()


/*
  Source: /usr/include/libxml2/libxml/globals.h:177
  Original Name: xmlInitializeGlobalState/usr/include/libxml2/libxml/globals.h:177

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=7744,fid: f64]
*/
  fun xmlInitializeGlobalState(gs: NullablePointer[XmlGlobalState] tag): None =>
    @xmlInitializeGlobalState(gs)


/*
  Source: /usr/include/libxml2/libxml/entities.h:79
  Original Name: xmlInitializePredefinedEntities/usr/include/libxml2/libxml/entities.h:79

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlInitializePredefinedEntities(): None =>
    @xmlInitializePredefinedEntities()


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:211
  Original Name: xmlIsBaseChar/usr/include/libxml2/libxml/chvalid.h:211

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsBaseChar(ch: U32): I32 =>
    @xmlIsBaseChar(ch)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:213
  Original Name: xmlIsBlank/usr/include/libxml2/libxml/chvalid.h:213

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsBlank(ch: U32): I32 =>
    @xmlIsBlank(ch)


/*
  Source: /usr/include/libxml2/libxml/tree.h:938
  Original Name: xmlIsBlankNode/usr/include/libxml2/libxml/tree.h:938

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlIsBlankNode(node: NullablePointer[XmlNode] tag): I32 =>
    @xmlIsBlankNode(node)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:215
  Original Name: xmlIsChar/usr/include/libxml2/libxml/chvalid.h:215

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsChar(ch: U32): I32 =>
    @xmlIsChar(ch)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:217
  Original Name: xmlIsCombining/usr/include/libxml2/libxml/chvalid.h:217

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsCombining(ch: U32): I32 =>
    @xmlIsCombining(ch)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:219
  Original Name: xmlIsDigit/usr/include/libxml2/libxml/chvalid.h:219

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsDigit(ch: U32): I32 =>
    @xmlIsDigit(ch)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:221
  Original Name: xmlIsExtender/usr/include/libxml2/libxml/chvalid.h:221

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsExtender(ch: U32): I32 =>
    @xmlIsExtender(ch)


/*
  Source: /usr/include/libxml2/libxml/valid.h:278
  Original Name: xmlIsID/usr/include/libxml2/libxml/valid.h:278

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlIsID(doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag): I32 =>
    @xmlIsID(doc, elem, attr)


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:223
  Original Name: xmlIsIdeographic/usr/include/libxml2/libxml/chvalid.h:223

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsIdeographic(ch: U32): I32 =>
    @xmlIsIdeographic(ch)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:319
  Original Name: xmlIsLetter/usr/include/libxml2/libxml/parserInternals.h:319

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlIsLetter(c: I32): I32 =>
    @xmlIsLetter(c)


/*
  Source: /usr/include/libxml2/libxml/threads.h:69
  Original Name: xmlIsMainThread/usr/include/libxml2/libxml/threads.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlIsMainThread(): I32 =>
    @xmlIsMainThread()


/*
  Source: /usr/include/libxml2/libxml/valid.h:387
  Original Name: xmlIsMixedElement/usr/include/libxml2/libxml/valid.h:387

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlIsMixedElement(doc: NullablePointer[XmlDoc] tag, name: String): I32 =>
    @xmlIsMixedElement(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/chvalid.h:225
  Original Name: xmlIsPubidChar/usr/include/libxml2/libxml/chvalid.h:225

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
  fun xmlIsPubidChar(ch: U32): I32 =>
    @xmlIsPubidChar(ch)


/*
  Source: /usr/include/libxml2/libxml/valid.h:294
  Original Name: xmlIsRef/usr/include/libxml2/libxml/valid.h:294

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlIsRef(doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag): I32 =>
    @xmlIsRef(doc, elem, attr)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1250
  Original Name: xmlIsXHTML/usr/include/libxml2/libxml/tree.h:1250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlIsXHTML(systemID: String, publicID: String): I32 =>
    @xmlIsXHTML(systemID.cstring(), publicID.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:854
  Original Name: xmlKeepBlanksDefault/usr/include/libxml2/libxml/parser.h:854

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlKeepBlanksDefault(xmlval: I32): I32 =>
    @xmlKeepBlanksDefault(xmlval)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1311
  Original Name: xmlLastElementChild/usr/include/libxml2/libxml/tree.h:1311

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlLastElementChild(parent: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlLastElementChild(parent)


/*
  Source: /usr/include/libxml2/libxml/parser.h:860
  Original Name: xmlLineNumbersDefault/usr/include/libxml2/libxml/parser.h:860

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlLineNumbersDefault(xmlval: I32): I32 =>
    @xmlLineNumbersDefault(xmlval)


/*
  Source: /usr/include/libxml2/libxml/list.h:128
  Original Name: xmlLinkGetData/usr/include/libxml2/libxml/list.h:128

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlLinkGetData(lk: NullablePointer[XmlLink] tag): Pointer[None] =>
    @xmlLinkGetData(lk)


/*
  Source: /usr/include/libxml2/libxml/list.h:72
  Original Name: xmlListAppend/usr/include/libxml2/libxml/list.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListAppend(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListAppend(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:84
  Original Name: xmlListClear/usr/include/libxml2/libxml/list.h:84

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListClear(l: NullablePointer[XmlList] tag): None =>
    @xmlListClear(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:124
  Original Name: xmlListCopy/usr/include/libxml2/libxml/list.h:124

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListCopy(cur: NullablePointer[XmlList] tag, old: NullablePointer[XmlList] tag): I32 =>
    @xmlListCopy(cur, old)


/*
  Source: /usr/include/libxml2/libxml/list.h:56
  Original Name: xmlListCreate/usr/include/libxml2/libxml/list.h:56

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlListCreate(deallocator: Pointer[None] tag, compare: Pointer[None] tag): NullablePointer[XmlList] =>
    @xmlListCreate(deallocator, compare)


/*
  Source: /usr/include/libxml2/libxml/list.h:59
  Original Name: xmlListDelete/usr/include/libxml2/libxml/list.h:59

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListDelete(l: NullablePointer[XmlList] tag): None =>
    @xmlListDelete(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:122
  Original Name: xmlListDup/usr/include/libxml2/libxml/list.h:122

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListDup(old: NullablePointer[XmlList] tag): NullablePointer[XmlList] =>
    @xmlListDup(old)


/*
  Source: /usr/include/libxml2/libxml/list.h:86
  Original Name: xmlListEmpty/usr/include/libxml2/libxml/list.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListEmpty(l: NullablePointer[XmlList] tag): I32 =>
    @xmlListEmpty(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:90
  Original Name: xmlListEnd/usr/include/libxml2/libxml/list.h:90

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListEnd(l: NullablePointer[XmlList] tag): NullablePointer[XmlLink] =>
    @xmlListEnd(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:88
  Original Name: xmlListFront/usr/include/libxml2/libxml/list.h:88

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListFront(l: NullablePointer[XmlList] tag): NullablePointer[XmlLink] =>
    @xmlListFront(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:69
  Original Name: xmlListInsert/usr/include/libxml2/libxml/list.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListInsert(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListInsert(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:119
  Original Name: xmlListMerge/usr/include/libxml2/libxml/list.h:119

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListMerge(l1: NullablePointer[XmlList] tag, l2: NullablePointer[XmlList] tag): None =>
    @xmlListMerge(l1, l2)


/*
  Source: /usr/include/libxml2/libxml/list.h:97
  Original Name: xmlListPopBack/usr/include/libxml2/libxml/list.h:97

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListPopBack(l: NullablePointer[XmlList] tag): None =>
    @xmlListPopBack(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:95
  Original Name: xmlListPopFront/usr/include/libxml2/libxml/list.h:95

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListPopFront(l: NullablePointer[XmlList] tag): None =>
    @xmlListPopFront(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:102
  Original Name: xmlListPushBack/usr/include/libxml2/libxml/list.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListPushBack(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListPushBack(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:99
  Original Name: xmlListPushFront/usr/include/libxml2/libxml/list.h:99

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListPushFront(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListPushFront(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:81
  Original Name: xmlListRemoveAll/usr/include/libxml2/libxml/list.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListRemoveAll(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListRemoveAll(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:75
  Original Name: xmlListRemoveFirst/usr/include/libxml2/libxml/list.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListRemoveFirst(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListRemoveFirst(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:78
  Original Name: xmlListRemoveLast/usr/include/libxml2/libxml/list.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListRemoveLast(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): I32 =>
    @xmlListRemoveLast(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:107
  Original Name: xmlListReverse/usr/include/libxml2/libxml/list.h:107

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListReverse(l: NullablePointer[XmlList] tag): None =>
    @xmlListReverse(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:66
  Original Name: xmlListReverseSearch/usr/include/libxml2/libxml/list.h:66

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListReverseSearch(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): Pointer[None] =>
    @xmlListReverseSearch(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:115
  Original Name: xmlListReverseWalk/usr/include/libxml2/libxml/list.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListReverseWalk(l: NullablePointer[XmlList] tag, walker: Pointer[None] tag, user: Pointer[None] tag): None =>
    @xmlListReverseWalk(l, walker, user)


/*
  Source: /usr/include/libxml2/libxml/list.h:63
  Original Name: xmlListSearch/usr/include/libxml2/libxml/list.h:63

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListSearch(l: NullablePointer[XmlList] tag, data: Pointer[None] tag): Pointer[None] =>
    @xmlListSearch(l, data)


/*
  Source: /usr/include/libxml2/libxml/list.h:92
  Original Name: xmlListSize/usr/include/libxml2/libxml/list.h:92

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListSize(l: NullablePointer[XmlList] tag): I32 =>
    @xmlListSize(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:109
  Original Name: xmlListSort/usr/include/libxml2/libxml/list.h:109

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
  fun xmlListSort(l: NullablePointer[XmlList] tag): None =>
    @xmlListSort(l)


/*
  Source: /usr/include/libxml2/libxml/list.h:111
  Original Name: xmlListWalk/usr/include/libxml2/libxml/list.h:111

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlListWalk(l: NullablePointer[XmlList] tag, walker: Pointer[None] tag, user: Pointer[None] tag): None =>
    @xmlListWalk(l, walker, user)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:72
  Original Name: xmlLoadACatalog/usr/include/libxml2/libxml/catalog.h:72

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlLoadACatalog(filename: String): NullablePointer[XmlCatalog] =>
    @xmlLoadACatalog(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:114
  Original Name: xmlLoadCatalog/usr/include/libxml2/libxml/catalog.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlLoadCatalog(filename: String): I32 =>
    @xmlLoadCatalog(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/catalog.h:116
  Original Name: xmlLoadCatalogs/usr/include/libxml2/libxml/catalog.h:116

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlLoadCatalogs(paths: String): None =>
    @xmlLoadCatalogs(paths.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:1072
  Original Name: xmlLoadExternalEntity/usr/include/libxml2/libxml/parser.h:1072

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlLoadExternalEntity(uRL: String, iD: String, ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlParserInput] =>
    @xmlLoadExternalEntity(uRL.cstring(), iD.cstring(), ctxt)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:74
  Original Name: xmlLoadSGMLSuperCatalog/usr/include/libxml2/libxml/catalog.h:74

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlLoadSGMLSuperCatalog(filename: String): NullablePointer[XmlCatalog] =>
    @xmlLoadSGMLSuperCatalog(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/threads.h:63
  Original Name: xmlLockLibrary/usr/include/libxml2/libxml/threads.h:63

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlLockLibrary(): None =>
    @xmlLockLibrary()


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:83
  Original Name: xmlLsCountNode/usr/include/libxml2/libxml/debugXML.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlLsCountNode(node: NullablePointer[XmlNode] tag): I32 =>
    @xmlLsCountNode(node)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:81
  Original Name: xmlLsOneNode/usr/include/libxml2/libxml/debugXML.h:81

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlLsOneNode(output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag): None =>
    @xmlLsOneNode(output, node)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:165
  Original Name: xmlMallocAtomicLoc/usr/include/libxml2/libxml/xmlmemory.h:165

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlMallocAtomicLoc(size: U64, file: String, line: I32): Pointer[None] =>
    @xmlMallocAtomicLoc(size, file.cstring(), line)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:161
  Original Name: xmlMallocLoc/usr/include/libxml2/libxml/xmlmemory.h:161

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlMallocLoc(size: U64, file: String, line: I32): Pointer[None] =>
    @xmlMallocLoc(size, file.cstring(), line)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:143
  Original Name: xmlMemBlocks/usr/include/libxml2/libxml/xmlmemory.h:143

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlMemBlocks(): I32 =>
    @xmlMemBlocks()


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:145
  Original Name: xmlMemDisplay/usr/include/libxml2/libxml/xmlmemory.h:145

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
  fun xmlMemDisplay(fp: NullablePointer[IOFILE] tag): None =>
    @xmlMemDisplay(fp)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:147
  Original Name: xmlMemDisplayLast/usr/include/libxml2/libxml/xmlmemory.h:147

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [FundamentalType(long int) size=64]
*/
  fun xmlMemDisplayLast(fp: NullablePointer[IOFILE] tag, nbBytes: I64): None =>
    @xmlMemDisplayLast(fp, nbBytes)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:157
  Original Name: xmlMemFree/usr/include/libxml2/libxml/xmlmemory.h:157

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlMemFree(ptr: Pointer[None] tag): None =>
    @xmlMemFree(ptr)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:153
  Original Name: xmlMemMalloc/usr/include/libxml2/libxml/xmlmemory.h:153

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlMemMalloc(size: U64): Pointer[None] =>
    @xmlMemMalloc(size)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:155
  Original Name: xmlMemRealloc/usr/include/libxml2/libxml/xmlmemory.h:155

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
  fun xmlMemRealloc(ptr: Pointer[None] tag, size: U64): Pointer[None] =>
    @xmlMemRealloc(ptr, size)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:104
  Original Name: xmlMemSetup/usr/include/libxml2/libxml/xmlmemory.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlMemSetup(freeFunc: Pointer[None] tag, mallocFunc: Pointer[None] tag, reallocFunc: Pointer[None] tag, strdupFunc: Pointer[None] tag): I32 =>
    @xmlMemSetup(freeFunc, mallocFunc, reallocFunc, strdupFunc)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:149
  Original Name: xmlMemShow/usr/include/libxml2/libxml/xmlmemory.h:149

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [FundamentalType(int) size=32]
*/
  fun xmlMemShow(fp: NullablePointer[IOFILE] tag, nr: I32): None =>
    @xmlMemShow(fp, nr)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:167
  Original Name: xmlMemStrdupLoc/usr/include/libxml2/libxml/xmlmemory.h:167

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlMemStrdupLoc(str: String, file: String, line: I32): String =>
    var pcstring: Pointer[U8] =  @xmlMemStrdupLoc(str.cstring(), file.cstring(), line)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:141
  Original Name: xmlMemUsed/usr/include/libxml2/libxml/xmlmemory.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlMemUsed(): I32 =>
    @xmlMemUsed()


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:151
  Original Name: xmlMemoryDump/usr/include/libxml2/libxml/xmlmemory.h:151

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlMemoryDump(): None =>
    @xmlMemoryDump()


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:159
  Original Name: xmlMemoryStrdup/usr/include/libxml2/libxml/xmlmemory.h:159

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlMemoryStrdup(str: String): String =>
    var pcstring: Pointer[U8] =  @xmlMemoryStrdup(str.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:47
  Original Name: xmlModuleClose/usr/include/libxml2/libxml/xmlmodule.h:47

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
*/
  fun xmlModuleClose(module: NullablePointer[XmlModule] tag): I32 =>
    @xmlModuleClose(module)


/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:49
  Original Name: xmlModuleFree/usr/include/libxml2/libxml/xmlmodule.h:49

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
*/
  fun xmlModuleFree(module: NullablePointer[XmlModule] tag): I32 =>
    @xmlModuleFree(module)


/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:40
  Original Name: xmlModuleOpen/usr/include/libxml2/libxml/xmlmodule.h:40

  Return Value: [PointerType size=64]->[Struct size=,fid: f81]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlModuleOpen(filename: String, options: I32): NullablePointer[XmlModule] =>
    @xmlModuleOpen(filename.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:43
  Original Name: xmlModuleSymbol/usr/include/libxml2/libxml/xmlmodule.h:43

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlModuleSymbol(module: NullablePointer[XmlModule] tag, name: String, result: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlModuleSymbol(module, name.cstring(), result)


/*
  Source: /usr/include/libxml2/libxml/threads.h:42
  Original Name: xmlMutexLock/usr/include/libxml2/libxml/threads.h:42

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlMutexLock(tok: NullablePointer[XmlMutex] tag): None =>
    @xmlMutexLock(tok)


/*
  Source: /usr/include/libxml2/libxml/threads.h:44
  Original Name: xmlMutexUnlock/usr/include/libxml2/libxml/threads.h:44

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlMutexUnlock(tok: NullablePointer[XmlMutex] tag): None =>
    @xmlMutexUnlock(tok)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:611
  Original Name: xmlNamespaceParseNCName/usr/include/libxml2/libxml/parserInternals.h:611

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlNamespaceParseNCName(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlNamespaceParseNCName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:607
  Original Name: xmlNamespaceParseNSDef/usr/include/libxml2/libxml/parserInternals.h:607

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlNamespaceParseNSDef(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlNamespaceParseNSDef(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:125
  Original Name: xmlNanoFTPCheckResponse/usr/include/libxml2/libxml/nanoftp.h:125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPCheckResponse(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPCheckResponse(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:84
  Original Name: xmlNanoFTPCleanup/usr/include/libxml2/libxml/nanoftp.h:84

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlNanoFTPCleanup(): None =>
    @xmlNanoFTPCleanup()


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:104
  Original Name: xmlNanoFTPClose/usr/include/libxml2/libxml/nanoftp.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPClose(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPClose(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:140
  Original Name: xmlNanoFTPCloseConnection/usr/include/libxml2/libxml/nanoftp.h:140

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPCloseConnection(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPCloseConnection(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:102
  Original Name: xmlNanoFTPConnect/usr/include/libxml2/libxml/nanoftp.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPConnect(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPConnect(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:94
  Original Name: xmlNanoFTPConnectTo/usr/include/libxml2/libxml/nanoftp.h:94

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNanoFTPConnectTo(server: String, port: I32): Pointer[None] =>
    @xmlNanoFTPConnectTo(server.cstring(), port)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:131
  Original Name: xmlNanoFTPCwd/usr/include/libxml2/libxml/nanoftp.h:131

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPCwd(ctx: Pointer[None] tag, directory: String): I32 =>
    @xmlNanoFTPCwd(ctx, directory.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:134
  Original Name: xmlNanoFTPDele/usr/include/libxml2/libxml/nanoftp.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPDele(ctx: Pointer[None] tag, file: String): I32 =>
    @xmlNanoFTPDele(ctx, file.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:92
  Original Name: xmlNanoFTPFreeCtxt/usr/include/libxml2/libxml/nanoftp.h:92

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPFreeCtxt(ctx: Pointer[None] tag): None =>
    @xmlNanoFTPFreeCtxt(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:150
  Original Name: xmlNanoFTPGet/usr/include/libxml2/libxml/nanoftp.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPGet(ctx: Pointer[None] tag, callback: Pointer[None] tag, userData: Pointer[None] tag, filename: String): I32 =>
    @xmlNanoFTPGet(ctx, callback, userData, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:138
  Original Name: xmlNanoFTPGetConnection/usr/include/libxml2/libxml/nanoftp.h:138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPGetConnection(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPGetConnection(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:123
  Original Name: xmlNanoFTPGetResponse/usr/include/libxml2/libxml/nanoftp.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPGetResponse(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPGetResponse(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:147
  Original Name: xmlNanoFTPGetSocket/usr/include/libxml2/libxml/nanoftp.h:147

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPGetSocket(ctx: Pointer[None] tag, filename: String): I32 =>
    @xmlNanoFTPGetSocket(ctx, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:82
  Original Name: xmlNanoFTPInit/usr/include/libxml2/libxml/nanoftp.h:82

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlNanoFTPInit(): None =>
    @xmlNanoFTPInit()


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:142
  Original Name: xmlNanoFTPList/usr/include/libxml2/libxml/nanoftp.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPList(ctx: Pointer[None] tag, callback: Pointer[None] tag, userData: Pointer[None] tag, filename: String): I32 =>
    @xmlNanoFTPList(ctx, callback, userData, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:90
  Original Name: xmlNanoFTPNewCtxt/usr/include/libxml2/libxml/nanoftp.h:90

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPNewCtxt(uRL: String): Pointer[None] =>
    @xmlNanoFTPNewCtxt(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:100
  Original Name: xmlNanoFTPOpen/usr/include/libxml2/libxml/nanoftp.h:100

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPOpen(uRL: String): Pointer[None] =>
    @xmlNanoFTPOpen(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:110
  Original Name: xmlNanoFTPProxy/usr/include/libxml2/libxml/nanoftp.h:110

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNanoFTPProxy(host: String, port: I32, user: String, passwd: String, xmltype: I32): None =>
    @xmlNanoFTPProxy(host.cstring(), port, user.cstring(), passwd.cstring(), xmltype)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:106
  Original Name: xmlNanoFTPQuit/usr/include/libxml2/libxml/nanoftp.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoFTPQuit(ctx: Pointer[None] tag): I32 =>
    @xmlNanoFTPQuit(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:155
  Original Name: xmlNanoFTPRead/usr/include/libxml2/libxml/nanoftp.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
*/
  fun xmlNanoFTPRead(ctx: Pointer[None] tag, dest: Pointer[None] tag, len: I32): I32 =>
    @xmlNanoFTPRead(ctx, dest, len)


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:108
  Original Name: xmlNanoFTPScanProxy/usr/include/libxml2/libxml/nanoftp.h:108

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPScanProxy(uRL: String): None =>
    @xmlNanoFTPScanProxy(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:116
  Original Name: xmlNanoFTPUpdateURL/usr/include/libxml2/libxml/nanoftp.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoFTPUpdateURL(ctx: Pointer[None] tag, uRL: String): I32 =>
    @xmlNanoFTPUpdateURL(ctx, uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:56
  Original Name: xmlNanoHTTPAuthHeader/usr/include/libxml2/libxml/nanohttp.h:56

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPAuthHeader(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlNanoHTTPAuthHeader(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:24
  Original Name: xmlNanoHTTPCleanup/usr/include/libxml2/libxml/nanohttp.h:24

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlNanoHTTPCleanup(): None =>
    @xmlNanoHTTPCleanup()


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:75
  Original Name: xmlNanoHTTPClose/usr/include/libxml2/libxml/nanohttp.h:75

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPClose(ctx: Pointer[None] tag): None =>
    @xmlNanoHTTPClose(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:60
  Original Name: xmlNanoHTTPContentLength/usr/include/libxml2/libxml/nanohttp.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPContentLength(ctx: Pointer[None] tag): I32 =>
    @xmlNanoHTTPContentLength(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:62
  Original Name: xmlNanoHTTPEncoding/usr/include/libxml2/libxml/nanohttp.h:62

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPEncoding(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlNanoHTTPEncoding(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:22
  Original Name: xmlNanoHTTPInit/usr/include/libxml2/libxml/nanohttp.h:22

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlNanoHTTPInit(): None =>
    @xmlNanoHTTPInit()


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:64
  Original Name: xmlNanoHTTPMimeType/usr/include/libxml2/libxml/nanohttp.h:64

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPMimeType(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlNanoHTTPMimeType(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:66
  Original Name: xmlNanoHTTPRead/usr/include/libxml2/libxml/nanohttp.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
*/
  fun xmlNanoHTTPRead(ctx: Pointer[None] tag, dest: Pointer[None] tag, len: I32): I32 =>
    @xmlNanoHTTPRead(ctx, dest, len)


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:58
  Original Name: xmlNanoHTTPRedir/usr/include/libxml2/libxml/nanohttp.h:58

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPRedir(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlNanoHTTPRedir(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:54
  Original Name: xmlNanoHTTPReturnCode/usr/include/libxml2/libxml/nanohttp.h:54

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlNanoHTTPReturnCode(ctx: Pointer[None] tag): I32 =>
    @xmlNanoHTTPReturnCode(ctx)


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:71
  Original Name: xmlNanoHTTPSave/usr/include/libxml2/libxml/nanohttp.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoHTTPSave(ctxt: Pointer[None] tag, filename: String): I32 =>
    @xmlNanoHTTPSave(ctxt, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:26
  Original Name: xmlNanoHTTPScanProxy/usr/include/libxml2/libxml/nanohttp.h:26

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNanoHTTPScanProxy(uRL: String): None =>
    @xmlNanoHTTPScanProxy(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:44
  Original Name: xmlNewAutomata/usr/include/libxml2/libxml/xmlautomata.h:44

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
*/
  fun xmlNewAutomata(): NullablePointer[XmlAutomata] =>
    @xmlNewAutomata()


/*
  Source: /usr/include/libxml2/libxml/tree.h:886
  Original Name: xmlNewCDataBlock/usr/include/libxml2/libxml/tree.h:886

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNewCDataBlock(doc: NullablePointer[XmlDoc] tag, content: String, len: I32): NullablePointer[XmlNode] =>
    @xmlNewCDataBlock(doc, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:70
  Original Name: xmlNewCatalog/usr/include/libxml2/libxml/catalog.h:70

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlNewCatalog(sgml: I32): NullablePointer[XmlCatalog] =>
    @xmlNewCatalog(sgml)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:182
  Original Name: xmlNewCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:182

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlNewCharEncodingHandler(name: String, input: Pointer[None] tag, output: Pointer[None] tag): NullablePointer[XmlCharEncodingHandler] =>
    @xmlNewCharEncodingHandler(name.cstring(), input, output)


/*
  Source: /usr/include/libxml2/libxml/tree.h:890
  Original Name: xmlNewCharRef/usr/include/libxml2/libxml/tree.h:890

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewCharRef(doc: NullablePointer[XmlDoc] tag, name: String): NullablePointer[XmlNode] =>
    @xmlNewCharRef(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:856
  Original Name: xmlNewChild/usr/include/libxml2/libxml/tree.h:856

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewChild(parent: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewChild(parent, ns, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:884
  Original Name: xmlNewComment/usr/include/libxml2/libxml/tree.h:884

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewComment(content: String): NullablePointer[XmlNode] =>
    @xmlNewComment(content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:792
  Original Name: xmlNewDoc/usr/include/libxml2/libxml/tree.h:792

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDoc(version: String): NullablePointer[XmlDoc] =>
    @xmlNewDoc(version.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:881
  Original Name: xmlNewDocComment/usr/include/libxml2/libxml/tree.h:881

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocComment(doc: NullablePointer[XmlDoc] tag, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocComment(doc, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:185
  Original Name: xmlNewDocElementContent/usr/include/libxml2/libxml/valid.h:185

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
*/
  fun xmlNewDocElementContent(doc: NullablePointer[XmlDoc] tag, name: String, xmltype: I32): NullablePointer[XmlElementContent] =>
    @xmlNewDocElementContent(doc, name.cstring(), xmltype)


/*
  Source: /usr/include/libxml2/libxml/tree.h:919
  Original Name: xmlNewDocFragment/usr/include/libxml2/libxml/tree.h:919

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlNewDocFragment(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlNode] =>
    @xmlNewDocFragment(doc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:839
  Original Name: xmlNewDocNode/usr/include/libxml2/libxml/tree.h:839

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocNode(doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocNode(doc, ns, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:844
  Original Name: xmlNewDocNodeEatName/usr/include/libxml2/libxml/tree.h:844

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocNodeEatName(doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocNodeEatName(doc, ns, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:867
  Original Name: xmlNewDocPI/usr/include/libxml2/libxml/tree.h:867

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocPI(doc: NullablePointer[XmlDoc] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocPI(doc, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:796
  Original Name: xmlNewDocProp/usr/include/libxml2/libxml/tree.h:796

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocProp(doc: NullablePointer[XmlDoc] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlNewDocProp(doc, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:914
  Original Name: xmlNewDocRawNode/usr/include/libxml2/libxml/tree.h:914

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocRawNode(doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocRawNode(doc, ns, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:862
  Original Name: xmlNewDocText/usr/include/libxml2/libxml/tree.h:862

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDocText(doc: NullablePointer[XmlDoc] tag, content: String): NullablePointer[XmlNode] =>
    @xmlNewDocText(doc, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:874
  Original Name: xmlNewDocTextLen/usr/include/libxml2/libxml/tree.h:874

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNewDocTextLen(doc: NullablePointer[XmlDoc] tag, content: String, len: I32): NullablePointer[XmlNode] =>
    @xmlNewDocTextLen(doc, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:769
  Original Name: xmlNewDtd/usr/include/libxml2/libxml/tree.h:769

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewDtd(doc: NullablePointer[XmlDoc] tag, name: String, externalID: String, systemID: String): NullablePointer[XmlDtd] =>
    @xmlNewDtd(doc, name.cstring(), externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:177
  Original Name: xmlNewElementContent/usr/include/libxml2/libxml/valid.h:177

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
*/
  fun xmlNewElementContent(name: String, xmltype: I32): NullablePointer[XmlElementContent] =>
    @xmlNewElementContent(name.cstring(), xmltype)


/*
  Source: /usr/include/libxml2/libxml/entities.h:83
  Original Name: xmlNewEntity/usr/include/libxml2/libxml/entities.h:83

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewEntity(doc: NullablePointer[XmlDoc] tag, name: String, xmltype: I32, externalID: String, systemID: String, content: String): NullablePointer[XmlEntity] =>
    @xmlNewEntity(doc, name.cstring(), xmltype, externalID.cstring(), systemID.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:364
  Original Name: xmlNewEntityInputStream/usr/include/libxml2/libxml/parserInternals.h:364

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
  fun xmlNewEntityInputStream(ctxt: NullablePointer[XmlParserCtxt] tag, entity: NullablePointer[XmlEntity] tag): NullablePointer[XmlParserInput] =>
    @xmlNewEntityInputStream(ctxt, entity)


/*
  Source: /usr/include/libxml2/libxml/tree.h:779
  Original Name: xmlNewGlobalNs/usr/include/libxml2/libxml/tree.h:779

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewGlobalNs(doc: NullablePointer[XmlDoc] tag, href: String, prefix: String): NullablePointer[XmlNs] =>
    @xmlNewGlobalNs(doc, href.cstring(), prefix.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:1042
  Original Name: xmlNewIOInputStream/usr/include/libxml2/libxml/parser.h:1042

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [Enumeration size=32,fid: f42]
*/
  fun xmlNewIOInputStream(ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32): NullablePointer[XmlParserInput] =>
    @xmlNewIOInputStream(ctxt, input, enc)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:374
  Original Name: xmlNewInputFromFile/usr/include/libxml2/libxml/parserInternals.h:374

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNewInputFromFile(ctxt: NullablePointer[XmlParserCtxt] tag, filename: String): NullablePointer[XmlParserInput] =>
    @xmlNewInputFromFile(ctxt, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:377
  Original Name: xmlNewInputStream/usr/include/libxml2/libxml/parserInternals.h:377

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlNewInputStream(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlParserInput] =>
    @xmlNewInputStream(ctxt)


/*
  Source: /usr/include/libxml2/libxml/threads.h:40
  Original Name: xmlNewMutex/usr/include/libxml2/libxml/threads.h:40

  Return Value: [PointerType size=64]->[Struct size=,fid: f23]

  Arguments:
*/
  fun xmlNewMutex(): NullablePointer[XmlMutex] =>
    @xmlNewMutex()


/*
  Source: /usr/include/libxml2/libxml/tree.h:849
  Original Name: xmlNewNode/usr/include/libxml2/libxml/tree.h:849

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewNode(ns: NullablePointer[XmlNs] tag, name: String): NullablePointer[XmlNode] =>
    @xmlNewNode(ns, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:852
  Original Name: xmlNewNodeEatName/usr/include/libxml2/libxml/tree.h:852

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewNodeEatName(ns: NullablePointer[XmlNs] tag, name: String): NullablePointer[XmlNode] =>
    @xmlNewNodeEatName(ns, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:784
  Original Name: xmlNewNs/usr/include/libxml2/libxml/tree.h:784

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewNs(node: NullablePointer[XmlNode] tag, href: String, prefix: String): NullablePointer[XmlNs] =>
    @xmlNewNs(node, href.cstring(), prefix.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:807
  Original Name: xmlNewNsProp/usr/include/libxml2/libxml/tree.h:807

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewNsProp(node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlNewNsProp(node, ns, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:812
  Original Name: xmlNewNsPropEatName/usr/include/libxml2/libxml/tree.h:812

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewNsPropEatName(node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlNewNsPropEatName(node, ns, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:871
  Original Name: xmlNewPI/usr/include/libxml2/libxml/tree.h:871

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewPI(name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewPI(name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:979
  Original Name: xmlNewParserCtxt/usr/include/libxml2/libxml/parser.h:979

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
*/
  fun xmlNewParserCtxt(): NullablePointer[XmlParserCtxt] =>
    @xmlNewParserCtxt()


/*
  Source: /usr/include/libxml2/libxml/tree.h:802
  Original Name: xmlNewProp/usr/include/libxml2/libxml/tree.h:802

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewProp(node: NullablePointer[XmlNode] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlNewProp(node, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/threads.h:49
  Original Name: xmlNewRMutex/usr/include/libxml2/libxml/threads.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f23]

  Arguments:
*/
  fun xmlNewRMutex(): NullablePointer[XmlRMutex] =>
    @xmlNewRMutex()


/*
  Source: /usr/include/libxml2/libxml/tree.h:893
  Original Name: xmlNewReference/usr/include/libxml2/libxml/tree.h:893

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewReference(doc: NullablePointer[XmlDoc] tag, name: String): NullablePointer[XmlNode] =>
    @xmlNewReference(doc, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:361
  Original Name: xmlNewStringInputStream/usr/include/libxml2/libxml/parserInternals.h:361

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewStringInputStream(ctxt: NullablePointer[XmlParserCtxt] tag, buffer: String): NullablePointer[XmlParserInput] =>
    @xmlNewStringInputStream(ctxt, buffer.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:865
  Original Name: xmlNewText/usr/include/libxml2/libxml/tree.h:865

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewText(content: String): NullablePointer[XmlNode] =>
    @xmlNewText(content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:909
  Original Name: xmlNewTextChild/usr/include/libxml2/libxml/tree.h:909

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNewTextChild(parent: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String, content: String): NullablePointer[XmlNode] =>
    @xmlNewTextChild(parent, ns, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:878
  Original Name: xmlNewTextLen/usr/include/libxml2/libxml/tree.h:878

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextLen(content: String, len: I32): NullablePointer[XmlNode] =>
    @xmlNewTextLen(content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:112
  Original Name: xmlNewTextReader/usr/include/libxml2/libxml/xmlreader.h:112

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNewTextReader(input: NullablePointer[XmlParserInputBuffer] tag, uRI: String): NullablePointer[XmlTextReader] =>
    @xmlNewTextReader(input, uRI.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:115
  Original Name: xmlNewTextReaderFilename/usr/include/libxml2/libxml/xmlreader.h:115

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNewTextReaderFilename(uRI: String): NullablePointer[XmlTextReader] =>
    @xmlNewTextReaderFilename(uRI.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:33
  Original Name: xmlNewTextWriter/usr/include/libxml2/libxml/xmlwriter.h:33

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
  fun xmlNewTextWriter(out: NullablePointer[XmlOutputBuffer] tag): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriter(out)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:41
  Original Name: xmlNewTextWriterDoc/usr/include/libxml2/libxml/xmlwriter.h:41

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextWriterDoc(doc: Pointer[NullablePointer[XmlDoc]] tag, compression: I32): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriterDoc(doc, compression)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:35
  Original Name: xmlNewTextWriterFilename/usr/include/libxml2/libxml/xmlwriter.h:35

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextWriterFilename(uri: String, compression: I32): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriterFilename(uri.cstring(), compression)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:37
  Original Name: xmlNewTextWriterMemory/usr/include/libxml2/libxml/xmlwriter.h:37

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextWriterMemory(buf: NullablePointer[XmlBuffer] tag, compression: I32): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriterMemory(buf, compression)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:39
  Original Name: xmlNewTextWriterPushParser/usr/include/libxml2/libxml/xmlwriter.h:39

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextWriterPushParser(ctxt: NullablePointer[XmlParserCtxt] tag, compression: I32): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriterPushParser(ctxt, compression)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:43
  Original Name: xmlNewTextWriterTree/usr/include/libxml2/libxml/xmlwriter.h:43

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNewTextWriterTree(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, compression: I32): NullablePointer[XmlTextWriter] =>
    @xmlNewTextWriterTree(doc, node, compression)


/*
  Source: /usr/include/libxml2/libxml/valid.h:310
  Original Name: xmlNewValidCtxt/usr/include/libxml2/libxml/valid.h:310

  Return Value: [PointerType size=64]->[Struct size=896,fid: f28]

  Arguments:
*/
  fun xmlNewValidCtxt(): NullablePointer[XmlValidCtxt] =>
    @xmlNewValidCtxt()


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:570
  Original Name: xmlNextChar/usr/include/libxml2/libxml/parserInternals.h:570

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlNextChar(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlNextChar(ctxt)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1307
  Original Name: xmlNextElementSibling/usr/include/libxml2/libxml/tree.h:1307

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNextElementSibling(node: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlNextElementSibling(node)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:300
  Original Name: xmlNoNetExternalEntityLoader/usr/include/libxml2/libxml/xmlIO.h:300

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlNoNetExternalEntityLoader(uRL: String, iD: String, ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlParserInput] =>
    @xmlNoNetExternalEntityLoader(uRL.cstring(), iD.cstring(), ctxt)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1081
  Original Name: xmlNodeAddContent/usr/include/libxml2/libxml/tree.h:1081

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNodeAddContent(cur: NullablePointer[XmlNode] tag, content: String): None =>
    @xmlNodeAddContent(cur, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1084
  Original Name: xmlNodeAddContentLen/usr/include/libxml2/libxml/tree.h:1084

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeAddContentLen(cur: NullablePointer[XmlNode] tag, content: String, len: I32): None =>
    @xmlNodeAddContentLen(cur, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1091
  Original Name: xmlNodeBufGetContent/usr/include/libxml2/libxml/tree.h:1091

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeBufGetContent(buffer: NullablePointer[XmlBuffer] tag, cur: NullablePointer[XmlNode] tag): I32 =>
    @xmlNodeBufGetContent(buffer, cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1211
  Original Name: xmlNodeDump/usr/include/libxml2/libxml/tree.h:1211

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeDump(buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32): I32 =>
    @xmlNodeDump(buf, doc, cur, level, format)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1227
  Original Name: xmlNodeDumpOutput/usr/include/libxml2/libxml/tree.h:1227

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNodeDumpOutput(buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32, encoding: String): None =>
    @xmlNodeDumpOutput(buf, doc, cur, level, format, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1110
  Original Name: xmlNodeGetBase/usr/include/libxml2/libxml/tree.h:1110

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeGetBase(doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag): String =>
    var pcstring: Pointer[U8] =  @xmlNodeGetBase(doc, cur)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1088
  Original Name: xmlNodeGetContent/usr/include/libxml2/libxml/tree.h:1088

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeGetContent(cur: NullablePointer[XmlNode] tag): String =>
    var pcstring: Pointer[U8] =  @xmlNodeGetContent(cur)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1098
  Original Name: xmlNodeGetLang/usr/include/libxml2/libxml/tree.h:1098

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeGetLang(cur: NullablePointer[XmlNode] tag): String =>
    var pcstring: Pointer[U8] =  @xmlNodeGetLang(cur)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1100
  Original Name: xmlNodeGetSpacePreserve/usr/include/libxml2/libxml/tree.h:1100

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeGetSpacePreserve(cur: NullablePointer[XmlNode] tag): I32 =>
    @xmlNodeGetSpacePreserve(cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:936
  Original Name: xmlNodeIsText/usr/include/libxml2/libxml/tree.h:936

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlNodeIsText(node: NullablePointer[XmlNode] tag): I32 =>
    @xmlNodeIsText(node)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1067
  Original Name: xmlNodeListGetRawString/usr/include/libxml2/libxml/tree.h:1067

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeListGetRawString(doc: NullablePointer[XmlDoc] tag, list: NullablePointer[XmlNode] tag, inLine: I32): String =>
    var pcstring: Pointer[U8] =  @xmlNodeListGetRawString(doc, list, inLine)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1062
  Original Name: xmlNodeListGetString/usr/include/libxml2/libxml/tree.h:1062

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeListGetString(doc: NullablePointer[XmlDoc] tag, list: NullablePointer[XmlNode] tag, inLine: I32): String =>
    var pcstring: Pointer[U8] =  @xmlNodeListGetString(doc, list, inLine)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1114
  Original Name: xmlNodeSetBase/usr/include/libxml2/libxml/tree.h:1114

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNodeSetBase(cur: NullablePointer[XmlNode] tag, uri: String): None =>
    @xmlNodeSetBase(cur, uri.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1072
  Original Name: xmlNodeSetContent/usr/include/libxml2/libxml/tree.h:1072

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNodeSetContent(cur: NullablePointer[XmlNode] tag, content: String): None =>
    @xmlNodeSetContent(cur, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1076
  Original Name: xmlNodeSetContentLen/usr/include/libxml2/libxml/tree.h:1076

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeSetContentLen(cur: NullablePointer[XmlNode] tag, content: String, len: I32): None =>
    @xmlNodeSetContentLen(cur, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1103
  Original Name: xmlNodeSetLang/usr/include/libxml2/libxml/tree.h:1103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNodeSetLang(cur: NullablePointer[XmlNode] tag, lang: String): None =>
    @xmlNodeSetLang(cur, lang.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:950
  Original Name: xmlNodeSetName/usr/include/libxml2/libxml/tree.h:950

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNodeSetName(cur: NullablePointer[XmlNode] tag, name: String): None =>
    @xmlNodeSetName(cur, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1106
  Original Name: xmlNodeSetSpacePreserve/usr/include/libxml2/libxml/tree.h:1106

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlNodeSetSpacePreserve(cur: NullablePointer[XmlNode] tag, xmlval: I32): None =>
    @xmlNodeSetSpacePreserve(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/uri.h:81
  Original Name: xmlNormalizeURIPath/usr/include/libxml2/libxml/uri.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlNormalizeURIPath(path: String): I32 =>
    @xmlNormalizeURIPath(path.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:309
  Original Name: xmlNormalizeWindowsPath/usr/include/libxml2/libxml/xmlIO.h:309

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlNormalizeWindowsPath(path: String): String =>
    var pcstring: Pointer[U8] =  @xmlNormalizeWindowsPath(path.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:271
  Original Name: xmlOutputBufferClose/usr/include/libxml2/libxml/xmlIO.h:271

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
  fun xmlOutputBufferClose(out: NullablePointer[XmlOutputBuffer] tag): I32 =>
    @xmlOutputBufferClose(out)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:237
  Original Name: xmlOutputBufferCreateBuffer/usr/include/libxml2/libxml/xmlIO.h:237

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlOutputBufferCreateBuffer(buffer: NullablePointer[XmlBuffer] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag): NullablePointer[XmlOutputBuffer] =>
    @xmlOutputBufferCreateBuffer(buffer, encoder)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:241
  Original Name: xmlOutputBufferCreateFd/usr/include/libxml2/libxml/xmlIO.h:241

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlOutputBufferCreateFd(fd: I32, encoder: NullablePointer[XmlCharEncodingHandler] tag): NullablePointer[XmlOutputBuffer] =>
    @xmlOutputBufferCreateFd(fd, encoder)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:233
  Original Name: xmlOutputBufferCreateFile/usr/include/libxml2/libxml/xmlIO.h:233

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlOutputBufferCreateFile(file: NullablePointer[IOFILE] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag): NullablePointer[XmlOutputBuffer] =>
    @xmlOutputBufferCreateFile(file, encoder)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:228
  Original Name: xmlOutputBufferCreateFilename/usr/include/libxml2/libxml/xmlIO.h:228

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=448,fid: f42]
    [FundamentalType(int) size=32]
*/
  fun xmlOutputBufferCreateFilename(uRI: String, encoder: NullablePointer[XmlCharEncodingHandler] tag, compression: I32): NullablePointer[XmlOutputBuffer] =>
    @xmlOutputBufferCreateFilename(uRI.cstring(), encoder, compression)


/*
  Source: /usr/include/libxml2/libxml/globals.h:63
  Original Name: xmlOutputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:63

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlOutputBufferCreateFilenameDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlOutputBufferCreateFilenameDefault(func)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:245
  Original Name: xmlOutputBufferCreateIO/usr/include/libxml2/libxml/xmlIO.h:245

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlOutputBufferCreateIO(iowrite: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag): NullablePointer[XmlOutputBuffer] =>
    @xmlOutputBufferCreateIO(iowrite, ioclose, ioctx, encoder)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:269
  Original Name: xmlOutputBufferFlush/usr/include/libxml2/libxml/xmlIO.h:269

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
  fun xmlOutputBufferFlush(out: NullablePointer[XmlOutputBuffer] tag): I32 =>
    @xmlOutputBufferFlush(out)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:252
  Original Name: xmlOutputBufferGetContent/usr/include/libxml2/libxml/xmlIO.h:252

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
  fun xmlOutputBufferGetContent(out: NullablePointer[XmlOutputBuffer] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlOutputBufferGetContent(out)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:254
  Original Name: xmlOutputBufferGetSize/usr/include/libxml2/libxml/xmlIO.h:254

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
  fun xmlOutputBufferGetSize(out: NullablePointer[XmlOutputBuffer] tag): U64 =>
    @xmlOutputBufferGetSize(out)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:257
  Original Name: xmlOutputBufferWrite/usr/include/libxml2/libxml/xmlIO.h:257

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlOutputBufferWrite(out: NullablePointer[XmlOutputBuffer] tag, len: I32, buf: String): I32 =>
    @xmlOutputBufferWrite(out, len, buf.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:264
  Original Name: xmlOutputBufferWriteEscape/usr/include/libxml2/libxml/xmlIO.h:264

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlOutputBufferWriteEscape(out: NullablePointer[XmlOutputBuffer] tag, str: String, escaping: Pointer[None] tag): I32 =>
    @xmlOutputBufferWriteEscape(out, str.cstring(), escaping)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:261
  Original Name: xmlOutputBufferWriteString/usr/include/libxml2/libxml/xmlIO.h:261

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlOutputBufferWriteString(out: NullablePointer[XmlOutputBuffer] tag, str: String): I32 =>
    @xmlOutputBufferWriteString(out, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:398
  Original Name: xmlParseAttValue/usr/include/libxml2/libxml/parserInternals.h:398

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseAttValue(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseAttValue(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:434
  Original Name: xmlParseAttributeListDecl/usr/include/libxml2/libxml/parserInternals.h:434

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseAttributeListDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseAttributeListDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:431
  Original Name: xmlParseAttributeType/usr/include/libxml2/libxml/parserInternals.h:431

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlParseAttributeType(ctxt: NullablePointer[XmlParserCtxt] tag, tree: Pointer[NullablePointer[XmlEnumeration]] tag): I32 =>
    @xmlParseAttributeType(ctxt, tree)


/*
  Source: /usr/include/libxml2/libxml/parser.h:938
  Original Name: xmlParseBalancedChunkMemory/usr/include/libxml2/libxml/parser.h:938

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParseBalancedChunkMemory(doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, string: String, lst: Pointer[NullablePointer[XmlNode]] tag): I32 =>
    @xmlParseBalancedChunkMemory(doc, sax, userdata, depth, string.cstring(), lst)


/*
  Source: /usr/include/libxml2/libxml/parser.h:953
  Original Name: xmlParseBalancedChunkMemoryRecover/usr/include/libxml2/libxml/parser.h:953

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlParseBalancedChunkMemoryRecover(doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, string: String, lst: Pointer[NullablePointer[XmlNode]] tag, xmlrecover: I32): I32 =>
    @xmlParseBalancedChunkMemoryRecover(doc, sax, userdata, depth, string.cstring(), lst, xmlrecover)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:471
  Original Name: xmlParseCDSect/usr/include/libxml2/libxml/parserInternals.h:471

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseCDSect(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseCDSect(ctxt)


/*
  Source: /usr/include/libxml2/libxml/catalog.h:139
  Original Name: xmlParseCatalogFile/usr/include/libxml2/libxml/catalog.h:139

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseCatalogFile(filename: String): NullablePointer[XmlDoc] =>
    @xmlParseCatalogFile(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:404
  Original Name: xmlParseCharData/usr/include/libxml2/libxml/parserInternals.h:404

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlParseCharData(ctxt: NullablePointer[XmlParserCtxt] tag, cdata: I32): None =>
    @xmlParseCharData(ctxt, cdata)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:199
  Original Name: xmlParseCharEncoding/usr/include/libxml2/libxml/encoding.h:199

  Return Value: [Enumeration size=32,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseCharEncoding(name: String): I32 =>
    @xmlParseCharEncoding(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:452
  Original Name: xmlParseCharRef/usr/include/libxml2/libxml/parserInternals.h:452

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseCharRef(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlParseCharRef(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1023
  Original Name: xmlParseChunk/usr/include/libxml2/libxml/parser.h:1023

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlParseChunk(ctxt: NullablePointer[XmlParserCtxt] tag, chunk: String, size: I32, terminate: I32): I32 =>
    @xmlParseChunk(ctxt, chunk.cstring(), size, terminate)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:411
  Original Name: xmlParseComment/usr/include/libxml2/libxml/parserInternals.h:411

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseComment(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseComment(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:473
  Original Name: xmlParseContent/usr/include/libxml2/libxml/parserInternals.h:473

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseContent(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseContent(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:970
  Original Name: xmlParseCtxtExternalEntity/usr/include/libxml2/libxml/parser.h:970

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParseCtxtExternalEntity(ctx: NullablePointer[XmlParserCtxt] tag, uRL: String, iD: String, lst: Pointer[NullablePointer[XmlNode]] tag): I32 =>
    @xmlParseCtxtExternalEntity(ctx, uRL.cstring(), iD.cstring(), lst)


/*
  Source: /usr/include/libxml2/libxml/parser.h:929
  Original Name: xmlParseDTD/usr/include/libxml2/libxml/parser.h:929

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlParseDTD(externalID: String, systemID: String): NullablePointer[XmlDtd] =>
    @xmlParseDTD(externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:844
  Original Name: xmlParseDoc/usr/include/libxml2/libxml/parser.h:844

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlParseDoc(cur: String): NullablePointer[XmlDoc] =>
    @xmlParseDoc(cur.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:460
  Original Name: xmlParseDocTypeDecl/usr/include/libxml2/libxml/parserInternals.h:460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseDocTypeDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseDocTypeDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:879
  Original Name: xmlParseDocument/usr/include/libxml2/libxml/parser.h:879

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseDocument(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlParseDocument(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:475
  Original Name: xmlParseElement/usr/include/libxml2/libxml/parserInternals.h:475

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseElement(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseElement(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:440
  Original Name: xmlParseElementChildrenContentDecl/usr/include/libxml2/libxml/parserInternals.h:440

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlParseElementChildrenContentDecl(ctxt: NullablePointer[XmlParserCtxt] tag, inputchk: I32): NullablePointer[XmlElementContent] =>
    @xmlParseElementChildrenContentDecl(ctxt, inputchk)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:444
  Original Name: xmlParseElementContentDecl/usr/include/libxml2/libxml/parserInternals.h:444

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlParseElementContentDecl(ctxt: NullablePointer[XmlParserCtxt] tag, name: String, result: Pointer[NullablePointer[XmlElementContent]] tag): I32 =>
    @xmlParseElementContentDecl(ctxt, name.cstring(), result)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:448
  Original Name: xmlParseElementDecl/usr/include/libxml2/libxml/parserInternals.h:448

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseElementDecl(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlParseElementDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:436
  Original Name: xmlParseElementMixedContentDecl/usr/include/libxml2/libxml/parserInternals.h:436

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlParseElementMixedContentDecl(ctxt: NullablePointer[XmlParserCtxt] tag, inputchk: I32): NullablePointer[XmlElementContent] =>
    @xmlParseElementMixedContentDecl(ctxt, inputchk)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:481
  Original Name: xmlParseEncName/usr/include/libxml2/libxml/parserInternals.h:481

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEncName(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseEncName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:483
  Original Name: xmlParseEncodingDecl/usr/include/libxml2/libxml/parserInternals.h:483

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEncodingDecl(ctxt: NullablePointer[XmlParserCtxt] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlParseEncodingDecl(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:468
  Original Name: xmlParseEndTag/usr/include/libxml2/libxml/parserInternals.h:468

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEndTag(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseEndTag(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:920
  Original Name: xmlParseEntity/usr/include/libxml2/libxml/parser.h:920

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseEntity(filename: String): NullablePointer[XmlDoc] =>
    @xmlParseEntity(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:419
  Original Name: xmlParseEntityDecl/usr/include/libxml2/libxml/parserInternals.h:419

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEntityDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseEntityDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:454
  Original Name: xmlParseEntityRef/usr/include/libxml2/libxml/parserInternals.h:454

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEntityRef(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlEntity] =>
    @xmlParseEntityRef(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:428
  Original Name: xmlParseEnumeratedType/usr/include/libxml2/libxml/parserInternals.h:428

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlParseEnumeratedType(ctxt: NullablePointer[XmlParserCtxt] tag, tree: Pointer[NullablePointer[XmlEnumeration]] tag): I32 =>
    @xmlParseEnumeratedType(ctxt, tree)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:426
  Original Name: xmlParseEnumerationType/usr/include/libxml2/libxml/parserInternals.h:426

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseEnumerationType(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlEnumeration] =>
    @xmlParseEnumerationType(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:881
  Original Name: xmlParseExtParsedEnt/usr/include/libxml2/libxml/parser.h:881

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseExtParsedEnt(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlParseExtParsedEnt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:961
  Original Name: xmlParseExternalEntity/usr/include/libxml2/libxml/parser.h:961

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParseExternalEntity(doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, uRL: String, iD: String, lst: Pointer[NullablePointer[XmlNode]] tag): I32 =>
    @xmlParseExternalEntity(doc, sax, userdata, depth, uRL.cstring(), iD.cstring(), lst)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:493
  Original Name: xmlParseExternalSubset/usr/include/libxml2/libxml/parserInternals.h:493

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlParseExternalSubset(ctxt: NullablePointer[XmlParserCtxt] tag, externalID: String, systemID: String): None =>
    @xmlParseExternalSubset(ctxt, externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:846
  Original Name: xmlParseFile/usr/include/libxml2/libxml/parser.h:846

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseFile(filename: String): NullablePointer[XmlDoc] =>
    @xmlParseFile(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:946
  Original Name: xmlParseInNodeContext/usr/include/libxml2/libxml/parser.h:946

  Return Value: [Enumeration size=32,fid: f25]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParseInNodeContext(node: NullablePointer[XmlNode] tag, data: String, datalen: I32, options: I32, lst: Pointer[NullablePointer[XmlNode]] tag): I32 =>
    @xmlParseInNodeContext(node, data.cstring(), datalen, options, lst)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:450
  Original Name: xmlParseMarkupDecl/usr/include/libxml2/libxml/parserInternals.h:450

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseMarkupDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseMarkupDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:848
  Original Name: xmlParseMemory/usr/include/libxml2/libxml/parser.h:848

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlParseMemory(buffer: String, size: I32): NullablePointer[XmlDoc] =>
    @xmlParseMemory(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:491
  Original Name: xmlParseMisc/usr/include/libxml2/libxml/parserInternals.h:491

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseMisc(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseMisc(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:391
  Original Name: xmlParseName/usr/include/libxml2/libxml/parserInternals.h:391

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseName(ctxt: NullablePointer[XmlParserCtxt] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlParseName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:605
  Original Name: xmlParseNamespace/usr/include/libxml2/libxml/parserInternals.h:605

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseNamespace(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseNamespace(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:393
  Original Name: xmlParseNmtoken/usr/include/libxml2/libxml/parserInternals.h:393

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseNmtoken(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseNmtoken(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:417
  Original Name: xmlParseNotationDecl/usr/include/libxml2/libxml/parserInternals.h:417

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseNotationDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseNotationDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:424
  Original Name: xmlParseNotationType/usr/include/libxml2/libxml/parserInternals.h:424

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseNotationType(ctxt: NullablePointer[XmlParserCtxt] tag): NullablePointer[XmlEnumeration] =>
    @xmlParseNotationType(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:458
  Original Name: xmlParsePEReference/usr/include/libxml2/libxml/parserInternals.h:458

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParsePEReference(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParsePEReference(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:415
  Original Name: xmlParsePI/usr/include/libxml2/libxml/parserInternals.h:415

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParsePI(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParsePI(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:413
  Original Name: xmlParsePITarget/usr/include/libxml2/libxml/parserInternals.h:413

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParsePITarget(ctxt: NullablePointer[XmlParserCtxt] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlParsePITarget(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:402
  Original Name: xmlParsePubidLiteral/usr/include/libxml2/libxml/parserInternals.h:402

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParsePubidLiteral(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParsePubidLiteral(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:603
  Original Name: xmlParseQuotedString/usr/include/libxml2/libxml/parserInternals.h:603

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseQuotedString(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseQuotedString(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:456
  Original Name: xmlParseReference/usr/include/libxml2/libxml/parserInternals.h:456

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseReference(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseReference(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:485
  Original Name: xmlParseSDDecl/usr/include/libxml2/libxml/parserInternals.h:485

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseSDDecl(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlParseSDDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:466
  Original Name: xmlParseStartTag/usr/include/libxml2/libxml/parserInternals.h:466

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseStartTag(ctxt: NullablePointer[XmlParserCtxt] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlParseStartTag(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:400
  Original Name: xmlParseSystemLiteral/usr/include/libxml2/libxml/parserInternals.h:400

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseSystemLiteral(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseSystemLiteral(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:489
  Original Name: xmlParseTextDecl/usr/include/libxml2/libxml/parserInternals.h:489

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseTextDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseTextDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/uri.h:61
  Original Name: xmlParseURI/usr/include/libxml2/libxml/uri.h:61

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseURI(str: String): NullablePointer[XmlURI] =>
    @xmlParseURI(str.cstring())


/*
  Source: /usr/include/libxml2/libxml/uri.h:63
  Original Name: xmlParseURIRaw/usr/include/libxml2/libxml/uri.h:63

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlParseURIRaw(str: String, raw: I32): NullablePointer[XmlURI] =>
    @xmlParseURIRaw(str.cstring(), raw)


/*
  Source: /usr/include/libxml2/libxml/uri.h:66
  Original Name: xmlParseURIReference/usr/include/libxml2/libxml/uri.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParseURIReference(uri: NullablePointer[XmlURI] tag, str: String): I32 =>
    @xmlParseURIReference(uri, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:479
  Original Name: xmlParseVersionInfo/usr/include/libxml2/libxml/parserInternals.h:479

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseVersionInfo(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseVersionInfo(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:477
  Original Name: xmlParseVersionNum/usr/include/libxml2/libxml/parserInternals.h:477

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseVersionNum(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlParseVersionNum(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:487
  Original Name: xmlParseXMLDecl/usr/include/libxml2/libxml/parserInternals.h:487

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParseXMLDecl(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParseXMLDecl(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1060
  Original Name: xmlParserAddNodeInfo/usr/include/libxml2/libxml/parser.h:1060

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=320,fid: f17]
*/
  fun xmlParserAddNodeInfo(ctxt: NullablePointer[XmlParserCtxt] tag, info: NullablePointer[XmlParserNodeInfo] tag): None =>
    @xmlParserAddNodeInfo(ctxt, info)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:876
  Original Name: xmlParserError/usr/include/libxml2/libxml/xmlerror.h:876

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlParserError(ctx: Pointer[None] tag, msg: String, ...): None =>
    @xmlParserError(ctx, msg.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/parser.h:1050
  Original Name: xmlParserFindNodeInfo/usr/include/libxml2/libxml/parser.h:1050

  Return Value: [PointerType size=64]->[Struct size=320,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParserFindNodeInfo(ctxt: NullablePointer[XmlParserCtxt] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlParserNodeInfo] =>
    @xmlParserFindNodeInfo(ctxt, node)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1057
  Original Name: xmlParserFindNodeInfoIndex/usr/include/libxml2/libxml/parser.h:1057

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlParserFindNodeInfoIndex(seq: NullablePointer[XmlParserNodeInfoSeq] tag, node: NullablePointer[XmlNode] tag): U64 =>
    @xmlParserFindNodeInfoIndex(seq, node)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:202
  Original Name: xmlParserGetDirectory/usr/include/libxml2/libxml/xmlIO.h:202

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParserGetDirectory(filename: String): String =>
    var pcstring: Pointer[U8] =  @xmlParserGetDirectory(filename.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:557
  Original Name: xmlParserHandlePEReference/usr/include/libxml2/libxml/parserInternals.h:557

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParserHandlePEReference(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParserHandlePEReference(ctxt)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:612
  Original Name: xmlParserHandleReference/usr/include/libxml2/libxml/parserInternals.h:612

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlParserHandleReference(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlParserHandleReference(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:176
  Original Name: xmlParserInputBufferCreateFd/usr/include/libxml2/libxml/xmlIO.h:176

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateFd(fd: I32, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateFd(fd, enc)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:173
  Original Name: xmlParserInputBufferCreateFile/usr/include/libxml2/libxml/xmlIO.h:173

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateFile(file: NullablePointer[IOFILE] tag, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateFile(file, enc)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:170
  Original Name: xmlParserInputBufferCreateFilename/usr/include/libxml2/libxml/xmlIO.h:170

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateFilename(uRI: String, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateFilename(uRI.cstring(), enc)


/*
  Source: /usr/include/libxml2/libxml/globals.h:61
  Original Name: xmlParserInputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:61

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlParserInputBufferCreateFilenameDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlParserInputBufferCreateFilenameDefault(func)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:185
  Original Name: xmlParserInputBufferCreateIO/usr/include/libxml2/libxml/xmlIO.h:185

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateIO(ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, enc)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:179
  Original Name: xmlParserInputBufferCreateMem/usr/include/libxml2/libxml/xmlIO.h:179

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateMem(mem: String, size: I32, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateMem(mem.cstring(), size, enc)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:182
  Original Name: xmlParserInputBufferCreateStatic/usr/include/libxml2/libxml/xmlIO.h:182

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
  fun xmlParserInputBufferCreateStatic(mem: String, size: I32, enc: I32): NullablePointer[XmlParserInputBuffer] =>
    @xmlParserInputBufferCreateStatic(mem.cstring(), size, enc)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:193
  Original Name: xmlParserInputBufferGrow/usr/include/libxml2/libxml/xmlIO.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
*/
  fun xmlParserInputBufferGrow(xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32): I32 =>
    @xmlParserInputBufferGrow(xmlin, len)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:196
  Original Name: xmlParserInputBufferPush/usr/include/libxml2/libxml/xmlIO.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlParserInputBufferPush(xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32, buf: String): I32 =>
    @xmlParserInputBufferPush(xmlin, len, buf.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:190
  Original Name: xmlParserInputBufferRead/usr/include/libxml2/libxml/xmlIO.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
*/
  fun xmlParserInputBufferRead(xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32): I32 =>
    @xmlParserInputBufferRead(xmlin, len)


/*
  Source: /usr/include/libxml2/libxml/parser.h:836
  Original Name: xmlParserInputGrow/usr/include/libxml2/libxml/parser.h:836

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlParserInputGrow(xmlin: NullablePointer[XmlParserInput] tag, len: I32): I32 =>
    @xmlParserInputGrow(xmlin, len)


/*
  Source: /usr/include/libxml2/libxml/parser.h:833
  Original Name: xmlParserInputRead/usr/include/libxml2/libxml/parser.h:833

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlParserInputRead(xmlin: NullablePointer[XmlParserInput] tag, len: I32): I32 =>
    @xmlParserInputRead(xmlin, len)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:571
  Original Name: xmlParserInputShrink/usr/include/libxml2/libxml/parserInternals.h:571

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlParserInputShrink(xmlin: NullablePointer[XmlParserInput] tag): None =>
    @xmlParserInputShrink(xmlin)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:894
  Original Name: xmlParserPrintFileContext/usr/include/libxml2/libxml/xmlerror.h:894

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlParserPrintFileContext(input: NullablePointer[XmlParserInput] tag): None =>
    @xmlParserPrintFileContext(input)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:892
  Original Name: xmlParserPrintFileInfo/usr/include/libxml2/libxml/xmlerror.h:892

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlParserPrintFileInfo(input: NullablePointer[XmlParserInput] tag): None =>
    @xmlParserPrintFileInfo(input)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:884
  Original Name: xmlParserValidityError/usr/include/libxml2/libxml/xmlerror.h:884

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlParserValidityError(ctx: Pointer[None] tag, msg: String, ...): None =>
    @xmlParserValidityError(ctx, msg.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:888
  Original Name: xmlParserValidityWarning/usr/include/libxml2/libxml/xmlerror.h:888

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlParserValidityWarning(ctx: Pointer[None] tag, msg: String, ...): None =>
    @xmlParserValidityWarning(ctx, msg.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:880
  Original Name: xmlParserWarning/usr/include/libxml2/libxml/xmlerror.h:880

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlParserWarning(ctx: Pointer[None] tag, msg: String, ...): None =>
    @xmlParserWarning(ctx, msg.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/uri.h:89
  Original Name: xmlPathToURI/usr/include/libxml2/libxml/uri.h:89

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlPathToURI(path: String): String =>
    var pcstring: Pointer[U8] =  @xmlPathToURI(path.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/pattern.h:72
  Original Name: xmlPatternFromRoot/usr/include/libxml2/libxml/pattern.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlPatternFromRoot(comp: NullablePointer[XmlPattern] tag): I32 =>
    @xmlPatternFromRoot(comp)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:74
  Original Name: xmlPatternGetStreamCtxt/usr/include/libxml2/libxml/pattern.h:74

  Return Value: [PointerType size=64]->[Struct size=,fid: f75]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlPatternGetStreamCtxt(comp: NullablePointer[XmlPattern] tag): NullablePointer[XmlStreamCtxt] =>
    @xmlPatternGetStreamCtxt(comp)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:58
  Original Name: xmlPatternMatch/usr/include/libxml2/libxml/pattern.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlPatternMatch(comp: NullablePointer[XmlPattern] tag, node: NullablePointer[XmlNode] tag): I32 =>
    @xmlPatternMatch(comp, node)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:68
  Original Name: xmlPatternMaxDepth/usr/include/libxml2/libxml/pattern.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlPatternMaxDepth(comp: NullablePointer[XmlPattern] tag): I32 =>
    @xmlPatternMaxDepth(comp)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:70
  Original Name: xmlPatternMinDepth/usr/include/libxml2/libxml/pattern.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlPatternMinDepth(comp: NullablePointer[XmlPattern] tag): I32 =>
    @xmlPatternMinDepth(comp)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:66
  Original Name: xmlPatternStreamable/usr/include/libxml2/libxml/pattern.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlPatternStreamable(comp: NullablePointer[XmlPattern] tag): I32 =>
    @xmlPatternStreamable(comp)


/*
  Source: /usr/include/libxml2/libxml/parser.h:858
  Original Name: xmlPedanticParserDefault/usr/include/libxml2/libxml/parser.h:858

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlPedanticParserDefault(xmlval: I32): I32 =>
    @xmlPedanticParserDefault(xmlval)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:370
  Original Name: xmlPopInput/usr/include/libxml2/libxml/parserInternals.h:370

  Return Value: [FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlPopInput(ctxt: NullablePointer[XmlParserCtxt] tag): U8 =>
    @xmlPopInput(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:162
  Original Name: xmlPopInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlPopInputCallbacks(): I32 =>
    @xmlPopInputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:221
  Original Name: xmlPopOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:221

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlPopOutputCallbacks(): I32 =>
    @xmlPopOutputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/tree.h:1313
  Original Name: xmlPreviousElementSibling/usr/include/libxml2/libxml/tree.h:1313

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlPreviousElementSibling(node: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlPreviousElementSibling(node)


/*
  Source: /usr/include/libxml2/libxml/uri.h:71
  Original Name: xmlPrintURI/usr/include/libxml2/libxml/uri.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
  fun xmlPrintURI(stream: NullablePointer[IOFILE] tag, uri: NullablePointer[XmlURI] tag): None =>
    @xmlPrintURI(stream, uri)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:367
  Original Name: xmlPushInput/usr/include/libxml2/libxml/parserInternals.h:367

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
  fun xmlPushInput(ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInput] tag): I32 =>
    @xmlPushInput(ctxt, input)


/*
  Source: /usr/include/libxml2/libxml/threads.h:51
  Original Name: xmlRMutexLock/usr/include/libxml2/libxml/threads.h:51

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlRMutexLock(tok: NullablePointer[XmlRMutex] tag): None =>
    @xmlRMutexLock(tok)


/*
  Source: /usr/include/libxml2/libxml/threads.h:53
  Original Name: xmlRMutexUnlock/usr/include/libxml2/libxml/threads.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
  fun xmlRMutexUnlock(tok: NullablePointer[XmlRMutex] tag): None =>
    @xmlRMutexUnlock(tok)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1131
  Original Name: xmlReadDoc/usr/include/libxml2/libxml/parser.h:1131

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReadDoc(cur: String, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlReadDoc(cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1146
  Original Name: xmlReadFd/usr/include/libxml2/libxml/parser.h:1146

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReadFd(fd: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlReadFd(fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1136
  Original Name: xmlReadFile/usr/include/libxml2/libxml/parser.h:1136

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReadFile(uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlReadFile(uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1151
  Original Name: xmlReadIO/usr/include/libxml2/libxml/parser.h:1151

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReadIO(ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlReadIO(ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1140
  Original Name: xmlReadMemory/usr/include/libxml2/libxml/parser.h:1140

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReadMemory(buffer: String, size: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlDoc] =>
    @xmlReadMemory(buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:324
  Original Name: xmlReaderForDoc/usr/include/libxml2/libxml/xmlreader.h:324

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderForDoc(cur: String, uRL: String, encoding: String, options: I32): NullablePointer[XmlTextReader] =>
    @xmlReaderForDoc(cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:339
  Original Name: xmlReaderForFd/usr/include/libxml2/libxml/xmlreader.h:339

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderForFd(fd: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlTextReader] =>
    @xmlReaderForFd(fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:329
  Original Name: xmlReaderForFile/usr/include/libxml2/libxml/xmlreader.h:329

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderForFile(filename: String, encoding: String, options: I32): NullablePointer[XmlTextReader] =>
    @xmlReaderForFile(filename.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:344
  Original Name: xmlReaderForIO/usr/include/libxml2/libxml/xmlreader.h:344

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderForIO(ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): NullablePointer[XmlTextReader] =>
    @xmlReaderForIO(ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:333
  Original Name: xmlReaderForMemory/usr/include/libxml2/libxml/xmlreader.h:333

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderForMemory(buffer: String, size: I32, uRL: String, encoding: String, options: I32): NullablePointer[XmlTextReader] =>
    @xmlReaderForMemory(buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:355
  Original Name: xmlReaderNewDoc/usr/include/libxml2/libxml/xmlreader.h:355

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderNewDoc(reader: NullablePointer[XmlTextReader] tag, cur: String, uRL: String, encoding: String, options: I32): I32 =>
    @xmlReaderNewDoc(reader, cur.cstring(), uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:373
  Original Name: xmlReaderNewFd/usr/include/libxml2/libxml/xmlreader.h:373

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderNewFd(reader: NullablePointer[XmlTextReader] tag, fd: I32, uRL: String, encoding: String, options: I32): I32 =>
    @xmlReaderNewFd(reader, fd, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:361
  Original Name: xmlReaderNewFile/usr/include/libxml2/libxml/xmlreader.h:361

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderNewFile(reader: NullablePointer[XmlTextReader] tag, filename: String, encoding: String, options: I32): I32 =>
    @xmlReaderNewFile(reader, filename.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:379
  Original Name: xmlReaderNewIO/usr/include/libxml2/libxml/xmlreader.h:379

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderNewIO(reader: NullablePointer[XmlTextReader] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: String, encoding: String, options: I32): I32 =>
    @xmlReaderNewIO(reader, ioread, ioclose, ioctx, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:366
  Original Name: xmlReaderNewMemory/usr/include/libxml2/libxml/xmlreader.h:366

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReaderNewMemory(reader: NullablePointer[XmlTextReader] tag, buffer: String, size: I32, uRL: String, encoding: String, options: I32): I32 =>
    @xmlReaderNewMemory(reader, buffer.cstring(), size, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:352
  Original Name: xmlReaderNewWalker/usr/include/libxml2/libxml/xmlreader.h:352

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlReaderNewWalker(reader: NullablePointer[XmlTextReader] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlReaderNewWalker(reader, doc)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:322
  Original Name: xmlReaderWalker/usr/include/libxml2/libxml/xmlreader.h:322

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlReaderWalker(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlTextReader] =>
    @xmlReaderWalker(doc)


/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:163
  Original Name: xmlReallocLoc/usr/include/libxml2/libxml/xmlmemory.h:163

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlReallocLoc(ptr: Pointer[None] tag, size: U64, file: String, line: I32): Pointer[None] =>
    @xmlReallocLoc(ptr, size, file.cstring(), line)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1158
  Original Name: xmlReconciliateNs/usr/include/libxml2/libxml/tree.h:1158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlReconciliateNs(doc: NullablePointer[XmlDoc] tag, tree: NullablePointer[XmlNode] tag): I32 =>
    @xmlReconciliateNs(doc, tree)


/*
  Source: /usr/include/libxml2/libxml/parser.h:867
  Original Name: xmlRecoverDoc/usr/include/libxml2/libxml/parser.h:867

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlRecoverDoc(cur: String): NullablePointer[XmlDoc] =>
    @xmlRecoverDoc(cur.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:872
  Original Name: xmlRecoverFile/usr/include/libxml2/libxml/parser.h:872

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlRecoverFile(filename: String): NullablePointer[XmlDoc] =>
    @xmlRecoverFile(filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:869
  Original Name: xmlRecoverMemory/usr/include/libxml2/libxml/parser.h:869

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlRecoverMemory(buffer: String, size: I32): NullablePointer[XmlDoc] =>
    @xmlRecoverMemory(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:87
  Original Name: xmlRegExecPushString/usr/include/libxml2/libxml/xmlregexp.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRegExecPushString(exec: NullablePointer[XmlRegExecCtxt] tag, value: String, data: Pointer[None] tag): I32 =>
    @xmlRegExecPushString(exec, value.cstring(), data)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:91
  Original Name: xmlRegExecPushString2/usr/include/libxml2/libxml/xmlregexp.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRegExecPushString2(exec: NullablePointer[XmlRegExecCtxt] tag, value: String, value2: String, data: Pointer[None] tag): I32 =>
    @xmlRegExecPushString2(exec, value.cstring(), value2.cstring(), data)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:85
  Original Name: xmlRegFreeExecCtxt/usr/include/libxml2/libxml/xmlregexp.h:85

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
  fun xmlRegFreeExecCtxt(exec: NullablePointer[XmlRegExecCtxt] tag): None =>
    @xmlRegFreeExecCtxt(exec)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:53
  Original Name: xmlRegFreeRegexp/usr/include/libxml2/libxml/xmlregexp.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
  fun xmlRegFreeRegexp(regexp: NullablePointer[XmlRegexp] tag): None =>
    @xmlRegFreeRegexp(regexp)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:81
  Original Name: xmlRegNewExecCtxt/usr/include/libxml2/libxml/xmlregexp.h:81

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRegNewExecCtxt(comp: NullablePointer[XmlRegexp] tag, callback: Pointer[None] tag, data: Pointer[None] tag): NullablePointer[XmlRegExecCtxt] =>
    @xmlRegNewExecCtxt(comp, callback, data)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:52
  Original Name: xmlRegexpCompile/usr/include/libxml2/libxml/xmlregexp.h:52

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlRegexpCompile(regexp: String): NullablePointer[XmlRegexp] =>
    @xmlRegexpCompile(regexp.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:55
  Original Name: xmlRegexpExec/usr/include/libxml2/libxml/xmlregexp.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlRegexpExec(comp: NullablePointer[XmlRegexp] tag, value: String): I32 =>
    @xmlRegexpExec(comp, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:61
  Original Name: xmlRegexpIsDeterminist/usr/include/libxml2/libxml/xmlregexp.h:61

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
  fun xmlRegexpIsDeterminist(comp: NullablePointer[XmlRegexp] tag): I32 =>
    @xmlRegexpIsDeterminist(comp)


/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:58
  Original Name: xmlRegexpPrint/usr/include/libxml2/libxml/xmlregexp.h:58

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f19]
*/
  fun xmlRegexpPrint(output: NullablePointer[IOFILE] tag, regexp: NullablePointer[XmlRegexp] tag): None =>
    @xmlRegexpPrint(output, regexp)


/*
  Source: /usr/include/libxml2/libxml/encoding.h:176
  Original Name: xmlRegisterCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:176

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlRegisterCharEncodingHandler(handler: NullablePointer[XmlCharEncodingHandler] tag): None =>
    @xmlRegisterCharEncodingHandler(handler)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:165
  Original Name: xmlRegisterDefaultInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlRegisterDefaultInputCallbacks(): None =>
    @xmlRegisterDefaultInputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:223
  Original Name: xmlRegisterDefaultOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlRegisterDefaultOutputCallbacks(): None =>
    @xmlRegisterDefaultOutputCallbacks()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:287
  Original Name: xmlRegisterHTTPPostCallbacks/usr/include/libxml2/libxml/xmlIO.h:287

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlRegisterHTTPPostCallbacks(): None =>
    @xmlRegisterHTTPPostCallbacks()


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:205
  Original Name: xmlRegisterInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:205

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlRegisterInputCallbacks(matchFunc: Pointer[None] tag, openFunc: Pointer[None] tag, readFunc: Pointer[None] tag, closeFunc: Pointer[None] tag): I32 =>
    @xmlRegisterInputCallbacks(matchFunc, openFunc, readFunc, closeFunc)


/*
  Source: /usr/include/libxml2/libxml/globals.h:183
  Original Name: xmlRegisterNodeDefault/usr/include/libxml2/libxml/globals.h:183

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlRegisterNodeDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlRegisterNodeDefault(func)


/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:274
  Original Name: xmlRegisterOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:274

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlRegisterOutputCallbacks(matchFunc: Pointer[None] tag, openFunc: Pointer[None] tag, writeFunc: Pointer[None] tag, closeFunc: Pointer[None] tag): I32 =>
    @xmlRegisterOutputCallbacks(matchFunc, openFunc, writeFunc, closeFunc)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:122
  Original Name: xmlRelaxNGCleanupTypes/usr/include/libxml2/libxml/relaxng.h:122

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlRelaxNGCleanupTypes(): None =>
    @xmlRelaxNGCleanupTypes()


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:162
  Original Name: xmlRelaxNGDump/usr/include/libxml2/libxml/relaxng.h:162

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGDump(output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlRelaxNG] tag): None =>
    @xmlRelaxNGDump(output, schema)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:165
  Original Name: xmlRelaxNGDumpTree/usr/include/libxml2/libxml/relaxng.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGDumpTree(output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlRelaxNG] tag): None =>
    @xmlRelaxNGDumpTree(output, schema)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:159
  Original Name: xmlRelaxNGFree/usr/include/libxml2/libxml/relaxng.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGFree(schema: NullablePointer[XmlRelaxNG] tag): None =>
    @xmlRelaxNGFree(schema)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:140
  Original Name: xmlRelaxNGFreeParserCtxt/usr/include/libxml2/libxml/relaxng.h:140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGFreeParserCtxt(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag): None =>
    @xmlRelaxNGFreeParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:187
  Original Name: xmlRelaxNGFreeValidCtxt/usr/include/libxml2/libxml/relaxng.h:187

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGFreeValidCtxt(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag): None =>
    @xmlRelaxNGFreeValidCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:147
  Original Name: xmlRelaxNGGetParserErrors/usr/include/libxml2/libxml/relaxng.h:147

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGGetParserErrors(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlRelaxNGGetParserErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:177
  Original Name: xmlRelaxNGGetValidErrors/usr/include/libxml2/libxml/relaxng.h:177

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGGetValidErrors(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlRelaxNGGetValidErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:120
  Original Name: xmlRelaxNGInitTypes/usr/include/libxml2/libxml/relaxng.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun xmlRelaxNGInitTypes(): I32 =>
    @xmlRelaxNGInitTypes()


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:133
  Original Name: xmlRelaxNGNewDocParserCtxt/usr/include/libxml2/libxml/relaxng.h:133

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlRelaxNGNewDocParserCtxt(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlRelaxNGParserCtxt] =>
    @xmlRelaxNGNewDocParserCtxt(doc)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:130
  Original Name: xmlRelaxNGNewMemParserCtxt/usr/include/libxml2/libxml/relaxng.h:130

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlRelaxNGNewMemParserCtxt(buffer: String, size: I32): NullablePointer[XmlRelaxNGParserCtxt] =>
    @xmlRelaxNGNewMemParserCtxt(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:128
  Original Name: xmlRelaxNGNewParserCtxt/usr/include/libxml2/libxml/relaxng.h:128

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlRelaxNGNewParserCtxt(uRL: String): NullablePointer[XmlRelaxNGParserCtxt] =>
    @xmlRelaxNGNewParserCtxt(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:185
  Original Name: xmlRelaxNGNewValidCtxt/usr/include/libxml2/libxml/relaxng.h:185

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGNewValidCtxt(schema: NullablePointer[XmlRelaxNG] tag): NullablePointer[XmlRelaxNGValidCtxt] =>
    @xmlRelaxNGNewValidCtxt(schema)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:157
  Original Name: xmlRelaxNGParse/usr/include/libxml2/libxml/relaxng.h:157

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlRelaxNGParse(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag): NullablePointer[XmlRelaxNG] =>
    @xmlRelaxNGParse(ctxt)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:142
  Original Name: xmlRelaxNGSetParserErrors/usr/include/libxml2/libxml/relaxng.h:142

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGSetParserErrors(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlRelaxNGSetParserErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:152
  Original Name: xmlRelaxNGSetParserStructuredErrors/usr/include/libxml2/libxml/relaxng.h:152

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGSetParserStructuredErrors(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlRelaxNGSetParserStructuredErrors(ctxt, serror, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:172
  Original Name: xmlRelaxNGSetValidErrors/usr/include/libxml2/libxml/relaxng.h:172

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGSetValidErrors(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlRelaxNGSetValidErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:182
  Original Name: xmlRelaxNGSetValidStructuredErrors/usr/include/libxml2/libxml/relaxng.h:182

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlRelaxNGSetValidStructuredErrors(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlRelaxNGSetValidStructuredErrors(ctxt, serror, ctx)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:189
  Original Name: xmlRelaxNGValidateDoc/usr/include/libxml2/libxml/relaxng.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlRelaxNGValidateDoc(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlRelaxNGValidateDoc(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:207
  Original Name: xmlRelaxNGValidateFullElement/usr/include/libxml2/libxml/relaxng.h:207

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlRelaxNGValidateFullElement(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlRelaxNGValidateFullElement(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:203
  Original Name: xmlRelaxNGValidatePopElement/usr/include/libxml2/libxml/relaxng.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlRelaxNGValidatePopElement(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlRelaxNGValidatePopElement(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:199
  Original Name: xmlRelaxNGValidatePushCData/usr/include/libxml2/libxml/relaxng.h:199

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlRelaxNGValidatePushCData(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, data: String, len: I32): I32 =>
    @xmlRelaxNGValidatePushCData(ctxt, data.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:195
  Original Name: xmlRelaxNGValidatePushElement/usr/include/libxml2/libxml/relaxng.h:195

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlRelaxNGValidatePushElement(ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlRelaxNGValidatePushElement(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/relaxng.h:136
  Original Name: xmlRelaxParserSetFlag/usr/include/libxml2/libxml/relaxng.h:136

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [FundamentalType(int) size=32]
*/
  fun xmlRelaxParserSetFlag(ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, flag: I32): I32 =>
    @xmlRelaxParserSetFlag(ctxt, flag)


/*
  Source: /usr/include/libxml2/libxml/valid.h:282
  Original Name: xmlRemoveID/usr/include/libxml2/libxml/valid.h:282

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlRemoveID(doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag): I32 =>
    @xmlRemoveID(doc, attr)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1122
  Original Name: xmlRemoveProp/usr/include/libxml2/libxml/tree.h:1122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlRemoveProp(cur: NullablePointer[XmlAttr] tag): I32 =>
    @xmlRemoveProp(cur)


/*
  Source: /usr/include/libxml2/libxml/valid.h:298
  Original Name: xmlRemoveRef/usr/include/libxml2/libxml/valid.h:298

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
  fun xmlRemoveRef(doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag): I32 =>
    @xmlRemoveRef(doc, attr)


/*
  Source: /usr/include/libxml2/libxml/tree.h:961
  Original Name: xmlReplaceNode/usr/include/libxml2/libxml/tree.h:961

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlReplaceNode(old: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlReplaceNode(old, cur)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:908
  Original Name: xmlResetError/usr/include/libxml2/libxml/xmlerror.h:908

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f25]
*/
  fun xmlResetError(err: NullablePointer[XmlError] tag): None =>
    @xmlResetError(err)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:902
  Original Name: xmlResetLastError/usr/include/libxml2/libxml/xmlerror.h:902

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlResetLastError(): None =>
    @xmlResetLastError()


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:73
  Original Name: xmlSAX2AttributeDecl/usr/include/libxml2/libxml/SAX2.h:73

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
  fun xmlSAX2AttributeDecl(ctx: Pointer[None] tag, elem: String, fullname: String, xmltype: I32, def: I32, defaultValue: String, tree: NullablePointer[XmlEnumeration] tag): None =>
    @xmlSAX2AttributeDecl(ctx, elem.cstring(), fullname.cstring(), xmltype, def, defaultValue.cstring(), tree)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:146
  Original Name: xmlSAX2CDataBlock/usr/include/libxml2/libxml/SAX2.h:146

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAX2CDataBlock(ctx: Pointer[None] tag, value: String, len: I32): None =>
    @xmlSAX2CDataBlock(ctx, value.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:131
  Original Name: xmlSAX2Characters/usr/include/libxml2/libxml/SAX2.h:131

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAX2Characters(ctx: Pointer[None] tag, ch: String, len: I32): None =>
    @xmlSAX2Characters(ctx, ch.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:143
  Original Name: xmlSAX2Comment/usr/include/libxml2/libxml/SAX2.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2Comment(ctx: Pointer[None] tag, value: String): None =>
    @xmlSAX2Comment(ctx, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:81
  Original Name: xmlSAX2ElementDecl/usr/include/libxml2/libxml/SAX2.h:81

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlSAX2ElementDecl(ctx: Pointer[None] tag, name: String, xmltype: I32, content: NullablePointer[XmlElementContent] tag): None =>
    @xmlSAX2ElementDecl(ctx, name.cstring(), xmltype, content)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:100
  Original Name: xmlSAX2EndDocument/usr/include/libxml2/libxml/SAX2.h:100

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2EndDocument(ctx: Pointer[None] tag): None =>
    @xmlSAX2EndDocument(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:109
  Original Name: xmlSAX2EndElement/usr/include/libxml2/libxml/SAX2.h:109

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2EndElement(ctx: Pointer[None] tag, name: String): None =>
    @xmlSAX2EndElement(ctx, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:123
  Original Name: xmlSAX2EndElementNs/usr/include/libxml2/libxml/SAX2.h:123

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2EndElementNs(ctx: Pointer[None] tag, localname: String, prefix: String, uRI: String): None =>
    @xmlSAX2EndElementNs(ctx, localname.cstring(), prefix.cstring(), uRI.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:66
  Original Name: xmlSAX2EntityDecl/usr/include/libxml2/libxml/SAX2.h:66

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2EntityDecl(ctx: Pointer[None] tag, name: String, xmltype: I32, publicId: String, systemId: String, content: String): None =>
    @xmlSAX2EntityDecl(ctx, name.cstring(), xmltype, publicId.cstring(), systemId.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:50
  Original Name: xmlSAX2ExternalSubset/usr/include/libxml2/libxml/SAX2.h:50

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2ExternalSubset(ctx: Pointer[None] tag, name: String, externalID: String, systemID: String): None =>
    @xmlSAX2ExternalSubset(ctx, name.cstring(), externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:35
  Original Name: xmlSAX2GetColumnNumber/usr/include/libxml2/libxml/SAX2.h:35

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2GetColumnNumber(ctx: Pointer[None] tag): I32 =>
    @xmlSAX2GetColumnNumber(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:55
  Original Name: xmlSAX2GetEntity/usr/include/libxml2/libxml/SAX2.h:55

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2GetEntity(ctx: Pointer[None] tag, name: String): NullablePointer[XmlEntity] =>
    @xmlSAX2GetEntity(ctx, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:33
  Original Name: xmlSAX2GetLineNumber/usr/include/libxml2/libxml/SAX2.h:33

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2GetLineNumber(ctx: Pointer[None] tag): I32 =>
    @xmlSAX2GetLineNumber(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:58
  Original Name: xmlSAX2GetParameterEntity/usr/include/libxml2/libxml/SAX2.h:58

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2GetParameterEntity(ctx: Pointer[None] tag, name: String): NullablePointer[XmlEntity] =>
    @xmlSAX2GetParameterEntity(ctx, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:25
  Original Name: xmlSAX2GetPublicId/usr/include/libxml2/libxml/SAX2.h:25

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2GetPublicId(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlSAX2GetPublicId(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:27
  Original Name: xmlSAX2GetSystemId/usr/include/libxml2/libxml/SAX2.h:27

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2GetSystemId(ctx: Pointer[None] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlSAX2GetSystemId(ctx)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:42
  Original Name: xmlSAX2HasExternalSubset/usr/include/libxml2/libxml/SAX2.h:42

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2HasExternalSubset(ctx: Pointer[None] tag): I32 =>
    @xmlSAX2HasExternalSubset(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:40
  Original Name: xmlSAX2HasInternalSubset/usr/include/libxml2/libxml/SAX2.h:40

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2HasInternalSubset(ctx: Pointer[None] tag): I32 =>
    @xmlSAX2HasInternalSubset(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:135
  Original Name: xmlSAX2IgnorableWhitespace/usr/include/libxml2/libxml/SAX2.h:135

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAX2IgnorableWhitespace(ctx: Pointer[None] tag, ch: String, len: I32): None =>
    @xmlSAX2IgnorableWhitespace(ctx, ch.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:159
  Original Name: xmlSAX2InitDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlSAX2InitDefaultSAXHandler(hdlr: NullablePointer[XmlSAXHandler] tag, warning: I32): None =>
    @xmlSAX2InitDefaultSAXHandler(hdlr, warning)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:169
  Original Name: xmlSAX2InitDocbDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:169

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
*/
  fun xmlSAX2InitDocbDefaultSAXHandler(hdlr: NullablePointer[XmlSAXHandler] tag): None =>
    @xmlSAX2InitDocbDefaultSAXHandler(hdlr)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:163
  Original Name: xmlSAX2InitHtmlDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:163

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
*/
  fun xmlSAX2InitHtmlDefaultSAXHandler(hdlr: NullablePointer[XmlSAXHandler] tag): None =>
    @xmlSAX2InitHtmlDefaultSAXHandler(hdlr)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:45
  Original Name: xmlSAX2InternalSubset/usr/include/libxml2/libxml/SAX2.h:45

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2InternalSubset(ctx: Pointer[None] tag, name: String, externalID: String, systemID: String): None =>
    @xmlSAX2InternalSubset(ctx, name.cstring(), externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:38
  Original Name: xmlSAX2IsStandalone/usr/include/libxml2/libxml/SAX2.h:38

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2IsStandalone(ctx: Pointer[None] tag): I32 =>
    @xmlSAX2IsStandalone(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:86
  Original Name: xmlSAX2NotationDecl/usr/include/libxml2/libxml/SAX2.h:86

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2NotationDecl(ctx: Pointer[None] tag, name: String, publicId: String, systemId: String): None =>
    @xmlSAX2NotationDecl(ctx, name.cstring(), publicId.cstring(), systemId.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:139
  Original Name: xmlSAX2ProcessingInstruction/usr/include/libxml2/libxml/SAX2.h:139

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2ProcessingInstruction(ctx: Pointer[None] tag, target: String, data: String): None =>
    @xmlSAX2ProcessingInstruction(ctx, target.cstring(), data.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:128
  Original Name: xmlSAX2Reference/usr/include/libxml2/libxml/SAX2.h:128

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2Reference(ctx: Pointer[None] tag, name: String): None =>
    @xmlSAX2Reference(ctx, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:61
  Original Name: xmlSAX2ResolveEntity/usr/include/libxml2/libxml/SAX2.h:61

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2ResolveEntity(ctx: Pointer[None] tag, publicId: String, systemId: String): NullablePointer[XmlParserInput] =>
    @xmlSAX2ResolveEntity(ctx, publicId.cstring(), systemId.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:29
  Original Name: xmlSAX2SetDocumentLocator/usr/include/libxml2/libxml/SAX2.h:29

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[Struct size=256,fid: f17]
*/
  fun xmlSAX2SetDocumentLocator(ctx: Pointer[None] tag, loc: NullablePointer[XmlSAXLocator] tag): None =>
    @xmlSAX2SetDocumentLocator(ctx, loc)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:98
  Original Name: xmlSAX2StartDocument/usr/include/libxml2/libxml/SAX2.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAX2StartDocument(ctx: Pointer[None] tag): None =>
    @xmlSAX2StartDocument(ctx)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:91
  Original Name: xmlSAX2UnparsedEntityDecl/usr/include/libxml2/libxml/SAX2.h:91

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAX2UnparsedEntityDecl(ctx: Pointer[None] tag, name: String, publicId: String, systemId: String, notationName: String): None =>
    @xmlSAX2UnparsedEntityDecl(ctx, name.cstring(), publicId.cstring(), systemId.cstring(), notationName.cstring())


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:152
  Original Name: xmlSAXDefaultVersion/usr/include/libxml2/libxml/SAX2.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlSAXDefaultVersion(version: I32): I32 =>
    @xmlSAXDefaultVersion(version)


/*
  Source: /usr/include/libxml2/libxml/parser.h:925
  Original Name: xmlSAXParseDTD/usr/include/libxml2/libxml/parser.h:925

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSAXParseDTD(sax: NullablePointer[XmlSAXHandler] tag, externalID: String, systemID: String): NullablePointer[XmlDtd] =>
    @xmlSAXParseDTD(sax, externalID.cstring(), systemID.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:893
  Original Name: xmlSAXParseDoc/usr/include/libxml2/libxml/parser.h:893

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAXParseDoc(sax: NullablePointer[XmlSAXHandler] tag, cur: String, recovery: I32): NullablePointer[XmlDoc] =>
    @xmlSAXParseDoc(sax, cur.cstring(), recovery)


/*
  Source: /usr/include/libxml2/libxml/parser.h:917
  Original Name: xmlSAXParseEntity/usr/include/libxml2/libxml/parser.h:917

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSAXParseEntity(sax: NullablePointer[XmlSAXHandler] tag, filename: String): NullablePointer[XmlDoc] =>
    @xmlSAXParseEntity(sax, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:908
  Original Name: xmlSAXParseFile/usr/include/libxml2/libxml/parser.h:908

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAXParseFile(sax: NullablePointer[XmlSAXHandler] tag, filename: String, recovery: I32): NullablePointer[XmlDoc] =>
    @xmlSAXParseFile(sax, filename.cstring(), recovery)


/*
  Source: /usr/include/libxml2/libxml/parser.h:912
  Original Name: xmlSAXParseFileWithData/usr/include/libxml2/libxml/parser.h:912

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAXParseFileWithData(sax: NullablePointer[XmlSAXHandler] tag, filename: String, recovery: I32, data: Pointer[None] tag): NullablePointer[XmlDoc] =>
    @xmlSAXParseFileWithData(sax, filename.cstring(), recovery, data)


/*
  Source: /usr/include/libxml2/libxml/parser.h:897
  Original Name: xmlSAXParseMemory/usr/include/libxml2/libxml/parser.h:897

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlSAXParseMemory(sax: NullablePointer[XmlSAXHandler] tag, buffer: String, size: I32, recovery: I32): NullablePointer[XmlDoc] =>
    @xmlSAXParseMemory(sax, buffer.cstring(), size, recovery)


/*
  Source: /usr/include/libxml2/libxml/parser.h:902
  Original Name: xmlSAXParseMemoryWithData/usr/include/libxml2/libxml/parser.h:902

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSAXParseMemoryWithData(sax: NullablePointer[XmlSAXHandler] tag, buffer: String, size: I32, recovery: I32, data: Pointer[None] tag): NullablePointer[XmlDoc] =>
    @xmlSAXParseMemoryWithData(sax, buffer.cstring(), size, recovery, data)


/*
  Source: /usr/include/libxml2/libxml/parser.h:884
  Original Name: xmlSAXUserParseFile/usr/include/libxml2/libxml/parser.h:884

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSAXUserParseFile(sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, filename: String): I32 =>
    @xmlSAXUserParseFile(sax, userdata, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/parser.h:888
  Original Name: xmlSAXUserParseMemory/usr/include/libxml2/libxml/parser.h:888

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSAXUserParseMemory(sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, buffer: String, size: I32): I32 =>
    @xmlSAXUserParseMemory(sax, userdata, buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/SAX2.h:156
  Original Name: xmlSAXVersion/usr/include/libxml2/libxml/SAX2.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [FundamentalType(int) size=32]
*/
  fun xmlSAXVersion(hdlr: NullablePointer[XmlSAXHandler] tag, version: I32): I32 =>
    @xmlSAXVersion(hdlr, version)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:75
  Original Name: xmlSaveClose/usr/include/libxml2/libxml/xmlsave.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
*/
  fun xmlSaveClose(ctxt: NullablePointer[XmlSaveCtxt] tag): I32 =>
    @xmlSaveClose(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:66
  Original Name: xmlSaveDoc/usr/include/libxml2/libxml/xmlsave.h:66

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSaveDoc(ctxt: NullablePointer[XmlSaveCtxt] tag, doc: NullablePointer[XmlDoc] tag): I64 =>
    @xmlSaveDoc(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1198
  Original Name: xmlSaveFile/usr/include/libxml2/libxml/tree.h:1198

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSaveFile(filename: String, cur: NullablePointer[XmlDoc] tag): I32 =>
    @xmlSaveFile(filename.cstring(), cur)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1241
  Original Name: xmlSaveFileEnc/usr/include/libxml2/libxml/tree.h:1241

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSaveFileEnc(filename: String, cur: NullablePointer[XmlDoc] tag, encoding: String): I32 =>
    @xmlSaveFileEnc(filename.cstring(), cur, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1218
  Original Name: xmlSaveFileTo/usr/include/libxml2/libxml/tree.h:1218

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSaveFileTo(buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: String): I32 =>
    @xmlSaveFileTo(buf, cur, encoding.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:73
  Original Name: xmlSaveFlush/usr/include/libxml2/libxml/xmlsave.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
*/
  fun xmlSaveFlush(ctxt: NullablePointer[XmlSaveCtxt] tag): I32 =>
    @xmlSaveFlush(ctxt)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1201
  Original Name: xmlSaveFormatFile/usr/include/libxml2/libxml/tree.h:1201

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveFormatFile(filename: String, cur: NullablePointer[XmlDoc] tag, format: I32): I32 =>
    @xmlSaveFormatFile(filename.cstring(), cur, format)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1235
  Original Name: xmlSaveFormatFileEnc/usr/include/libxml2/libxml/tree.h:1235

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveFormatFileEnc(filename: String, cur: NullablePointer[XmlDoc] tag, encoding: String, format: I32): I32 =>
    @xmlSaveFormatFileEnc(filename.cstring(), cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1222
  Original Name: xmlSaveFormatFileTo/usr/include/libxml2/libxml/tree.h:1222

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveFormatFileTo(buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: String, format: I32): I32 =>
    @xmlSaveFormatFileTo(buf, cur, encoding.cstring(), format)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:80
  Original Name: xmlSaveSetAttrEscape/usr/include/libxml2/libxml/xmlsave.h:80

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSaveSetAttrEscape(ctxt: NullablePointer[XmlSaveCtxt] tag, escape: Pointer[None] tag): I32 =>
    @xmlSaveSetAttrEscape(ctxt, escape)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:77
  Original Name: xmlSaveSetEscape/usr/include/libxml2/libxml/xmlsave.h:77

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSaveSetEscape(ctxt: NullablePointer[XmlSaveCtxt] tag, escape: Pointer[None] tag): I32 =>
    @xmlSaveSetEscape(ctxt, escape)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:54
  Original Name: xmlSaveToBuffer/usr/include/libxml2/libxml/xmlsave.h:54

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveToBuffer(buffer: NullablePointer[XmlBuffer] tag, encoding: String, options: I32): NullablePointer[XmlSaveCtxt] =>
    @xmlSaveToBuffer(buffer, encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:45
  Original Name: xmlSaveToFd/usr/include/libxml2/libxml/xmlsave.h:45

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveToFd(fd: I32, encoding: String, options: I32): NullablePointer[XmlSaveCtxt] =>
    @xmlSaveToFd(fd, encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:49
  Original Name: xmlSaveToFilename/usr/include/libxml2/libxml/xmlsave.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveToFilename(filename: String, encoding: String, options: I32): NullablePointer[XmlSaveCtxt] =>
    @xmlSaveToFilename(filename.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:59
  Original Name: xmlSaveToIO/usr/include/libxml2/libxml/xmlsave.h:59

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSaveToIO(iowrite: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, encoding: String, options: I32): NullablePointer[XmlSaveCtxt] =>
    @xmlSaveToIO(iowrite, ioclose, ioctx, encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:69
  Original Name: xmlSaveTree/usr/include/libxml2/libxml/xmlsave.h:69

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlSaveTree(ctxt: NullablePointer[XmlSaveCtxt] tag, node: NullablePointer[XmlNode] tag): I64 =>
    @xmlSaveTree(ctxt, node)


/*
  Source: /usr/include/libxml2/libxml/uri.h:69
  Original Name: xmlSaveUri/usr/include/libxml2/libxml/uri.h:69

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
  fun xmlSaveUri(uri: NullablePointer[XmlURI] tag): String =>
    var pcstring: Pointer[U8] =  @xmlSaveUri(uri)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:609
  Original Name: xmlScanName/usr/include/libxml2/libxml/parserInternals.h:609

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlScanName(ctxt: NullablePointer[XmlParserCtxt] tag): String =>
    var pcstring: Pointer[U8] =  @xmlScanName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:66
  Original Name: xmlSchemaCheckFacet/usr/include/libxml2/libxml/xmlschemastypes.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaCheckFacet(facet: NullablePointer[XmlSchemaFacet] tag, typeDecl: NullablePointer[XmlSchemaType] tag, ctxt: NullablePointer[XmlSchemaParserCtxt] tag, name: String): I32 =>
    @xmlSchemaCheckFacet(facet, typeDecl, ctxt, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:36
  Original Name: xmlSchemaCleanupTypes/usr/include/libxml2/libxml/xmlschemastypes.h:36

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlSchemaCleanupTypes(): None =>
    @xmlSchemaCleanupTypes()


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:88
  Original Name: xmlSchemaCollapseString/usr/include/libxml2/libxml/xmlschemastypes.h:88

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaCollapseString(value: String): String =>
    var pcstring: Pointer[U8] =  @xmlSchemaCollapseString(value.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:73
  Original Name: xmlSchemaCompareValues/usr/include/libxml2/libxml/xmlschemastypes.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaCompareValues(x: NullablePointer[XmlSchemaVal] tag, y: NullablePointer[XmlSchemaVal] tag): I32 =>
    @xmlSchemaCompareValues(x, y)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:137
  Original Name: xmlSchemaCompareValuesWhtsp/usr/include/libxml2/libxml/xmlschemastypes.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [Enumeration size=32,fid: f85]
    [PointerType size=64]->[Struct size=,fid: f77]
    [Enumeration size=32,fid: f85]
*/
  fun xmlSchemaCompareValuesWhtsp(x: NullablePointer[XmlSchemaVal] tag, xws: I32, y: NullablePointer[XmlSchemaVal] tag, yws: I32): I32 =>
    @xmlSchemaCompareValuesWhtsp(x, xws, y, yws)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:142
  Original Name: xmlSchemaCopyValue/usr/include/libxml2/libxml/xmlschemastypes.h:142

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaCopyValue(xmlval: NullablePointer[XmlSchemaVal] tag): NullablePointer[XmlSchemaVal] =>
    @xmlSchemaCopyValue(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:169
  Original Name: xmlSchemaDump/usr/include/libxml2/libxml/xmlschemas.h:169

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
  fun xmlSchemaDump(output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlSchema] tag): None =>
    @xmlSchemaDump(output, schema)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:166
  Original Name: xmlSchemaFree/usr/include/libxml2/libxml/xmlschemas.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
  fun xmlSchemaFree(schema: NullablePointer[XmlSchema] tag): None =>
    @xmlSchemaFree(schema)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:71
  Original Name: xmlSchemaFreeFacet/usr/include/libxml2/libxml/xmlschemastypes.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
  fun xmlSchemaFreeFacet(facet: NullablePointer[XmlSchemaFacet] tag): None =>
    @xmlSchemaFreeFacet(facet)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:145
  Original Name: xmlSchemaFreeParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:145

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaFreeParserCtxt(ctxt: NullablePointer[XmlSchemaParserCtxt] tag): None =>
    @xmlSchemaFreeParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/schemasInternals.h:950
  Original Name: xmlSchemaFreeType/usr/include/libxml2/libxml/schemasInternals.h:950

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
*/
  fun xmlSchemaFreeType(xmltype: NullablePointer[XmlSchemaType] tag): None =>
    @xmlSchemaFreeType(xmltype)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:201
  Original Name: xmlSchemaFreeValidCtxt/usr/include/libxml2/libxml/xmlschemas.h:201

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaFreeValidCtxt(ctxt: NullablePointer[XmlSchemaValidCtxt] tag): None =>
    @xmlSchemaFreeValidCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:62
  Original Name: xmlSchemaFreeValue/usr/include/libxml2/libxml/xmlschemastypes.h:62

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaFreeValue(xmlval: NullablePointer[XmlSchemaVal] tag): None =>
    @xmlSchemaFreeValue(xmlval)


/*
  Source: /usr/include/libxml2/libxml/schemasInternals.h:951
  Original Name: xmlSchemaFreeWildcard/usr/include/libxml2/libxml/schemasInternals.h:951

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
  fun xmlSchemaFreeWildcard(wildcard: NullablePointer[XmlSchemaWildcard] tag): None =>
    @xmlSchemaFreeWildcard(wildcard)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:76
  Original Name: xmlSchemaGetBuiltInListSimpleTypeItemType/usr/include/libxml2/libxml/xmlschemastypes.h:76

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
*/
  fun xmlSchemaGetBuiltInListSimpleTypeItemType(xmltype: NullablePointer[XmlSchemaType] tag): NullablePointer[XmlSchemaType] =>
    @xmlSchemaGetBuiltInListSimpleTypeItemType(xmltype)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:83
  Original Name: xmlSchemaGetBuiltInType/usr/include/libxml2/libxml/xmlschemastypes.h:83

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [Enumeration size=32,fid: f77]
*/
  fun xmlSchemaGetBuiltInType(xmltype: I32): NullablePointer[XmlSchemaType] =>
    @xmlSchemaGetBuiltInType(xmltype)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:92
  Original Name: xmlSchemaGetFacetValueAsULong/usr/include/libxml2/libxml/xmlschemastypes.h:92

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
  fun xmlSchemaGetFacetValueAsULong(facet: NullablePointer[XmlSchemaFacet] tag): U64 =>
    @xmlSchemaGetFacetValueAsULong(facet)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:156
  Original Name: xmlSchemaGetParserErrors/usr/include/libxml2/libxml/xmlschemas.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaGetParserErrors(ctxt: NullablePointer[XmlSchemaParserCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlSchemaGetParserErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:38
  Original Name: xmlSchemaGetPredefinedType/usr/include/libxml2/libxml/xmlschemastypes.h:38

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaGetPredefinedType(name: String, ns: String): NullablePointer[XmlSchemaType] =>
    @xmlSchemaGetPredefinedType(name.cstring(), ns.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:144
  Original Name: xmlSchemaGetValType/usr/include/libxml2/libxml/xmlschemastypes.h:144

  Return Value: [Enumeration size=32,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaGetValType(xmlval: NullablePointer[XmlSchemaVal] tag): I32 =>
    @xmlSchemaGetValType(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:185
  Original Name: xmlSchemaGetValidErrors/usr/include/libxml2/libxml/xmlschemas.h:185

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaGetValidErrors(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag): I32 =>
    @xmlSchemaGetValidErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:34
  Original Name: xmlSchemaInitTypes/usr/include/libxml2/libxml/xmlschemastypes.h:34

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlSchemaInitTypes(): None =>
    @xmlSchemaInitTypes()


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:85
  Original Name: xmlSchemaIsBuiltInTypeFacet/usr/include/libxml2/libxml/xmlschemastypes.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [FundamentalType(int) size=32]
*/
  fun xmlSchemaIsBuiltInTypeFacet(xmltype: NullablePointer[XmlSchemaType] tag, facetType: I32): I32 =>
    @xmlSchemaIsBuiltInTypeFacet(xmltype, facetType)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:161
  Original Name: xmlSchemaIsValid/usr/include/libxml2/libxml/xmlschemas.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaIsValid(ctxt: NullablePointer[XmlSchemaValidCtxt] tag): I32 =>
    @xmlSchemaIsValid(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:143
  Original Name: xmlSchemaNewDocParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:143

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSchemaNewDocParserCtxt(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlSchemaParserCtxt] =>
    @xmlSchemaNewDocParserCtxt(doc)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:64
  Original Name: xmlSchemaNewFacet/usr/include/libxml2/libxml/xmlschemastypes.h:64

  Return Value: [PointerType size=64]->[Struct size=576,fid: f77]

  Arguments:
*/
  fun xmlSchemaNewFacet(): NullablePointer[XmlSchemaFacet] =>
    @xmlSchemaNewFacet()


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:140
  Original Name: xmlSchemaNewMemParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:140

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSchemaNewMemParserCtxt(buffer: String, size: I32): NullablePointer[XmlSchemaParserCtxt] =>
    @xmlSchemaNewMemParserCtxt(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:131
  Original Name: xmlSchemaNewNOTATIONValue/usr/include/libxml2/libxml/xmlschemastypes.h:131

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaNewNOTATIONValue(name: String, ns: String): NullablePointer[XmlSchemaVal] =>
    @xmlSchemaNewNOTATIONValue(name.cstring(), ns.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:138
  Original Name: xmlSchemaNewParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:138

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSchemaNewParserCtxt(uRL: String): NullablePointer[XmlSchemaParserCtxt] =>
    @xmlSchemaNewParserCtxt(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:134
  Original Name: xmlSchemaNewQNameValue/usr/include/libxml2/libxml/xmlschemastypes.h:134

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaNewQNameValue(namespaceName: String, localName: String): NullablePointer[XmlSchemaVal] =>
    @xmlSchemaNewQNameValue(namespaceName.cstring(), localName.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:128
  Original Name: xmlSchemaNewStringValue/usr/include/libxml2/libxml/xmlschemastypes.h:128

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [Enumeration size=32,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaNewStringValue(xmltype: I32, value: String): NullablePointer[XmlSchemaVal] =>
    @xmlSchemaNewStringValue(xmltype, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:199
  Original Name: xmlSchemaNewValidCtxt/usr/include/libxml2/libxml/xmlschemas.h:199

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
  fun xmlSchemaNewValidCtxt(schema: NullablePointer[XmlSchema] tag): NullablePointer[XmlSchemaValidCtxt] =>
    @xmlSchemaNewValidCtxt(schema)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:164
  Original Name: xmlSchemaParse/usr/include/libxml2/libxml/xmlschemas.h:164

  Return Value: [PointerType size=64]->[Struct size=1280,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaParse(ctxt: NullablePointer[XmlSchemaParserCtxt] tag): NullablePointer[XmlSchema] =>
    @xmlSchemaParse(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:229
  Original Name: xmlSchemaSAXPlug/usr/include/libxml2/libxml/xmlschemas.h:229

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaSAXPlug(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, sax: Pointer[NullablePointer[XmlSAXHandler]] tag, userdata: NullablePointer[Pointer[None]] tag): NullablePointer[XmlSchemaSAXPlug] =>
    @xmlSchemaSAXPlug(ctxt, sax, userdata)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:233
  Original Name: xmlSchemaSAXUnplug/usr/include/libxml2/libxml/xmlschemas.h:233

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaSAXUnplug(plug: NullablePointer[XmlSchemaSAXPlug] tag): I32 =>
    @xmlSchemaSAXUnplug(plug)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:147
  Original Name: xmlSchemaSetParserErrors/usr/include/libxml2/libxml/xmlschemas.h:147

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaSetParserErrors(ctxt: NullablePointer[XmlSchemaParserCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlSchemaSetParserErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:152
  Original Name: xmlSchemaSetParserStructuredErrors/usr/include/libxml2/libxml/xmlschemas.h:152

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaSetParserStructuredErrors(ctxt: NullablePointer[XmlSchemaParserCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlSchemaSetParserStructuredErrors(ctxt, serror, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:176
  Original Name: xmlSchemaSetValidErrors/usr/include/libxml2/libxml/xmlschemas.h:176

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaSetValidErrors(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlSchemaSetValidErrors(ctxt, err, warn, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:190
  Original Name: xmlSchemaSetValidOptions/usr/include/libxml2/libxml/xmlschemas.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [FundamentalType(int) size=32]
*/
  fun xmlSchemaSetValidOptions(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, options: I32): I32 =>
    @xmlSchemaSetValidOptions(ctxt, options)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:181
  Original Name: xmlSchemaSetValidStructuredErrors/usr/include/libxml2/libxml/xmlschemas.h:181

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaSetValidStructuredErrors(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlSchemaSetValidStructuredErrors(ctxt, serror, ctx)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:45
  Original Name: xmlSchemaValPredefTypeNode/usr/include/libxml2/libxml/xmlschemastypes.h:45

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlSchemaValPredefTypeNode(xmltype: NullablePointer[XmlSchemaType] tag, value: String, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag, node: NullablePointer[XmlNode] tag): I32 =>
    @xmlSchemaValPredefTypeNode(xmltype, value.cstring(), xmlval, node)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:107
  Original Name: xmlSchemaValPredefTypeNodeNoNorm/usr/include/libxml2/libxml/xmlschemastypes.h:107

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlSchemaValPredefTypeNodeNoNorm(xmltype: NullablePointer[XmlSchemaType] tag, value: String, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag, node: NullablePointer[XmlNode] tag): I32 =>
    @xmlSchemaValPredefTypeNodeNoNorm(xmltype, value.cstring(), xmlval, node)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:196
  Original Name: xmlSchemaValidCtxtGetOptions/usr/include/libxml2/libxml/xmlschemas.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaValidCtxtGetOptions(ctxt: NullablePointer[XmlSchemaValidCtxt] tag): I32 =>
    @xmlSchemaValidCtxtGetOptions(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:220
  Original Name: xmlSchemaValidCtxtGetParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:220

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
  fun xmlSchemaValidCtxtGetParserCtxt(ctxt: NullablePointer[XmlSchemaValidCtxt] tag): NullablePointer[XmlParserCtxt] =>
    @xmlSchemaValidCtxtGetParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:203
  Original Name: xmlSchemaValidateDoc/usr/include/libxml2/libxml/xmlschemas.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSchemaValidateDoc(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, instance: NullablePointer[XmlDoc] tag): I32 =>
    @xmlSchemaValidateDoc(ctxt, instance)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:50
  Original Name: xmlSchemaValidateFacet/usr/include/libxml2/libxml/xmlschemastypes.h:50

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[Struct size=576,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValidateFacet(base: NullablePointer[XmlSchemaType] tag, facet: NullablePointer[XmlSchemaFacet] tag, value: String, xmlval: NullablePointer[XmlSchemaVal] tag): I32 =>
    @xmlSchemaValidateFacet(base, facet, value.cstring(), xmlval)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:55
  Original Name: xmlSchemaValidateFacetWhtsp/usr/include/libxml2/libxml/xmlschemastypes.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
    [Enumeration size=32,fid: f85]
    [Enumeration size=32,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=,fid: f77]
    [Enumeration size=32,fid: f85]
*/
  fun xmlSchemaValidateFacetWhtsp(facet: NullablePointer[XmlSchemaFacet] tag, fws: I32, valType: I32, value: String, xmlval: NullablePointer[XmlSchemaVal] tag, ws: I32): I32 =>
    @xmlSchemaValidateFacetWhtsp(facet, fws, valType, value.cstring(), xmlval, ws)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:215
  Original Name: xmlSchemaValidateFile/usr/include/libxml2/libxml/xmlschemas.h:215

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSchemaValidateFile(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, filename: String, options: I32): I32 =>
    @xmlSchemaValidateFile(ctxt, filename.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:94
  Original Name: xmlSchemaValidateLengthFacet/usr/include/libxml2/libxml/xmlschemastypes.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[Struct size=576,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
*/
  fun xmlSchemaValidateLengthFacet(xmltype: NullablePointer[XmlSchemaType] tag, facet: NullablePointer[XmlSchemaFacet] tag, value: String, xmlval: NullablePointer[XmlSchemaVal] tag, length: Pointer[U64] tag): I32 =>
    @xmlSchemaValidateLengthFacet(xmltype, facet, value.cstring(), xmlval, length)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:100
  Original Name: xmlSchemaValidateLengthFacetWhtsp/usr/include/libxml2/libxml/xmlschemastypes.h:100

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
    [Enumeration size=32,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
    [Enumeration size=32,fid: f85]
*/
  fun xmlSchemaValidateLengthFacetWhtsp(facet: NullablePointer[XmlSchemaFacet] tag, valType: I32, value: String, xmlval: NullablePointer[XmlSchemaVal] tag, length: Pointer[U64] tag, ws: I32): I32 =>
    @xmlSchemaValidateLengthFacetWhtsp(facet, valType, value.cstring(), xmlval, length, ws)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:78
  Original Name: xmlSchemaValidateListSimpleTypeFacet/usr/include/libxml2/libxml/xmlschemastypes.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
*/
  fun xmlSchemaValidateListSimpleTypeFacet(facet: NullablePointer[XmlSchemaFacet] tag, value: String, actualLen: U64, expectedLen: Pointer[U64] tag): I32 =>
    @xmlSchemaValidateListSimpleTypeFacet(facet, value.cstring(), actualLen, expectedLen)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:206
  Original Name: xmlSchemaValidateOneElement/usr/include/libxml2/libxml/xmlschemas.h:206

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlSchemaValidateOneElement(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlSchemaValidateOneElement(ctxt, elem)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:41
  Original Name: xmlSchemaValidatePredefinedType/usr/include/libxml2/libxml/xmlschemastypes.h:41

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValidatePredefinedType(xmltype: NullablePointer[XmlSchemaType] tag, value: String, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag): I32 =>
    @xmlSchemaValidatePredefinedType(xmltype, value.cstring(), xmlval)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:193
  Original Name: xmlSchemaValidateSetFilename/usr/include/libxml2/libxml/xmlschemas.h:193

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSchemaValidateSetFilename(vctxt: NullablePointer[XmlSchemaValidCtxt] tag, filename: String): None =>
    @xmlSchemaValidateSetFilename(vctxt, filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:237
  Original Name: xmlSchemaValidateSetLocator/usr/include/libxml2/libxml/xmlschemas.h:237

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaValidateSetLocator(vctxt: NullablePointer[XmlSchemaValidCtxt] tag, f: Pointer[None] tag, ctxt: Pointer[None] tag): None =>
    @xmlSchemaValidateSetLocator(vctxt, f, ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:209
  Original Name: xmlSchemaValidateStream/usr/include/libxml2/libxml/xmlschemas.h:209

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [Enumeration size=32,fid: f42]
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchemaValidateStream(ctxt: NullablePointer[XmlSchemaValidCtxt] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag): I32 =>
    @xmlSchemaValidateStream(ctxt, input, enc, sax, userdata)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:119
  Original Name: xmlSchemaValueAppend/usr/include/libxml2/libxml/xmlschemastypes.h:119

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValueAppend(prev: NullablePointer[XmlSchemaVal] tag, cur: NullablePointer[XmlSchemaVal] tag): I32 =>
    @xmlSchemaValueAppend(prev, cur)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:126
  Original Name: xmlSchemaValueGetAsBoolean/usr/include/libxml2/libxml/xmlschemastypes.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValueGetAsBoolean(xmlval: NullablePointer[XmlSchemaVal] tag): I32 =>
    @xmlSchemaValueGetAsBoolean(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:124
  Original Name: xmlSchemaValueGetAsString/usr/include/libxml2/libxml/xmlschemastypes.h:124

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValueGetAsString(xmlval: NullablePointer[XmlSchemaVal] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlSchemaValueGetAsString(xmlval)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:122
  Original Name: xmlSchemaValueGetNext/usr/include/libxml2/libxml/xmlschemastypes.h:122

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
  fun xmlSchemaValueGetNext(cur: NullablePointer[XmlSchemaVal] tag): NullablePointer[XmlSchemaVal] =>
    @xmlSchemaValueGetNext(cur)


/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:90
  Original Name: xmlSchemaWhiteSpaceReplace/usr/include/libxml2/libxml/xmlschemastypes.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSchemaWhiteSpaceReplace(value: String): String =>
    var pcstring: Pointer[U8] =  @xmlSchemaWhiteSpaceReplace(value.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/schematron.h:98
  Original Name: xmlSchematronFree/usr/include/libxml2/libxml/schematron.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
  fun xmlSchematronFree(schema: NullablePointer[XmlSchematron] tag): None =>
    @xmlSchematronFree(schema)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:80
  Original Name: xmlSchematronFreeParserCtxt/usr/include/libxml2/libxml/schematron.h:80

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
  fun xmlSchematronFreeParserCtxt(ctxt: NullablePointer[XmlSchematronParserCtxt] tag): None =>
    @xmlSchematronFreeParserCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:132
  Original Name: xmlSchematronFreeValidCtxt/usr/include/libxml2/libxml/schematron.h:132

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
  fun xmlSchematronFreeValidCtxt(ctxt: NullablePointer[XmlSchematronValidCtxt] tag): None =>
    @xmlSchematronFreeValidCtxt(ctxt)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:78
  Original Name: xmlSchematronNewDocParserCtxt/usr/include/libxml2/libxml/schematron.h:78

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSchematronNewDocParserCtxt(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlSchematronParserCtxt] =>
    @xmlSchematronNewDocParserCtxt(doc)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:75
  Original Name: xmlSchematronNewMemParserCtxt/usr/include/libxml2/libxml/schematron.h:75

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlSchematronNewMemParserCtxt(buffer: String, size: I32): NullablePointer[XmlSchematronParserCtxt] =>
    @xmlSchematronNewMemParserCtxt(buffer.cstring(), size)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:73
  Original Name: xmlSchematronNewParserCtxt/usr/include/libxml2/libxml/schematron.h:73

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSchematronNewParserCtxt(uRL: String): NullablePointer[XmlSchematronParserCtxt] =>
    @xmlSchematronNewParserCtxt(uRL.cstring())


/*
  Source: /usr/include/libxml2/libxml/schematron.h:129
  Original Name: xmlSchematronNewValidCtxt/usr/include/libxml2/libxml/schematron.h:129

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [FundamentalType(int) size=32]
*/
  fun xmlSchematronNewValidCtxt(schema: NullablePointer[XmlSchematron] tag, options: I32): NullablePointer[XmlSchematronValidCtxt] =>
    @xmlSchematronNewValidCtxt(schema, options)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:96
  Original Name: xmlSchematronParse/usr/include/libxml2/libxml/schematron.h:96

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
  fun xmlSchematronParse(ctxt: NullablePointer[XmlSchematronParserCtxt] tag): NullablePointer[XmlSchematron] =>
    @xmlSchematronParse(ctxt)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:103
  Original Name: xmlSchematronSetValidStructuredErrors/usr/include/libxml2/libxml/schematron.h:103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSchematronSetValidStructuredErrors(ctxt: NullablePointer[XmlSchematronValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag): None =>
    @xmlSchematronSetValidStructuredErrors(ctxt, serror, ctx)


/*
  Source: /usr/include/libxml2/libxml/schematron.h:134
  Original Name: xmlSchematronValidateDoc/usr/include/libxml2/libxml/schematron.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSchematronValidateDoc(ctxt: NullablePointer[XmlSchematronValidCtxt] tag, instance: NullablePointer[XmlDoc] tag): I32 =>
    @xmlSchematronValidateDoc(ctxt, instance)


/*
  Source: /usr/include/libxml2/libxml/tree.h:999
  Original Name: xmlSearchNs/usr/include/libxml2/libxml/tree.h:999

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSearchNs(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, nameSpace: String): NullablePointer[XmlNs] =>
    @xmlSearchNs(doc, node, nameSpace.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1003
  Original Name: xmlSearchNsByHref/usr/include/libxml2/libxml/tree.h:1003

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSearchNsByHref(doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, href: String): NullablePointer[XmlNs] =>
    @xmlSearchNsByHref(doc, node, href.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:709
  Original Name: xmlSetBufferAllocationScheme/usr/include/libxml2/libxml/tree.h:709

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [Enumeration size=32,fid: f16]
*/
  fun xmlSetBufferAllocationScheme(scheme: I32): None =>
    @xmlSetBufferAllocationScheme(scheme)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1264
  Original Name: xmlSetCompressMode/usr/include/libxml2/libxml/tree.h:1264

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlSetCompressMode(mode: I32): None =>
    @xmlSetCompressMode(mode)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1259
  Original Name: xmlSetDocCompressMode/usr/include/libxml2/libxml/tree.h:1259

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlSetDocCompressMode(doc: NullablePointer[XmlDoc] tag, mode: I32): None =>
    @xmlSetDocCompressMode(doc, mode)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:600
  Original Name: xmlSetEntityReferenceFunc/usr/include/libxml2/libxml/parserInternals.h:600

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSetEntityReferenceFunc(func: Pointer[None] tag): None =>
    @xmlSetEntityReferenceFunc(func)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1068
  Original Name: xmlSetExternalEntityLoader/usr/include/libxml2/libxml/parser.h:1068

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSetExternalEntityLoader(f: Pointer[None] tag): None =>
    @xmlSetExternalEntityLoader(f)


/*
  Source: /usr/include/libxml2/libxml/parser.h:1007
  Original Name: xmlSetFeature/usr/include/libxml2/libxml/parser.h:1007

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlSetFeature(ctxt: NullablePointer[XmlParserCtxt] tag, name: String, value: Pointer[None] tag): I32 =>
    @xmlSetFeature(ctxt, name.cstring(), value)


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:863
  Original Name: xmlSetGenericErrorFunc/usr/include/libxml2/libxml/xmlerror.h:863

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSetGenericErrorFunc(ctx: Pointer[None] tag, handler: Pointer[None] tag): None =>
    @xmlSetGenericErrorFunc(ctx, handler)


/*
  Source: /usr/include/libxml2/libxml/tree.h:993
  Original Name: xmlSetListDoc/usr/include/libxml2/libxml/tree.h:993

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSetListDoc(list: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag): None =>
    @xmlSetListDoc(list, doc)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1014
  Original Name: xmlSetNs/usr/include/libxml2/libxml/tree.h:1014

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlSetNs(node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag): None =>
    @xmlSetNs(node, ns)


/*
  Source: /usr/include/libxml2/libxml/tree.h:1031
  Original Name: xmlSetNsProp/usr/include/libxml2/libxml/tree.h:1031

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSetNsProp(node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlSetNsProp(node, ns, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1027
  Original Name: xmlSetProp/usr/include/libxml2/libxml/tree.h:1027

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlSetProp(node: NullablePointer[XmlNode] tag, name: String, value: String): NullablePointer[XmlAttr] =>
    @xmlSetProp(node, name.cstring(), value.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:869
  Original Name: xmlSetStructuredErrorFunc/usr/include/libxml2/libxml/xmlerror.h:869

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlSetStructuredErrorFunc(ctx: Pointer[None] tag, handler: Pointer[None] tag): None =>
    @xmlSetStructuredErrorFunc(ctx, handler)


/*
  Source: /usr/include/libxml2/libxml/tree.h:990
  Original Name: xmlSetTreeDoc/usr/include/libxml2/libxml/tree.h:990

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlSetTreeDoc(tree: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag): None =>
    @xmlSetTreeDoc(tree, doc)


/*
  Source: /usr/include/libxml2/libxml/parser.h:988
  Original Name: xmlSetupParserForBuffer/usr/include/libxml2/libxml/parser.h:988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlSetupParserForBuffer(ctxt: NullablePointer[XmlParserCtxt] tag, buffer: String, filename: String): None =>
    @xmlSetupParserForBuffer(ctxt, buffer.cstring(), filename.cstring())


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:205
  Original Name: xmlShell/usr/include/libxml2/libxml/debugXML.h:205

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
  fun xmlShell(doc: NullablePointer[XmlDoc] tag, filename: String, input: Pointer[None] tag, output: NullablePointer[IOFILE] tag): None =>
    @xmlShell(doc, filename.cstring(), input, output)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:150
  Original Name: xmlShellBase/usr/include/libxml2/libxml/debugXML.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellBase(ctxt: NullablePointer[XmlShellCtxt] tag, arg: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellBase(ctxt, arg.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:168
  Original Name: xmlShellCat/usr/include/libxml2/libxml/debugXML.h:168

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellCat(ctxt: NullablePointer[XmlShellCtxt] tag, arg: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellCat(ctxt, arg.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:155
  Original Name: xmlShellDir/usr/include/libxml2/libxml/debugXML.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellDir(ctxt: NullablePointer[XmlShellCtxt] tag, arg: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellDir(ctxt, arg.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:191
  Original Name: xmlShellDu/usr/include/libxml2/libxml/debugXML.h:191

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellDu(ctxt: NullablePointer[XmlShellCtxt] tag, arg: String, tree: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellDu(ctxt, arg.cstring(), tree, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:145
  Original Name: xmlShellList/usr/include/libxml2/libxml/debugXML.h:145

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellList(ctxt: NullablePointer[XmlShellCtxt] tag, arg: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellList(ctxt, arg.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:160
  Original Name: xmlShellLoad/usr/include/libxml2/libxml/debugXML.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellLoad(ctxt: NullablePointer[XmlShellCtxt] tag, filename: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellLoad(ctxt, filename.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:166
  Original Name: xmlShellPrintNode/usr/include/libxml2/libxml/debugXML.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellPrintNode(node: NullablePointer[XmlNode] tag): None =>
    @xmlShellPrintNode(node)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:140
  Original Name: xmlShellPrintXPathError/usr/include/libxml2/libxml/debugXML.h:140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlShellPrintXPathError(errorType: I32, arg: String): None =>
    @xmlShellPrintXPathError(errorType, arg.cstring())


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:143
  Original Name: xmlShellPrintXPathResult/usr/include/libxml2/libxml/debugXML.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlShellPrintXPathResult(list: NullablePointer[XmlXPathObject] tag): None =>
    @xmlShellPrintXPathResult(list)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:196
  Original Name: xmlShellPwd/usr/include/libxml2/libxml/debugXML.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellPwd(ctxt: NullablePointer[XmlShellCtxt] tag, buffer: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellPwd(ctxt, buffer.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:178
  Original Name: xmlShellSave/usr/include/libxml2/libxml/debugXML.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellSave(ctxt: NullablePointer[XmlShellCtxt] tag, filename: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellSave(ctxt, filename.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:185
  Original Name: xmlShellValidate/usr/include/libxml2/libxml/debugXML.h:185

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellValidate(ctxt: NullablePointer[XmlShellCtxt] tag, dtd: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellValidate(ctxt, dtd.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/debugXML.h:173
  Original Name: xmlShellWrite/usr/include/libxml2/libxml/debugXML.h:173

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f69]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlShellWrite(ctxt: NullablePointer[XmlShellCtxt] tag, filename: String, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlShellWrite(ctxt, filename.cstring(), node, node2)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:553
  Original Name: xmlSkipBlankChars/usr/include/libxml2/libxml/parserInternals.h:553

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlSkipBlankChars(ctxt: NullablePointer[XmlParserCtxt] tag): I32 =>
    @xmlSkipBlankChars(ctxt)


/*
  Source: /usr/include/libxml2/libxml/valid.h:195
  Original Name: xmlSnprintfElementContent/usr/include/libxml2/libxml/valid.h:195

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlSnprintfElementContent(buf: String, size: I32, content: NullablePointer[XmlElementContent] tag, englob: I32): None =>
    @xmlSnprintfElementContent(buf.cstring(), size, content, englob)


/*
  Source: /usr/include/libxml2/libxml/tree.h:701
  Original Name: xmlSplitQName3/usr/include/libxml2/libxml/tree.h:701

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun xmlSplitQName3(name: String, len: Pointer[I32] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlSplitQName3(name.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/valid.h:202
  Original Name: xmlSprintfElementContent/usr/include/libxml2/libxml/valid.h:202

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlSprintfElementContent(buf: String, content: NullablePointer[XmlElementContent] tag, englob: I32): None =>
    @xmlSprintfElementContent(buf.cstring(), content, englob)


/*
  Source: /usr/include/libxml2/libxml/parser.h:856
  Original Name: xmlStopParser/usr/include/libxml2/libxml/parser.h:856

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
  fun xmlStopParser(ctxt: NullablePointer[XmlParserCtxt] tag): None =>
    @xmlStopParser(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:78
  Original Name: xmlStrEqual/usr/include/libxml2/libxml/xmlstring.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrEqual(str1: String, str2: String): I32 =>
    @xmlStrEqual(str1.cstring(), str2.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:98
  Original Name: xmlStrPrintf/usr/include/libxml2/libxml/xmlstring.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlStrPrintf(buf: String, len: I32, msg: String, ...): I32 =>
    @xmlStrPrintf(buf.cstring(), len, msg.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:81
  Original Name: xmlStrQEqual/usr/include/libxml2/libxml/xmlstring.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrQEqual(pref: String, name: String, str: String): I32 =>
    @xmlStrQEqual(pref.cstring(), name.cstring(), str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:71
  Original Name: xmlStrcasecmp/usr/include/libxml2/libxml/xmlstring.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrcasecmp(str1: String, str2: String): I32 =>
    @xmlStrcasecmp(str1.cstring(), str2.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:61
  Original Name: xmlStrcasestr/usr/include/libxml2/libxml/xmlstring.h:61

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrcasestr(str: String, xmlval: String): String val =>
    var pcstring: Pointer[U8] =  @xmlStrcasestr(str.cstring(), xmlval.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:87
  Original Name: xmlStrcat/usr/include/libxml2/libxml/xmlstring.h:87

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrcat(cur: String, add: String): String =>
    var pcstring: Pointer[U8] =  @xmlStrcat(cur.cstring(), add.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:55
  Original Name: xmlStrchr/usr/include/libxml2/libxml/xmlstring.h:55

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
*/
  fun xmlStrchr(str: String, xmlval: U8): String val =>
    var pcstring: Pointer[U8] =  @xmlStrchr(str.cstring(), xmlval)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:64
  Original Name: xmlStrcmp/usr/include/libxml2/libxml/xmlstring.h:64

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrcmp(str1: String, str2: String): I32 =>
    @xmlStrcmp(str1.cstring(), str2.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:41
  Original Name: xmlStrdup/usr/include/libxml2/libxml/xmlstring.h:41

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrdup(cur: String): String =>
    var pcstring: Pointer[U8] =  @xmlStrdup(cur.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/pattern.h:91
  Original Name: xmlStreamPop/usr/include/libxml2/libxml/pattern.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlStreamPop(stream: NullablePointer[XmlStreamCtxt] tag): I32 =>
    @xmlStreamPop(stream)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:83
  Original Name: xmlStreamPush/usr/include/libxml2/libxml/pattern.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStreamPush(stream: NullablePointer[XmlStreamCtxt] tag, name: String, ns: String): I32 =>
    @xmlStreamPush(stream, name.cstring(), ns.cstring())


/*
  Source: /usr/include/libxml2/libxml/pattern.h:87
  Original Name: xmlStreamPushAttr/usr/include/libxml2/libxml/pattern.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStreamPushAttr(stream: NullablePointer[XmlStreamCtxt] tag, name: String, ns: String): I32 =>
    @xmlStreamPushAttr(stream, name.cstring(), ns.cstring())


/*
  Source: /usr/include/libxml2/libxml/pattern.h:78
  Original Name: xmlStreamPushNode/usr/include/libxml2/libxml/pattern.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStreamPushNode(stream: NullablePointer[XmlStreamCtxt] tag, name: String, ns: String, nodeType: I32): I32 =>
    @xmlStreamPushNode(stream, name.cstring(), ns.cstring(), nodeType)


/*
  Source: /usr/include/libxml2/libxml/pattern.h:93
  Original Name: xmlStreamWantsAnyNode/usr/include/libxml2/libxml/pattern.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
  fun xmlStreamWantsAnyNode(stream: NullablePointer[XmlStreamCtxt] tag): I32 =>
    @xmlStreamWantsAnyNode(stream)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:554
  Original Name: xmlStringCurrentChar/usr/include/libxml2/libxml/parserInternals.h:554

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun xmlStringCurrentChar(ctxt: NullablePointer[XmlParserCtxt] tag, cur: String, len: Pointer[I32] tag): I32 =>
    @xmlStringCurrentChar(ctxt, cur.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:522
  Original Name: xmlStringDecodeEntities/usr/include/libxml2/libxml/parserInternals.h:522

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
*/
  fun xmlStringDecodeEntities(ctxt: NullablePointer[XmlParserCtxt] tag, str: String, what: I32, xmlend: U8, end2: U8, end3: U8): String =>
    var pcstring: Pointer[U8] =  @xmlStringDecodeEntities(ctxt, str.cstring(), what, xmlend, end2, end3)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1055
  Original Name: xmlStringGetNodeList/usr/include/libxml2/libxml/tree.h:1055

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStringGetNodeList(doc: NullablePointer[XmlDoc] tag, value: String): NullablePointer[XmlNode] =>
    @xmlStringGetNodeList(doc, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:529
  Original Name: xmlStringLenDecodeEntities/usr/include/libxml2/libxml/parserInternals.h:529

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
*/
  fun xmlStringLenDecodeEntities(ctxt: NullablePointer[XmlParserCtxt] tag, str: String, len: I32, what: I32, xmlend: U8, end2: U8, end3: U8): String =>
    var pcstring: Pointer[U8] =  @xmlStringLenDecodeEntities(ctxt, str.cstring(), len, what, xmlend, end2, end3)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:1058
  Original Name: xmlStringLenGetNodeList/usr/include/libxml2/libxml/tree.h:1058

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStringLenGetNodeList(doc: NullablePointer[XmlDoc] tag, value: String, len: I32): NullablePointer[XmlNode] =>
    @xmlStringLenGetNodeList(doc, value.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:85
  Original Name: xmlStrlen/usr/include/libxml2/libxml/xmlstring.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrlen(str: String): I32 =>
    @xmlStrlen(str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:74
  Original Name: xmlStrncasecmp/usr/include/libxml2/libxml/xmlstring.h:74

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStrncasecmp(str1: String, str2: String, len: I32): I32 =>
    @xmlStrncasecmp(str1.cstring(), str2.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:90
  Original Name: xmlStrncat/usr/include/libxml2/libxml/xmlstring.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStrncat(cur: String, add: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlStrncat(cur.cstring(), add.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:94
  Original Name: xmlStrncatNew/usr/include/libxml2/libxml/xmlstring.h:94

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStrncatNew(str1: String, str2: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlStrncatNew(str1.cstring(), str2.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:67
  Original Name: xmlStrncmp/usr/include/libxml2/libxml/xmlstring.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStrncmp(str1: String, str2: String, len: I32): I32 =>
    @xmlStrncmp(str1.cstring(), str2.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:43
  Original Name: xmlStrndup/usr/include/libxml2/libxml/xmlstring.h:43

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlStrndup(cur: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlStrndup(cur.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:58
  Original Name: xmlStrstr/usr/include/libxml2/libxml/xmlstring.h:58

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlStrstr(str: String, xmlval: String): String val =>
    var pcstring: Pointer[U8] =  @xmlStrstr(str.cstring(), xmlval.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:51
  Original Name: xmlStrsub/usr/include/libxml2/libxml/xmlstring.h:51

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlStrsub(str: String, start: I32, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlStrsub(str.cstring(), start, len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/parser.h:852
  Original Name: xmlSubstituteEntitiesDefault/usr/include/libxml2/libxml/parser.h:852

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlSubstituteEntitiesDefault(xmlval: I32): I32 =>
    @xmlSubstituteEntitiesDefault(xmlval)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:337
  Original Name: xmlSwitchEncoding/usr/include/libxml2/libxml/parserInternals.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [Enumeration size=32,fid: f42]
*/
  fun xmlSwitchEncoding(ctxt: NullablePointer[XmlParserCtxt] tag, enc: I32): I32 =>
    @xmlSwitchEncoding(ctxt, enc)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:343
  Original Name: xmlSwitchInputEncoding/usr/include/libxml2/libxml/parserInternals.h:343

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlSwitchInputEncoding(ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInput] tag, handler: NullablePointer[XmlCharEncodingHandler] tag): I32 =>
    @xmlSwitchInputEncoding(ctxt, input, handler)


/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:340
  Original Name: xmlSwitchToEncoding/usr/include/libxml2/libxml/parserInternals.h:340

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
  fun xmlSwitchToEncoding(ctxt: NullablePointer[XmlParserCtxt] tag, handler: NullablePointer[XmlCharEncodingHandler] tag): I32 =>
    @xmlSwitchToEncoding(ctxt, handler)


/*
  Source: /usr/include/libxml2/libxml/tree.h:982
  Original Name: xmlTextConcat/usr/include/libxml2/libxml/tree.h:982

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlTextConcat(node: NullablePointer[XmlNode] tag, content: String, len: I32): I32 =>
    @xmlTextConcat(node, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/tree.h:979
  Original Name: xmlTextMerge/usr/include/libxml2/libxml/tree.h:979

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlTextMerge(first: NullablePointer[XmlNode] tag, second: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlTextMerge(first, second)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:148
  Original Name: xmlTextReaderAttributeCount/usr/include/libxml2/libxml/xmlreader.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderAttributeCount(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderAttributeCount(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:191
  Original Name: xmlTextReaderBaseUri/usr/include/libxml2/libxml/xmlreader.h:191

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderBaseUri(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderBaseUri(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:316
  Original Name: xmlTextReaderByteConsumed/usr/include/libxml2/libxml/xmlreader.h:316

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderByteConsumed(reader: NullablePointer[XmlTextReader] tag): I64 =>
    @xmlTextReaderByteConsumed(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:209
  Original Name: xmlTextReaderClose/usr/include/libxml2/libxml/xmlreader.h:209

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderClose(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderClose(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:169
  Original Name: xmlTextReaderConstBaseUri/usr/include/libxml2/libxml/xmlreader.h:169

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstBaseUri(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstBaseUri(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:244
  Original Name: xmlTextReaderConstEncoding/usr/include/libxml2/libxml/xmlreader.h:244

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstEncoding(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstEncoding(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:171
  Original Name: xmlTextReaderConstLocalName/usr/include/libxml2/libxml/xmlreader.h:171

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstLocalName(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstLocalName(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:173
  Original Name: xmlTextReaderConstName/usr/include/libxml2/libxml/xmlreader.h:173

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstName(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstName(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:175
  Original Name: xmlTextReaderConstNamespaceUri/usr/include/libxml2/libxml/xmlreader.h:175

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstNamespaceUri(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstNamespaceUri(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:177
  Original Name: xmlTextReaderConstPrefix/usr/include/libxml2/libxml/xmlreader.h:177

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstPrefix(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstPrefix(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:181
  Original Name: xmlTextReaderConstString/usr/include/libxml2/libxml/xmlreader.h:181

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderConstString(reader: NullablePointer[XmlTextReader] tag, str: String): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstString(reader, str.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:184
  Original Name: xmlTextReaderConstValue/usr/include/libxml2/libxml/xmlreader.h:184

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstValue(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstValue(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:179
  Original Name: xmlTextReaderConstXmlLang/usr/include/libxml2/libxml/xmlreader.h:179

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstXmlLang(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstXmlLang(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:307
  Original Name: xmlTextReaderConstXmlVersion/usr/include/libxml2/libxml/xmlreader.h:307

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderConstXmlVersion(reader: NullablePointer[XmlTextReader] tag): String val =>
    var pcstring: Pointer[U8] =  @xmlTextReaderConstXmlVersion(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:274
  Original Name: xmlTextReaderCurrentDoc/usr/include/libxml2/libxml/xmlreader.h:274

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderCurrentDoc(reader: NullablePointer[XmlTextReader] tag): NullablePointer[XmlDoc] =>
    @xmlTextReaderCurrentDoc(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:257
  Original Name: xmlTextReaderCurrentNode/usr/include/libxml2/libxml/xmlreader.h:257

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderCurrentNode(reader: NullablePointer[XmlTextReader] tag): NullablePointer[XmlNode] =>
    @xmlTextReaderCurrentNode(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:150
  Original Name: xmlTextReaderDepth/usr/include/libxml2/libxml/xmlreader.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderDepth(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderDepth(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:276
  Original Name: xmlTextReaderExpand/usr/include/libxml2/libxml/xmlreader.h:276

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderExpand(reader: NullablePointer[XmlTextReader] tag): NullablePointer[XmlNode] =>
    @xmlTextReaderExpand(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:214
  Original Name: xmlTextReaderGetAttribute/usr/include/libxml2/libxml/xmlreader.h:214

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderGetAttribute(reader: NullablePointer[XmlTextReader] tag, name: String): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderGetAttribute(reader, name.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:211
  Original Name: xmlTextReaderGetAttributeNo/usr/include/libxml2/libxml/xmlreader.h:211

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderGetAttributeNo(reader: NullablePointer[XmlTextReader] tag, no: I32): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderGetAttributeNo(reader, no)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:217
  Original Name: xmlTextReaderGetAttributeNs/usr/include/libxml2/libxml/xmlreader.h:217

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderGetAttributeNs(reader: NullablePointer[XmlTextReader] tag, localName: String, namespaceURI: String): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderGetAttributeNs(reader, localName.cstring(), namespaceURI.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:417
  Original Name: xmlTextReaderGetErrorHandler/usr/include/libxml2/libxml/xmlreader.h:417

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlTextReaderGetErrorHandler(reader: NullablePointer[XmlTextReader] tag, f: NullablePointer[Pointer[None]] tag, arg: NullablePointer[Pointer[None]] tag): None =>
    @xmlTextReaderGetErrorHandler(reader, f, arg)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:263
  Original Name: xmlTextReaderGetParserColumnNumber/usr/include/libxml2/libxml/xmlreader.h:263

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderGetParserColumnNumber(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderGetParserColumnNumber(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:260
  Original Name: xmlTextReaderGetParserLineNumber/usr/include/libxml2/libxml/xmlreader.h:260

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderGetParserLineNumber(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderGetParserLineNumber(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:254
  Original Name: xmlTextReaderGetParserProp/usr/include/libxml2/libxml/xmlreader.h:254

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderGetParserProp(reader: NullablePointer[XmlTextReader] tag, prop: I32): I32 =>
    @xmlTextReaderGetParserProp(reader, prop)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:221
  Original Name: xmlTextReaderGetRemainder/usr/include/libxml2/libxml/xmlreader.h:221

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderGetRemainder(reader: NullablePointer[XmlTextReader] tag): NullablePointer[XmlParserInputBuffer] =>
    @xmlTextReaderGetRemainder(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:152
  Original Name: xmlTextReaderHasAttributes/usr/include/libxml2/libxml/xmlreader.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderHasAttributes(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderHasAttributes(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:154
  Original Name: xmlTextReaderHasValue/usr/include/libxml2/libxml/xmlreader.h:154

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderHasValue(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderHasValue(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:156
  Original Name: xmlTextReaderIsDefault/usr/include/libxml2/libxml/xmlreader.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderIsDefault(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderIsDefault(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:158
  Original Name: xmlTextReaderIsEmptyElement/usr/include/libxml2/libxml/xmlreader.h:158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderIsEmptyElement(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderIsEmptyElement(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:166
  Original Name: xmlTextReaderIsNamespaceDecl/usr/include/libxml2/libxml/xmlreader.h:166

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderIsNamespaceDecl(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderIsNamespaceDecl(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:282
  Original Name: xmlTextReaderIsValid/usr/include/libxml2/libxml/xmlreader.h:282

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderIsValid(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderIsValid(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:193
  Original Name: xmlTextReaderLocalName/usr/include/libxml2/libxml/xmlreader.h:193

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderLocalName(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderLocalName(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:407
  Original Name: xmlTextReaderLocatorBaseURI/usr/include/libxml2/libxml/xmlreader.h:407

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlTextReaderLocatorBaseURI(locator: Pointer[None] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderLocatorBaseURI(locator)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:405
  Original Name: xmlTextReaderLocatorLineNumber/usr/include/libxml2/libxml/xmlreader.h:405

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlTextReaderLocatorLineNumber(locator: Pointer[None] tag): I32 =>
    @xmlTextReaderLocatorLineNumber(locator)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:223
  Original Name: xmlTextReaderLookupNamespace/usr/include/libxml2/libxml/xmlreader.h:223

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderLookupNamespace(reader: NullablePointer[XmlTextReader] tag, prefix: String): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderLookupNamespace(reader, prefix.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:229
  Original Name: xmlTextReaderMoveToAttribute/usr/include/libxml2/libxml/xmlreader.h:229

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderMoveToAttribute(reader: NullablePointer[XmlTextReader] tag, name: String): I32 =>
    @xmlTextReaderMoveToAttribute(reader, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:226
  Original Name: xmlTextReaderMoveToAttributeNo/usr/include/libxml2/libxml/xmlreader.h:226

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderMoveToAttributeNo(reader: NullablePointer[XmlTextReader] tag, no: I32): I32 =>
    @xmlTextReaderMoveToAttributeNo(reader, no)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:232
  Original Name: xmlTextReaderMoveToAttributeNs/usr/include/libxml2/libxml/xmlreader.h:232

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextReaderMoveToAttributeNs(reader: NullablePointer[XmlTextReader] tag, localName: String, namespaceURI: String): I32 =>
    @xmlTextReaderMoveToAttributeNs(reader, localName.cstring(), namespaceURI.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:240
  Original Name: xmlTextReaderMoveToElement/usr/include/libxml2/libxml/xmlreader.h:240

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderMoveToElement(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderMoveToElement(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:236
  Original Name: xmlTextReaderMoveToFirstAttribute/usr/include/libxml2/libxml/xmlreader.h:236

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderMoveToFirstAttribute(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderMoveToFirstAttribute(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:238
  Original Name: xmlTextReaderMoveToNextAttribute/usr/include/libxml2/libxml/xmlreader.h:238

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderMoveToNextAttribute(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderMoveToNextAttribute(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:195
  Original Name: xmlTextReaderName/usr/include/libxml2/libxml/xmlreader.h:195

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderName(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderName(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:197
  Original Name: xmlTextReaderNamespaceUri/usr/include/libxml2/libxml/xmlreader.h:197

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderNamespaceUri(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderNamespaceUri(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:278
  Original Name: xmlTextReaderNext/usr/include/libxml2/libxml/xmlreader.h:278

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderNext(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderNext(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:280
  Original Name: xmlTextReaderNextSibling/usr/include/libxml2/libxml/xmlreader.h:280

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderNextSibling(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderNextSibling(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:160
  Original Name: xmlTextReaderNodeType/usr/include/libxml2/libxml/xmlreader.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderNodeType(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderNodeType(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:242
  Original Name: xmlTextReaderNormalization/usr/include/libxml2/libxml/xmlreader.h:242

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderNormalization(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderNormalization(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:199
  Original Name: xmlTextReaderPrefix/usr/include/libxml2/libxml/xmlreader.h:199

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderPrefix(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderPrefix(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:266
  Original Name: xmlTextReaderPreserve/usr/include/libxml2/libxml/xmlreader.h:266

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderPreserve(reader: NullablePointer[XmlTextReader] tag): NullablePointer[XmlNode] =>
    @xmlTextReaderPreserve(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:162
  Original Name: xmlTextReaderQuoteChar/usr/include/libxml2/libxml/xmlreader.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderQuoteChar(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderQuoteChar(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:129
  Original Name: xmlTextReaderRead/usr/include/libxml2/libxml/xmlreader.h:129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderRead(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderRead(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:142
  Original Name: xmlTextReaderReadAttributeValue/usr/include/libxml2/libxml/xmlreader.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderReadAttributeValue(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderReadAttributeValue(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:133
  Original Name: xmlTextReaderReadInnerXml/usr/include/libxml2/libxml/xmlreader.h:133

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderReadInnerXml(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderReadInnerXml(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:136
  Original Name: xmlTextReaderReadOuterXml/usr/include/libxml2/libxml/xmlreader.h:136

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderReadOuterXml(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderReadOuterXml(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:164
  Original Name: xmlTextReaderReadState/usr/include/libxml2/libxml/xmlreader.h:164

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderReadState(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderReadState(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:140
  Original Name: xmlTextReaderReadString/usr/include/libxml2/libxml/xmlreader.h:140

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderReadString(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderReadString(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:293
  Original Name: xmlTextReaderRelaxNGSetSchema/usr/include/libxml2/libxml/xmlreader.h:293

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
  fun xmlTextReaderRelaxNGSetSchema(reader: NullablePointer[XmlTextReader] tag, schema: NullablePointer[XmlRelaxNG] tag): I32 =>
    @xmlTextReaderRelaxNGSetSchema(reader, schema)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:285
  Original Name: xmlTextReaderRelaxNGValidate/usr/include/libxml2/libxml/xmlreader.h:285

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlTextReaderRelaxNGValidate(reader: NullablePointer[XmlTextReader] tag, rng: String): I32 =>
    @xmlTextReaderRelaxNGValidate(reader, rng.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:288
  Original Name: xmlTextReaderRelaxNGValidateCtxt/usr/include/libxml2/libxml/xmlreader.h:288

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f76]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderRelaxNGValidateCtxt(reader: NullablePointer[XmlTextReader] tag, ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, options: I32): I32 =>
    @xmlTextReaderRelaxNGValidateCtxt(reader, ctxt, options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:296
  Original Name: xmlTextReaderSchemaValidate/usr/include/libxml2/libxml/xmlreader.h:296

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlTextReaderSchemaValidate(reader: NullablePointer[XmlTextReader] tag, xsd: String): I32 =>
    @xmlTextReaderSchemaValidate(reader, xsd.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:299
  Original Name: xmlTextReaderSchemaValidateCtxt/usr/include/libxml2/libxml/xmlreader.h:299

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f82]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderSchemaValidateCtxt(reader: NullablePointer[XmlTextReader] tag, ctxt: NullablePointer[XmlSchemaValidCtxt] tag, options: I32): I32 =>
    @xmlTextReaderSchemaValidateCtxt(reader, ctxt, options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:409
  Original Name: xmlTextReaderSetErrorHandler/usr/include/libxml2/libxml/xmlreader.h:409

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlTextReaderSetErrorHandler(reader: NullablePointer[XmlTextReader] tag, f: Pointer[None] tag, arg: Pointer[None] tag): None =>
    @xmlTextReaderSetErrorHandler(reader, f, arg)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:250
  Original Name: xmlTextReaderSetParserProp/usr/include/libxml2/libxml/xmlreader.h:250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderSetParserProp(reader: NullablePointer[XmlTextReader] tag, prop: I32, value: I32): I32 =>
    @xmlTextReaderSetParserProp(reader, prop, value)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:303
  Original Name: xmlTextReaderSetSchema/usr/include/libxml2/libxml/xmlreader.h:303

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
  fun xmlTextReaderSetSchema(reader: NullablePointer[XmlTextReader] tag, schema: NullablePointer[XmlSchema] tag): I32 =>
    @xmlTextReaderSetSchema(reader, schema)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:413
  Original Name: xmlTextReaderSetStructuredErrorHandler/usr/include/libxml2/libxml/xmlreader.h:413

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlTextReaderSetStructuredErrorHandler(reader: NullablePointer[XmlTextReader] tag, f: Pointer[None] tag, arg: Pointer[None] tag): None =>
    @xmlTextReaderSetStructuredErrorHandler(reader, f, arg)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:121
  Original Name: xmlTextReaderSetup/usr/include/libxml2/libxml/xmlreader.h:121

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlTextReaderSetup(reader: NullablePointer[XmlTextReader] tag, input: NullablePointer[XmlParserInputBuffer] tag, uRL: String, encoding: String, options: I32): I32 =>
    @xmlTextReaderSetup(reader, input, uRL.cstring(), encoding.cstring(), options)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:309
  Original Name: xmlTextReaderStandalone/usr/include/libxml2/libxml/xmlreader.h:309

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderStandalone(reader: NullablePointer[XmlTextReader] tag): I32 =>
    @xmlTextReaderStandalone(reader)


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:203
  Original Name: xmlTextReaderValue/usr/include/libxml2/libxml/xmlreader.h:203

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderValue(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderValue(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:201
  Original Name: xmlTextReaderXmlLang/usr/include/libxml2/libxml/xmlreader.h:201

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
  fun xmlTextReaderXmlLang(reader: NullablePointer[XmlTextReader] tag): String =>
    var pcstring: Pointer[U8] =  @xmlTextReaderXmlLang(reader)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:196
  Original Name: xmlTextWriterEndAttribute/usr/include/libxml2/libxml/xmlwriter.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndAttribute(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndAttribute(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:281
  Original Name: xmlTextWriterEndCDATA/usr/include/libxml2/libxml/xmlwriter.h:281

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndCDATA(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndCDATA(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:68
  Original Name: xmlTextWriterEndComment/usr/include/libxml2/libxml/xmlwriter.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndComment(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndComment(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:306
  Original Name: xmlTextWriterEndDTD/usr/include/libxml2/libxml/xmlwriter.h:306

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndDTD(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndDTD(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:375
  Original Name: xmlTextWriterEndDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndDTDAttlist(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndDTDAttlist(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:345
  Original Name: xmlTextWriterEndDTDElement/usr/include/libxml2/libxml/xmlwriter.h:345

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndDTDElement(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndDTDElement(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:405
  Original Name: xmlTextWriterEndDTDEntity/usr/include/libxml2/libxml/xmlwriter.h:405

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndDTDEntity(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndDTDEntity(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:60
  Original Name: xmlTextWriterEndDocument/usr/include/libxml2/libxml/xmlwriter.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndDocument(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndDocument(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:96
  Original Name: xmlTextWriterEndElement/usr/include/libxml2/libxml/xmlwriter.h:96

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndElement(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndElement(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:250
  Original Name: xmlTextWriterEndPI/usr/include/libxml2/libxml/xmlwriter.h:250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterEndPI(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterEndPI(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:480
  Original Name: xmlTextWriterFlush/usr/include/libxml2/libxml/xmlwriter.h:480

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterFlush(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterFlush(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:97
  Original Name: xmlTextWriterFullEndElement/usr/include/libxml2/libxml/xmlwriter.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterFullEndElement(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterFullEndElement(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:468
  Original Name: xmlTextWriterSetIndent/usr/include/libxml2/libxml/xmlwriter.h:468

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
*/
  fun xmlTextWriterSetIndent(writer: NullablePointer[XmlTextWriter] tag, indent: I32): I32 =>
    @xmlTextWriterSetIndent(writer, indent)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:470
  Original Name: xmlTextWriterSetIndentString/usr/include/libxml2/libxml/xmlwriter.h:470

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterSetIndentString(writer: NullablePointer[XmlTextWriter] tag, str: String): I32 =>
    @xmlTextWriterSetIndentString(writer, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:474
  Original Name: xmlTextWriterSetQuoteChar/usr/include/libxml2/libxml/xmlwriter.h:474

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterSetQuoteChar(writer: NullablePointer[XmlTextWriter] tag, quotechar: U8): I32 =>
    @xmlTextWriterSetQuoteChar(writer, quotechar)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:186
  Original Name: xmlTextWriterStartAttribute/usr/include/libxml2/libxml/xmlwriter.h:186

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartAttribute(writer: NullablePointer[XmlTextWriter] tag, name: String): I32 =>
    @xmlTextWriterStartAttribute(writer, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:188
  Original Name: xmlTextWriterStartAttributeNS/usr/include/libxml2/libxml/xmlwriter.h:188

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartAttributeNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String): I32 =>
    @xmlTextWriterStartAttributeNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:280
  Original Name: xmlTextWriterStartCDATA/usr/include/libxml2/libxml/xmlwriter.h:280

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterStartCDATA(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterStartCDATA(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:66
  Original Name: xmlTextWriterStartComment/usr/include/libxml2/libxml/xmlwriter.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
  fun xmlTextWriterStartComment(writer: NullablePointer[XmlTextWriter] tag): I32 =>
    @xmlTextWriterStartComment(writer)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:302
  Original Name: xmlTextWriterStartDTD/usr/include/libxml2/libxml/xmlwriter.h:302

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartDTD(writer: NullablePointer[XmlTextWriter] tag, name: String, pubid: String, sysid: String): I32 =>
    @xmlTextWriterStartDTD(writer, name.cstring(), pubid.cstring(), sysid.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:373
  Original Name: xmlTextWriterStartDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:373

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartDTDAttlist(writer: NullablePointer[XmlTextWriter] tag, name: String): I32 =>
    @xmlTextWriterStartDTDAttlist(writer, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:343
  Original Name: xmlTextWriterStartDTDElement/usr/include/libxml2/libxml/xmlwriter.h:343

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartDTDElement(writer: NullablePointer[XmlTextWriter] tag, name: String): I32 =>
    @xmlTextWriterStartDTDElement(writer, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:403
  Original Name: xmlTextWriterStartDTDEntity/usr/include/libxml2/libxml/xmlwriter.h:403

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartDTDEntity(writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: String): I32 =>
    @xmlTextWriterStartDTDEntity(writer, pe, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:56
  Original Name: xmlTextWriterStartDocument/usr/include/libxml2/libxml/xmlwriter.h:56

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlTextWriterStartDocument(writer: NullablePointer[XmlTextWriter] tag, version: String, encoding: String, standalone: String): I32 =>
    @xmlTextWriterStartDocument(writer, version.cstring(), encoding.cstring(), standalone.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:87
  Original Name: xmlTextWriterStartElement/usr/include/libxml2/libxml/xmlwriter.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartElement(writer: NullablePointer[XmlTextWriter] tag, name: String): I32 =>
    @xmlTextWriterStartElement(writer, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:89
  Original Name: xmlTextWriterStartElementNS/usr/include/libxml2/libxml/xmlwriter.h:89

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartElementNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String): I32 =>
    @xmlTextWriterStartElementNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:248
  Original Name: xmlTextWriterStartPI/usr/include/libxml2/libxml/xmlwriter.h:248

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterStartPI(writer: NullablePointer[XmlTextWriter] tag, target: String): I32 =>
    @xmlTextWriterStartPI(writer, target.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:213
  Original Name: xmlTextWriterWriteAttribute/usr/include/libxml2/libxml/xmlwriter.h:213

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteAttribute(writer: NullablePointer[XmlTextWriter] tag, name: String, content: String): I32 =>
    @xmlTextWriterWriteAttribute(writer, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:233
  Original Name: xmlTextWriterWriteAttributeNS/usr/include/libxml2/libxml/xmlwriter.h:233

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteAttributeNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String, content: String): I32 =>
    @xmlTextWriterWriteAttributeNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:175
  Original Name: xmlTextWriterWriteBase64/usr/include/libxml2/libxml/xmlwriter.h:175

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlTextWriterWriteBase64(writer: NullablePointer[XmlTextWriter] tag, data: String, start: I32, len: I32): I32 =>
    @xmlTextWriterWriteBase64(writer, data.cstring(), start, len)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:178
  Original Name: xmlTextWriterWriteBinHex/usr/include/libxml2/libxml/xmlwriter.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlTextWriterWriteBinHex(writer: NullablePointer[XmlTextWriter] tag, data: String, start: I32, len: I32): I32 =>
    @xmlTextWriterWriteBinHex(writer, data.cstring(), start, len)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:295
  Original Name: xmlTextWriterWriteCDATA/usr/include/libxml2/libxml/xmlwriter.h:295

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteCDATA(writer: NullablePointer[XmlTextWriter] tag, content: String): I32 =>
    @xmlTextWriterWriteCDATA(writer, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:78
  Original Name: xmlTextWriterWriteComment/usr/include/libxml2/libxml/xmlwriter.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteComment(writer: NullablePointer[XmlTextWriter] tag, content: String): I32 =>
    @xmlTextWriterWriteComment(writer, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:326
  Original Name: xmlTextWriterWriteDTD/usr/include/libxml2/libxml/xmlwriter.h:326

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTD(writer: NullablePointer[XmlTextWriter] tag, name: String, pubid: String, sysid: String, subset: String): I32 =>
    @xmlTextWriterWriteDTD(writer, name.cstring(), pubid.cstring(), sysid.cstring(), subset.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:392
  Original Name: xmlTextWriterWriteDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:392

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDAttlist(writer: NullablePointer[XmlTextWriter] tag, name: String, content: String): I32 =>
    @xmlTextWriterWriteDTDAttlist(writer, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:362
  Original Name: xmlTextWriterWriteDTDElement/usr/include/libxml2/libxml/xmlwriter.h:362

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDElement(writer: NullablePointer[XmlTextWriter] tag, name: String, content: String): I32 =>
    @xmlTextWriterWriteDTDElement(writer, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:443
  Original Name: xmlTextWriterWriteDTDEntity/usr/include/libxml2/libxml/xmlwriter.h:443

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDEntity(writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: String, pubid: String, sysid: String, ndataid: String, content: String): I32 =>
    @xmlTextWriterWriteDTDEntity(writer, pe, name.cstring(), pubid.cstring(), sysid.cstring(), ndataid.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:430
  Original Name: xmlTextWriterWriteDTDExternalEntity/usr/include/libxml2/libxml/xmlwriter.h:430

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDExternalEntity(writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: String, pubid: String, sysid: String, ndataid: String): I32 =>
    @xmlTextWriterWriteDTDExternalEntity(writer, pe, name.cstring(), pubid.cstring(), sysid.cstring(), ndataid.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:437
  Original Name: xmlTextWriterWriteDTDExternalEntityContents/usr/include/libxml2/libxml/xmlwriter.h:437

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDExternalEntityContents(writer: NullablePointer[XmlTextWriter] tag, pubid: String, sysid: String, ndataid: String): I32 =>
    @xmlTextWriterWriteDTDExternalEntityContents(writer, pubid.cstring(), sysid.cstring(), ndataid.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:425
  Original Name: xmlTextWriterWriteDTDInternalEntity/usr/include/libxml2/libxml/xmlwriter.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDInternalEntity(writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: String, content: String): I32 =>
    @xmlTextWriterWriteDTDInternalEntity(writer, pe, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:459
  Original Name: xmlTextWriterWriteDTDNotation/usr/include/libxml2/libxml/xmlwriter.h:459

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteDTDNotation(writer: NullablePointer[XmlTextWriter] tag, name: String, pubid: String, sysid: String): I32 =>
    @xmlTextWriterWriteDTDNotation(writer, name.cstring(), pubid.cstring(), sysid.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:114
  Original Name: xmlTextWriterWriteElement/usr/include/libxml2/libxml/xmlwriter.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteElement(writer: NullablePointer[XmlTextWriter] tag, name: String, content: String): I32 =>
    @xmlTextWriterWriteElement(writer, name.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:134
  Original Name: xmlTextWriterWriteElementNS/usr/include/libxml2/libxml/xmlwriter.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteElementNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String, content: String): I32 =>
    @xmlTextWriterWriteElementNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:203
  Original Name: xmlTextWriterWriteFormatAttribute/usr/include/libxml2/libxml/xmlwriter.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatAttribute(writer: NullablePointer[XmlTextWriter] tag, name: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatAttribute(writer, name.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:219
  Original Name: xmlTextWriterWriteFormatAttributeNS/usr/include/libxml2/libxml/xmlwriter.h:219

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatAttributeNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatAttributeNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:287
  Original Name: xmlTextWriterWriteFormatCDATA/usr/include/libxml2/libxml/xmlwriter.h:287

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatCDATA(writer: NullablePointer[XmlTextWriter] tag, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatCDATA(writer, format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:70
  Original Name: xmlTextWriterWriteFormatComment/usr/include/libxml2/libxml/xmlwriter.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatComment(writer: NullablePointer[XmlTextWriter] tag, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatComment(writer, format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:312
  Original Name: xmlTextWriterWriteFormatDTD/usr/include/libxml2/libxml/xmlwriter.h:312

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatDTD(writer: NullablePointer[XmlTextWriter] tag, name: String, pubid: String, sysid: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatDTD(writer, name.cstring(), pubid.cstring(), sysid.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:382
  Original Name: xmlTextWriterWriteFormatDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:382

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatDTDAttlist(writer: NullablePointer[XmlTextWriter] tag, name: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatDTDAttlist(writer, name.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:352
  Original Name: xmlTextWriterWriteFormatDTDElement/usr/include/libxml2/libxml/xmlwriter.h:352

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatDTDElement(writer: NullablePointer[XmlTextWriter] tag, name: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatDTDElement(writer, name.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:412
  Original Name: xmlTextWriterWriteFormatDTDInternalEntity/usr/include/libxml2/libxml/xmlwriter.h:412

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatDTDInternalEntity(writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatDTDInternalEntity(writer, pe, name.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:104
  Original Name: xmlTextWriterWriteFormatElement/usr/include/libxml2/libxml/xmlwriter.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatElement(writer: NullablePointer[XmlTextWriter] tag, name: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatElement(writer, name.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:120
  Original Name: xmlTextWriterWriteFormatElementNS/usr/include/libxml2/libxml/xmlwriter.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatElementNS(writer: NullablePointer[XmlTextWriter] tag, prefix: String, name: String, namespaceURI: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatElementNS(writer, prefix.cstring(), name.cstring(), namespaceURI.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:256
  Original Name: xmlTextWriterWriteFormatPI/usr/include/libxml2/libxml/xmlwriter.h:256

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatPI(writer: NullablePointer[XmlTextWriter] tag, target: String, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatPI(writer, target.cstring(), format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:148
  Original Name: xmlTextWriterWriteFormatRaw/usr/include/libxml2/libxml/xmlwriter.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatRaw(writer: NullablePointer[XmlTextWriter] tag, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatRaw(writer, format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:161
  Original Name: xmlTextWriterWriteFormatString/usr/include/libxml2/libxml/xmlwriter.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*  fun xmlTextWriterWriteFormatString(writer: NullablePointer[XmlTextWriter] tag, format: String, ...): I32 =>
    @xmlTextWriterWriteFormatString(writer, format.cstring(), ...)
*/

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:266
  Original Name: xmlTextWriterWritePI/usr/include/libxml2/libxml/xmlwriter.h:266

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWritePI(writer: NullablePointer[XmlTextWriter] tag, target: String, content: String): I32 =>
    @xmlTextWriterWritePI(writer, target.cstring(), content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:159
  Original Name: xmlTextWriterWriteRaw/usr/include/libxml2/libxml/xmlwriter.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteRaw(writer: NullablePointer[XmlTextWriter] tag, content: String): I32 =>
    @xmlTextWriterWriteRaw(writer, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:156
  Original Name: xmlTextWriterWriteRawLen/usr/include/libxml2/libxml/xmlwriter.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlTextWriterWriteRawLen(writer: NullablePointer[XmlTextWriter] tag, content: String, len: I32): I32 =>
    @xmlTextWriterWriteRawLen(writer, content.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:172
  Original Name: xmlTextWriterWriteString/usr/include/libxml2/libxml/xmlwriter.h:172

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlTextWriterWriteString(writer: NullablePointer[XmlTextWriter] tag, content: String): I32 =>
    @xmlTextWriterWriteString(writer, content.cstring())


/*
  Source: /usr/include/libxml2/libxml/globals.h:305
  Original Name: xmlThrDefBufferAllocScheme/usr/include/libxml2/libxml/globals.h:305

  Return Value: [Enumeration size=32,fid: f16]

  Arguments:
    [Enumeration size=32,fid: f16]
*/
  fun xmlThrDefBufferAllocScheme(v: I32): I32 =>
    @xmlThrDefBufferAllocScheme(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:314
  Original Name: xmlThrDefDefaultBufferSize/usr/include/libxml2/libxml/globals.h:314

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefDefaultBufferSize(v: I32): I32 =>
    @xmlThrDefDefaultBufferSize(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:186
  Original Name: xmlThrDefDeregisterNodeDefault/usr/include/libxml2/libxml/globals.h:186

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefDeregisterNodeDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlThrDefDeregisterNodeDefault(func)


/*
  Source: /usr/include/libxml2/libxml/globals.h:339
  Original Name: xmlThrDefDoValidityCheckingDefaultValue/usr/include/libxml2/libxml/globals.h:339

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefDoValidityCheckingDefaultValue(v: I32): I32 =>
    @xmlThrDefDoValidityCheckingDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:380
  Original Name: xmlThrDefGetWarningsDefaultValue/usr/include/libxml2/libxml/globals.h:380

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefGetWarningsDefaultValue(v: I32): I32 =>
    @xmlThrDefGetWarningsDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:389
  Original Name: xmlThrDefIndentTreeOutput/usr/include/libxml2/libxml/globals.h:389

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefIndentTreeOutput(v: I32): I32 =>
    @xmlThrDefIndentTreeOutput(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:407
  Original Name: xmlThrDefKeepBlanksDefaultValue/usr/include/libxml2/libxml/globals.h:407

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefKeepBlanksDefaultValue(v: I32): I32 =>
    @xmlThrDefKeepBlanksDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:416
  Original Name: xmlThrDefLineNumbersDefaultValue/usr/include/libxml2/libxml/globals.h:416

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefLineNumbersDefaultValue(v: I32): I32 =>
    @xmlThrDefLineNumbersDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:425
  Original Name: xmlThrDefLoadExtDtdDefaultValue/usr/include/libxml2/libxml/globals.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefLoadExtDtdDefaultValue(v: I32): I32 =>
    @xmlThrDefLoadExtDtdDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:189
  Original Name: xmlThrDefOutputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:189

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefOutputBufferCreateFilenameDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlThrDefOutputBufferCreateFilenameDefault(func)


/*
  Source: /usr/include/libxml2/libxml/globals.h:434
  Original Name: xmlThrDefParserDebugEntities/usr/include/libxml2/libxml/globals.h:434

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefParserDebugEntities(v: I32): I32 =>
    @xmlThrDefParserDebugEntities(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:191
  Original Name: xmlThrDefParserInputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:191

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefParserInputBufferCreateFilenameDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlThrDefParserInputBufferCreateFilenameDefault(func)


/*
  Source: /usr/include/libxml2/libxml/globals.h:451
  Original Name: xmlThrDefPedanticParserDefaultValue/usr/include/libxml2/libxml/globals.h:451

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefPedanticParserDefaultValue(v: I32): I32 =>
    @xmlThrDefPedanticParserDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:184
  Original Name: xmlThrDefRegisterNodeDefault/usr/include/libxml2/libxml/globals.h:184

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefRegisterNodeDefault(func: Pointer[None] tag): Pointer[None] =>
    @xmlThrDefRegisterNodeDefault(func)


/*
  Source: /usr/include/libxml2/libxml/globals.h:460
  Original Name: xmlThrDefSaveNoEmptyTags/usr/include/libxml2/libxml/globals.h:460

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefSaveNoEmptyTags(v: I32): I32 =>
    @xmlThrDefSaveNoEmptyTags(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:179
  Original Name: xmlThrDefSetGenericErrorFunc/usr/include/libxml2/libxml/globals.h:179

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefSetGenericErrorFunc(ctx: Pointer[None] tag, handler: Pointer[None] tag): None =>
    @xmlThrDefSetGenericErrorFunc(ctx, handler)


/*
  Source: /usr/include/libxml2/libxml/globals.h:181
  Original Name: xmlThrDefSetStructuredErrorFunc/usr/include/libxml2/libxml/globals.h:181

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlThrDefSetStructuredErrorFunc(ctx: Pointer[None] tag, handler: Pointer[None] tag): None =>
    @xmlThrDefSetStructuredErrorFunc(ctx, handler)


/*
  Source: /usr/include/libxml2/libxml/globals.h:469
  Original Name: xmlThrDefSubstituteEntitiesDefaultValue/usr/include/libxml2/libxml/globals.h:469

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlThrDefSubstituteEntitiesDefaultValue(v: I32): I32 =>
    @xmlThrDefSubstituteEntitiesDefaultValue(v)


/*
  Source: /usr/include/libxml2/libxml/globals.h:398
  Original Name: xmlThrDefTreeIndentString/usr/include/libxml2/libxml/globals.h:398

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlThrDefTreeIndentString(v: String): String val =>
    var pcstring: Pointer[U8] =  @xmlThrDefTreeIndentString(v.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:26
  Original Name: xmlUCSIsAegeanNumbers/usr/include/libxml2/libxml/xmlunicode.h:26

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsAegeanNumbers(code: I32): I32 =>
    @xmlUCSIsAegeanNumbers(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:27
  Original Name: xmlUCSIsAlphabeticPresentationForms/usr/include/libxml2/libxml/xmlunicode.h:27

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsAlphabeticPresentationForms(code: I32): I32 =>
    @xmlUCSIsAlphabeticPresentationForms(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:28
  Original Name: xmlUCSIsArabic/usr/include/libxml2/libxml/xmlunicode.h:28

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsArabic(code: I32): I32 =>
    @xmlUCSIsArabic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:29
  Original Name: xmlUCSIsArabicPresentationFormsA/usr/include/libxml2/libxml/xmlunicode.h:29

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsArabicPresentationFormsA(code: I32): I32 =>
    @xmlUCSIsArabicPresentationFormsA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:30
  Original Name: xmlUCSIsArabicPresentationFormsB/usr/include/libxml2/libxml/xmlunicode.h:30

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsArabicPresentationFormsB(code: I32): I32 =>
    @xmlUCSIsArabicPresentationFormsB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:31
  Original Name: xmlUCSIsArmenian/usr/include/libxml2/libxml/xmlunicode.h:31

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsArmenian(code: I32): I32 =>
    @xmlUCSIsArmenian(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:32
  Original Name: xmlUCSIsArrows/usr/include/libxml2/libxml/xmlunicode.h:32

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsArrows(code: I32): I32 =>
    @xmlUCSIsArrows(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:33
  Original Name: xmlUCSIsBasicLatin/usr/include/libxml2/libxml/xmlunicode.h:33

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBasicLatin(code: I32): I32 =>
    @xmlUCSIsBasicLatin(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:34
  Original Name: xmlUCSIsBengali/usr/include/libxml2/libxml/xmlunicode.h:34

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBengali(code: I32): I32 =>
    @xmlUCSIsBengali(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:155
  Original Name: xmlUCSIsBlock/usr/include/libxml2/libxml/xmlunicode.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlUCSIsBlock(code: I32, block: String): I32 =>
    @xmlUCSIsBlock(code, block.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:35
  Original Name: xmlUCSIsBlockElements/usr/include/libxml2/libxml/xmlunicode.h:35

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBlockElements(code: I32): I32 =>
    @xmlUCSIsBlockElements(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:36
  Original Name: xmlUCSIsBopomofo/usr/include/libxml2/libxml/xmlunicode.h:36

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBopomofo(code: I32): I32 =>
    @xmlUCSIsBopomofo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:37
  Original Name: xmlUCSIsBopomofoExtended/usr/include/libxml2/libxml/xmlunicode.h:37

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBopomofoExtended(code: I32): I32 =>
    @xmlUCSIsBopomofoExtended(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:38
  Original Name: xmlUCSIsBoxDrawing/usr/include/libxml2/libxml/xmlunicode.h:38

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBoxDrawing(code: I32): I32 =>
    @xmlUCSIsBoxDrawing(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:39
  Original Name: xmlUCSIsBraillePatterns/usr/include/libxml2/libxml/xmlunicode.h:39

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBraillePatterns(code: I32): I32 =>
    @xmlUCSIsBraillePatterns(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:40
  Original Name: xmlUCSIsBuhid/usr/include/libxml2/libxml/xmlunicode.h:40

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsBuhid(code: I32): I32 =>
    @xmlUCSIsBuhid(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:41
  Original Name: xmlUCSIsByzantineMusicalSymbols/usr/include/libxml2/libxml/xmlunicode.h:41

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsByzantineMusicalSymbols(code: I32): I32 =>
    @xmlUCSIsByzantineMusicalSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:42
  Original Name: xmlUCSIsCJKCompatibility/usr/include/libxml2/libxml/xmlunicode.h:42

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKCompatibility(code: I32): I32 =>
    @xmlUCSIsCJKCompatibility(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:43
  Original Name: xmlUCSIsCJKCompatibilityForms/usr/include/libxml2/libxml/xmlunicode.h:43

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKCompatibilityForms(code: I32): I32 =>
    @xmlUCSIsCJKCompatibilityForms(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:44
  Original Name: xmlUCSIsCJKCompatibilityIdeographs/usr/include/libxml2/libxml/xmlunicode.h:44

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKCompatibilityIdeographs(code: I32): I32 =>
    @xmlUCSIsCJKCompatibilityIdeographs(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:45
  Original Name: xmlUCSIsCJKCompatibilityIdeographsSupplement/usr/include/libxml2/libxml/xmlunicode.h:45

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKCompatibilityIdeographsSupplement(code: I32): I32 =>
    @xmlUCSIsCJKCompatibilityIdeographsSupplement(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:46
  Original Name: xmlUCSIsCJKRadicalsSupplement/usr/include/libxml2/libxml/xmlunicode.h:46

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKRadicalsSupplement(code: I32): I32 =>
    @xmlUCSIsCJKRadicalsSupplement(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:47
  Original Name: xmlUCSIsCJKSymbolsandPunctuation/usr/include/libxml2/libxml/xmlunicode.h:47

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKSymbolsandPunctuation(code: I32): I32 =>
    @xmlUCSIsCJKSymbolsandPunctuation(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:48
  Original Name: xmlUCSIsCJKUnifiedIdeographs/usr/include/libxml2/libxml/xmlunicode.h:48

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKUnifiedIdeographs(code: I32): I32 =>
    @xmlUCSIsCJKUnifiedIdeographs(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:49
  Original Name: xmlUCSIsCJKUnifiedIdeographsExtensionA/usr/include/libxml2/libxml/xmlunicode.h:49

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKUnifiedIdeographsExtensionA(code: I32): I32 =>
    @xmlUCSIsCJKUnifiedIdeographsExtensionA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:50
  Original Name: xmlUCSIsCJKUnifiedIdeographsExtensionB/usr/include/libxml2/libxml/xmlunicode.h:50

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCJKUnifiedIdeographsExtensionB(code: I32): I32 =>
    @xmlUCSIsCJKUnifiedIdeographsExtensionB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:194
  Original Name: xmlUCSIsCat/usr/include/libxml2/libxml/xmlunicode.h:194

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlUCSIsCat(code: I32, cat: String): I32 =>
    @xmlUCSIsCat(code, cat.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:157
  Original Name: xmlUCSIsCatC/usr/include/libxml2/libxml/xmlunicode.h:157

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatC(code: I32): I32 =>
    @xmlUCSIsCatC(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:158
  Original Name: xmlUCSIsCatCc/usr/include/libxml2/libxml/xmlunicode.h:158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatCc(code: I32): I32 =>
    @xmlUCSIsCatCc(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:159
  Original Name: xmlUCSIsCatCf/usr/include/libxml2/libxml/xmlunicode.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatCf(code: I32): I32 =>
    @xmlUCSIsCatCf(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:160
  Original Name: xmlUCSIsCatCo/usr/include/libxml2/libxml/xmlunicode.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatCo(code: I32): I32 =>
    @xmlUCSIsCatCo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:161
  Original Name: xmlUCSIsCatCs/usr/include/libxml2/libxml/xmlunicode.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatCs(code: I32): I32 =>
    @xmlUCSIsCatCs(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:162
  Original Name: xmlUCSIsCatL/usr/include/libxml2/libxml/xmlunicode.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatL(code: I32): I32 =>
    @xmlUCSIsCatL(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:163
  Original Name: xmlUCSIsCatLl/usr/include/libxml2/libxml/xmlunicode.h:163

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatLl(code: I32): I32 =>
    @xmlUCSIsCatLl(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:164
  Original Name: xmlUCSIsCatLm/usr/include/libxml2/libxml/xmlunicode.h:164

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatLm(code: I32): I32 =>
    @xmlUCSIsCatLm(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:165
  Original Name: xmlUCSIsCatLo/usr/include/libxml2/libxml/xmlunicode.h:165

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatLo(code: I32): I32 =>
    @xmlUCSIsCatLo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:166
  Original Name: xmlUCSIsCatLt/usr/include/libxml2/libxml/xmlunicode.h:166

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatLt(code: I32): I32 =>
    @xmlUCSIsCatLt(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:167
  Original Name: xmlUCSIsCatLu/usr/include/libxml2/libxml/xmlunicode.h:167

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatLu(code: I32): I32 =>
    @xmlUCSIsCatLu(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:168
  Original Name: xmlUCSIsCatM/usr/include/libxml2/libxml/xmlunicode.h:168

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatM(code: I32): I32 =>
    @xmlUCSIsCatM(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:169
  Original Name: xmlUCSIsCatMc/usr/include/libxml2/libxml/xmlunicode.h:169

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatMc(code: I32): I32 =>
    @xmlUCSIsCatMc(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:170
  Original Name: xmlUCSIsCatMe/usr/include/libxml2/libxml/xmlunicode.h:170

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatMe(code: I32): I32 =>
    @xmlUCSIsCatMe(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:171
  Original Name: xmlUCSIsCatMn/usr/include/libxml2/libxml/xmlunicode.h:171

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatMn(code: I32): I32 =>
    @xmlUCSIsCatMn(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:172
  Original Name: xmlUCSIsCatN/usr/include/libxml2/libxml/xmlunicode.h:172

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatN(code: I32): I32 =>
    @xmlUCSIsCatN(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:173
  Original Name: xmlUCSIsCatNd/usr/include/libxml2/libxml/xmlunicode.h:173

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatNd(code: I32): I32 =>
    @xmlUCSIsCatNd(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:174
  Original Name: xmlUCSIsCatNl/usr/include/libxml2/libxml/xmlunicode.h:174

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatNl(code: I32): I32 =>
    @xmlUCSIsCatNl(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:175
  Original Name: xmlUCSIsCatNo/usr/include/libxml2/libxml/xmlunicode.h:175

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatNo(code: I32): I32 =>
    @xmlUCSIsCatNo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:176
  Original Name: xmlUCSIsCatP/usr/include/libxml2/libxml/xmlunicode.h:176

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatP(code: I32): I32 =>
    @xmlUCSIsCatP(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:177
  Original Name: xmlUCSIsCatPc/usr/include/libxml2/libxml/xmlunicode.h:177

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPc(code: I32): I32 =>
    @xmlUCSIsCatPc(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:178
  Original Name: xmlUCSIsCatPd/usr/include/libxml2/libxml/xmlunicode.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPd(code: I32): I32 =>
    @xmlUCSIsCatPd(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:179
  Original Name: xmlUCSIsCatPe/usr/include/libxml2/libxml/xmlunicode.h:179

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPe(code: I32): I32 =>
    @xmlUCSIsCatPe(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:180
  Original Name: xmlUCSIsCatPf/usr/include/libxml2/libxml/xmlunicode.h:180

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPf(code: I32): I32 =>
    @xmlUCSIsCatPf(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:181
  Original Name: xmlUCSIsCatPi/usr/include/libxml2/libxml/xmlunicode.h:181

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPi(code: I32): I32 =>
    @xmlUCSIsCatPi(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:182
  Original Name: xmlUCSIsCatPo/usr/include/libxml2/libxml/xmlunicode.h:182

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPo(code: I32): I32 =>
    @xmlUCSIsCatPo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:183
  Original Name: xmlUCSIsCatPs/usr/include/libxml2/libxml/xmlunicode.h:183

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatPs(code: I32): I32 =>
    @xmlUCSIsCatPs(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:184
  Original Name: xmlUCSIsCatS/usr/include/libxml2/libxml/xmlunicode.h:184

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatS(code: I32): I32 =>
    @xmlUCSIsCatS(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:185
  Original Name: xmlUCSIsCatSc/usr/include/libxml2/libxml/xmlunicode.h:185

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatSc(code: I32): I32 =>
    @xmlUCSIsCatSc(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:186
  Original Name: xmlUCSIsCatSk/usr/include/libxml2/libxml/xmlunicode.h:186

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatSk(code: I32): I32 =>
    @xmlUCSIsCatSk(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:187
  Original Name: xmlUCSIsCatSm/usr/include/libxml2/libxml/xmlunicode.h:187

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatSm(code: I32): I32 =>
    @xmlUCSIsCatSm(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:188
  Original Name: xmlUCSIsCatSo/usr/include/libxml2/libxml/xmlunicode.h:188

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatSo(code: I32): I32 =>
    @xmlUCSIsCatSo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:189
  Original Name: xmlUCSIsCatZ/usr/include/libxml2/libxml/xmlunicode.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatZ(code: I32): I32 =>
    @xmlUCSIsCatZ(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:190
  Original Name: xmlUCSIsCatZl/usr/include/libxml2/libxml/xmlunicode.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatZl(code: I32): I32 =>
    @xmlUCSIsCatZl(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:191
  Original Name: xmlUCSIsCatZp/usr/include/libxml2/libxml/xmlunicode.h:191

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatZp(code: I32): I32 =>
    @xmlUCSIsCatZp(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:192
  Original Name: xmlUCSIsCatZs/usr/include/libxml2/libxml/xmlunicode.h:192

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCatZs(code: I32): I32 =>
    @xmlUCSIsCatZs(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:51
  Original Name: xmlUCSIsCherokee/usr/include/libxml2/libxml/xmlunicode.h:51

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCherokee(code: I32): I32 =>
    @xmlUCSIsCherokee(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:52
  Original Name: xmlUCSIsCombiningDiacriticalMarks/usr/include/libxml2/libxml/xmlunicode.h:52

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCombiningDiacriticalMarks(code: I32): I32 =>
    @xmlUCSIsCombiningDiacriticalMarks(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:53
  Original Name: xmlUCSIsCombiningDiacriticalMarksforSymbols/usr/include/libxml2/libxml/xmlunicode.h:53

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCombiningDiacriticalMarksforSymbols(code: I32): I32 =>
    @xmlUCSIsCombiningDiacriticalMarksforSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:54
  Original Name: xmlUCSIsCombiningHalfMarks/usr/include/libxml2/libxml/xmlunicode.h:54

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCombiningHalfMarks(code: I32): I32 =>
    @xmlUCSIsCombiningHalfMarks(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:55
  Original Name: xmlUCSIsCombiningMarksforSymbols/usr/include/libxml2/libxml/xmlunicode.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCombiningMarksforSymbols(code: I32): I32 =>
    @xmlUCSIsCombiningMarksforSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:56
  Original Name: xmlUCSIsControlPictures/usr/include/libxml2/libxml/xmlunicode.h:56

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsControlPictures(code: I32): I32 =>
    @xmlUCSIsControlPictures(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:57
  Original Name: xmlUCSIsCurrencySymbols/usr/include/libxml2/libxml/xmlunicode.h:57

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCurrencySymbols(code: I32): I32 =>
    @xmlUCSIsCurrencySymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:58
  Original Name: xmlUCSIsCypriotSyllabary/usr/include/libxml2/libxml/xmlunicode.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCypriotSyllabary(code: I32): I32 =>
    @xmlUCSIsCypriotSyllabary(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:59
  Original Name: xmlUCSIsCyrillic/usr/include/libxml2/libxml/xmlunicode.h:59

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCyrillic(code: I32): I32 =>
    @xmlUCSIsCyrillic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:60
  Original Name: xmlUCSIsCyrillicSupplement/usr/include/libxml2/libxml/xmlunicode.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsCyrillicSupplement(code: I32): I32 =>
    @xmlUCSIsCyrillicSupplement(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:61
  Original Name: xmlUCSIsDeseret/usr/include/libxml2/libxml/xmlunicode.h:61

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsDeseret(code: I32): I32 =>
    @xmlUCSIsDeseret(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:62
  Original Name: xmlUCSIsDevanagari/usr/include/libxml2/libxml/xmlunicode.h:62

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsDevanagari(code: I32): I32 =>
    @xmlUCSIsDevanagari(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:63
  Original Name: xmlUCSIsDingbats/usr/include/libxml2/libxml/xmlunicode.h:63

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsDingbats(code: I32): I32 =>
    @xmlUCSIsDingbats(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:64
  Original Name: xmlUCSIsEnclosedAlphanumerics/usr/include/libxml2/libxml/xmlunicode.h:64

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsEnclosedAlphanumerics(code: I32): I32 =>
    @xmlUCSIsEnclosedAlphanumerics(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:65
  Original Name: xmlUCSIsEnclosedCJKLettersandMonths/usr/include/libxml2/libxml/xmlunicode.h:65

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsEnclosedCJKLettersandMonths(code: I32): I32 =>
    @xmlUCSIsEnclosedCJKLettersandMonths(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:66
  Original Name: xmlUCSIsEthiopic/usr/include/libxml2/libxml/xmlunicode.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsEthiopic(code: I32): I32 =>
    @xmlUCSIsEthiopic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:67
  Original Name: xmlUCSIsGeneralPunctuation/usr/include/libxml2/libxml/xmlunicode.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGeneralPunctuation(code: I32): I32 =>
    @xmlUCSIsGeneralPunctuation(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:68
  Original Name: xmlUCSIsGeometricShapes/usr/include/libxml2/libxml/xmlunicode.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGeometricShapes(code: I32): I32 =>
    @xmlUCSIsGeometricShapes(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:69
  Original Name: xmlUCSIsGeorgian/usr/include/libxml2/libxml/xmlunicode.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGeorgian(code: I32): I32 =>
    @xmlUCSIsGeorgian(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:70
  Original Name: xmlUCSIsGothic/usr/include/libxml2/libxml/xmlunicode.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGothic(code: I32): I32 =>
    @xmlUCSIsGothic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:71
  Original Name: xmlUCSIsGreek/usr/include/libxml2/libxml/xmlunicode.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGreek(code: I32): I32 =>
    @xmlUCSIsGreek(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:72
  Original Name: xmlUCSIsGreekExtended/usr/include/libxml2/libxml/xmlunicode.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGreekExtended(code: I32): I32 =>
    @xmlUCSIsGreekExtended(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:73
  Original Name: xmlUCSIsGreekandCoptic/usr/include/libxml2/libxml/xmlunicode.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGreekandCoptic(code: I32): I32 =>
    @xmlUCSIsGreekandCoptic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:74
  Original Name: xmlUCSIsGujarati/usr/include/libxml2/libxml/xmlunicode.h:74

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGujarati(code: I32): I32 =>
    @xmlUCSIsGujarati(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:75
  Original Name: xmlUCSIsGurmukhi/usr/include/libxml2/libxml/xmlunicode.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsGurmukhi(code: I32): I32 =>
    @xmlUCSIsGurmukhi(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:76
  Original Name: xmlUCSIsHalfwidthandFullwidthForms/usr/include/libxml2/libxml/xmlunicode.h:76

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHalfwidthandFullwidthForms(code: I32): I32 =>
    @xmlUCSIsHalfwidthandFullwidthForms(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:77
  Original Name: xmlUCSIsHangulCompatibilityJamo/usr/include/libxml2/libxml/xmlunicode.h:77

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHangulCompatibilityJamo(code: I32): I32 =>
    @xmlUCSIsHangulCompatibilityJamo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:78
  Original Name: xmlUCSIsHangulJamo/usr/include/libxml2/libxml/xmlunicode.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHangulJamo(code: I32): I32 =>
    @xmlUCSIsHangulJamo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:79
  Original Name: xmlUCSIsHangulSyllables/usr/include/libxml2/libxml/xmlunicode.h:79

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHangulSyllables(code: I32): I32 =>
    @xmlUCSIsHangulSyllables(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:80
  Original Name: xmlUCSIsHanunoo/usr/include/libxml2/libxml/xmlunicode.h:80

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHanunoo(code: I32): I32 =>
    @xmlUCSIsHanunoo(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:81
  Original Name: xmlUCSIsHebrew/usr/include/libxml2/libxml/xmlunicode.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHebrew(code: I32): I32 =>
    @xmlUCSIsHebrew(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:82
  Original Name: xmlUCSIsHighPrivateUseSurrogates/usr/include/libxml2/libxml/xmlunicode.h:82

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHighPrivateUseSurrogates(code: I32): I32 =>
    @xmlUCSIsHighPrivateUseSurrogates(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:83
  Original Name: xmlUCSIsHighSurrogates/usr/include/libxml2/libxml/xmlunicode.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHighSurrogates(code: I32): I32 =>
    @xmlUCSIsHighSurrogates(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:84
  Original Name: xmlUCSIsHiragana/usr/include/libxml2/libxml/xmlunicode.h:84

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsHiragana(code: I32): I32 =>
    @xmlUCSIsHiragana(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:85
  Original Name: xmlUCSIsIPAExtensions/usr/include/libxml2/libxml/xmlunicode.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsIPAExtensions(code: I32): I32 =>
    @xmlUCSIsIPAExtensions(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:86
  Original Name: xmlUCSIsIdeographicDescriptionCharacters/usr/include/libxml2/libxml/xmlunicode.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsIdeographicDescriptionCharacters(code: I32): I32 =>
    @xmlUCSIsIdeographicDescriptionCharacters(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:87
  Original Name: xmlUCSIsKanbun/usr/include/libxml2/libxml/xmlunicode.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKanbun(code: I32): I32 =>
    @xmlUCSIsKanbun(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:88
  Original Name: xmlUCSIsKangxiRadicals/usr/include/libxml2/libxml/xmlunicode.h:88

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKangxiRadicals(code: I32): I32 =>
    @xmlUCSIsKangxiRadicals(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:89
  Original Name: xmlUCSIsKannada/usr/include/libxml2/libxml/xmlunicode.h:89

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKannada(code: I32): I32 =>
    @xmlUCSIsKannada(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:90
  Original Name: xmlUCSIsKatakana/usr/include/libxml2/libxml/xmlunicode.h:90

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKatakana(code: I32): I32 =>
    @xmlUCSIsKatakana(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:91
  Original Name: xmlUCSIsKatakanaPhoneticExtensions/usr/include/libxml2/libxml/xmlunicode.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKatakanaPhoneticExtensions(code: I32): I32 =>
    @xmlUCSIsKatakanaPhoneticExtensions(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:92
  Original Name: xmlUCSIsKhmer/usr/include/libxml2/libxml/xmlunicode.h:92

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKhmer(code: I32): I32 =>
    @xmlUCSIsKhmer(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:93
  Original Name: xmlUCSIsKhmerSymbols/usr/include/libxml2/libxml/xmlunicode.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsKhmerSymbols(code: I32): I32 =>
    @xmlUCSIsKhmerSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:94
  Original Name: xmlUCSIsLao/usr/include/libxml2/libxml/xmlunicode.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLao(code: I32): I32 =>
    @xmlUCSIsLao(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:95
  Original Name: xmlUCSIsLatin1Supplement/usr/include/libxml2/libxml/xmlunicode.h:95

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLatin1Supplement(code: I32): I32 =>
    @xmlUCSIsLatin1Supplement(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:96
  Original Name: xmlUCSIsLatinExtendedA/usr/include/libxml2/libxml/xmlunicode.h:96

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLatinExtendedA(code: I32): I32 =>
    @xmlUCSIsLatinExtendedA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:98
  Original Name: xmlUCSIsLatinExtendedAdditional/usr/include/libxml2/libxml/xmlunicode.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLatinExtendedAdditional(code: I32): I32 =>
    @xmlUCSIsLatinExtendedAdditional(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:97
  Original Name: xmlUCSIsLatinExtendedB/usr/include/libxml2/libxml/xmlunicode.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLatinExtendedB(code: I32): I32 =>
    @xmlUCSIsLatinExtendedB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:99
  Original Name: xmlUCSIsLetterlikeSymbols/usr/include/libxml2/libxml/xmlunicode.h:99

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLetterlikeSymbols(code: I32): I32 =>
    @xmlUCSIsLetterlikeSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:100
  Original Name: xmlUCSIsLimbu/usr/include/libxml2/libxml/xmlunicode.h:100

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLimbu(code: I32): I32 =>
    @xmlUCSIsLimbu(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:101
  Original Name: xmlUCSIsLinearBIdeograms/usr/include/libxml2/libxml/xmlunicode.h:101

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLinearBIdeograms(code: I32): I32 =>
    @xmlUCSIsLinearBIdeograms(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:102
  Original Name: xmlUCSIsLinearBSyllabary/usr/include/libxml2/libxml/xmlunicode.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLinearBSyllabary(code: I32): I32 =>
    @xmlUCSIsLinearBSyllabary(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:103
  Original Name: xmlUCSIsLowSurrogates/usr/include/libxml2/libxml/xmlunicode.h:103

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsLowSurrogates(code: I32): I32 =>
    @xmlUCSIsLowSurrogates(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:104
  Original Name: xmlUCSIsMalayalam/usr/include/libxml2/libxml/xmlunicode.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMalayalam(code: I32): I32 =>
    @xmlUCSIsMalayalam(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:105
  Original Name: xmlUCSIsMathematicalAlphanumericSymbols/usr/include/libxml2/libxml/xmlunicode.h:105

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMathematicalAlphanumericSymbols(code: I32): I32 =>
    @xmlUCSIsMathematicalAlphanumericSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:106
  Original Name: xmlUCSIsMathematicalOperators/usr/include/libxml2/libxml/xmlunicode.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMathematicalOperators(code: I32): I32 =>
    @xmlUCSIsMathematicalOperators(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:107
  Original Name: xmlUCSIsMiscellaneousMathematicalSymbolsA/usr/include/libxml2/libxml/xmlunicode.h:107

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMiscellaneousMathematicalSymbolsA(code: I32): I32 =>
    @xmlUCSIsMiscellaneousMathematicalSymbolsA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:108
  Original Name: xmlUCSIsMiscellaneousMathematicalSymbolsB/usr/include/libxml2/libxml/xmlunicode.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMiscellaneousMathematicalSymbolsB(code: I32): I32 =>
    @xmlUCSIsMiscellaneousMathematicalSymbolsB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:109
  Original Name: xmlUCSIsMiscellaneousSymbols/usr/include/libxml2/libxml/xmlunicode.h:109

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMiscellaneousSymbols(code: I32): I32 =>
    @xmlUCSIsMiscellaneousSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:110
  Original Name: xmlUCSIsMiscellaneousSymbolsandArrows/usr/include/libxml2/libxml/xmlunicode.h:110

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMiscellaneousSymbolsandArrows(code: I32): I32 =>
    @xmlUCSIsMiscellaneousSymbolsandArrows(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:111
  Original Name: xmlUCSIsMiscellaneousTechnical/usr/include/libxml2/libxml/xmlunicode.h:111

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMiscellaneousTechnical(code: I32): I32 =>
    @xmlUCSIsMiscellaneousTechnical(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:112
  Original Name: xmlUCSIsMongolian/usr/include/libxml2/libxml/xmlunicode.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMongolian(code: I32): I32 =>
    @xmlUCSIsMongolian(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:113
  Original Name: xmlUCSIsMusicalSymbols/usr/include/libxml2/libxml/xmlunicode.h:113

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMusicalSymbols(code: I32): I32 =>
    @xmlUCSIsMusicalSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:114
  Original Name: xmlUCSIsMyanmar/usr/include/libxml2/libxml/xmlunicode.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsMyanmar(code: I32): I32 =>
    @xmlUCSIsMyanmar(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:115
  Original Name: xmlUCSIsNumberForms/usr/include/libxml2/libxml/xmlunicode.h:115

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsNumberForms(code: I32): I32 =>
    @xmlUCSIsNumberForms(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:116
  Original Name: xmlUCSIsOgham/usr/include/libxml2/libxml/xmlunicode.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsOgham(code: I32): I32 =>
    @xmlUCSIsOgham(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:117
  Original Name: xmlUCSIsOldItalic/usr/include/libxml2/libxml/xmlunicode.h:117

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsOldItalic(code: I32): I32 =>
    @xmlUCSIsOldItalic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:118
  Original Name: xmlUCSIsOpticalCharacterRecognition/usr/include/libxml2/libxml/xmlunicode.h:118

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsOpticalCharacterRecognition(code: I32): I32 =>
    @xmlUCSIsOpticalCharacterRecognition(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:119
  Original Name: xmlUCSIsOriya/usr/include/libxml2/libxml/xmlunicode.h:119

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsOriya(code: I32): I32 =>
    @xmlUCSIsOriya(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:120
  Original Name: xmlUCSIsOsmanya/usr/include/libxml2/libxml/xmlunicode.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsOsmanya(code: I32): I32 =>
    @xmlUCSIsOsmanya(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:121
  Original Name: xmlUCSIsPhoneticExtensions/usr/include/libxml2/libxml/xmlunicode.h:121

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsPhoneticExtensions(code: I32): I32 =>
    @xmlUCSIsPhoneticExtensions(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:122
  Original Name: xmlUCSIsPrivateUse/usr/include/libxml2/libxml/xmlunicode.h:122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsPrivateUse(code: I32): I32 =>
    @xmlUCSIsPrivateUse(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:123
  Original Name: xmlUCSIsPrivateUseArea/usr/include/libxml2/libxml/xmlunicode.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsPrivateUseArea(code: I32): I32 =>
    @xmlUCSIsPrivateUseArea(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:124
  Original Name: xmlUCSIsRunic/usr/include/libxml2/libxml/xmlunicode.h:124

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsRunic(code: I32): I32 =>
    @xmlUCSIsRunic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:125
  Original Name: xmlUCSIsShavian/usr/include/libxml2/libxml/xmlunicode.h:125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsShavian(code: I32): I32 =>
    @xmlUCSIsShavian(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:126
  Original Name: xmlUCSIsSinhala/usr/include/libxml2/libxml/xmlunicode.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSinhala(code: I32): I32 =>
    @xmlUCSIsSinhala(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:127
  Original Name: xmlUCSIsSmallFormVariants/usr/include/libxml2/libxml/xmlunicode.h:127

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSmallFormVariants(code: I32): I32 =>
    @xmlUCSIsSmallFormVariants(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:128
  Original Name: xmlUCSIsSpacingModifierLetters/usr/include/libxml2/libxml/xmlunicode.h:128

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSpacingModifierLetters(code: I32): I32 =>
    @xmlUCSIsSpacingModifierLetters(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:129
  Original Name: xmlUCSIsSpecials/usr/include/libxml2/libxml/xmlunicode.h:129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSpecials(code: I32): I32 =>
    @xmlUCSIsSpecials(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:130
  Original Name: xmlUCSIsSuperscriptsandSubscripts/usr/include/libxml2/libxml/xmlunicode.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSuperscriptsandSubscripts(code: I32): I32 =>
    @xmlUCSIsSuperscriptsandSubscripts(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:131
  Original Name: xmlUCSIsSupplementalArrowsA/usr/include/libxml2/libxml/xmlunicode.h:131

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSupplementalArrowsA(code: I32): I32 =>
    @xmlUCSIsSupplementalArrowsA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:132
  Original Name: xmlUCSIsSupplementalArrowsB/usr/include/libxml2/libxml/xmlunicode.h:132

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSupplementalArrowsB(code: I32): I32 =>
    @xmlUCSIsSupplementalArrowsB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:133
  Original Name: xmlUCSIsSupplementalMathematicalOperators/usr/include/libxml2/libxml/xmlunicode.h:133

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSupplementalMathematicalOperators(code: I32): I32 =>
    @xmlUCSIsSupplementalMathematicalOperators(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:134
  Original Name: xmlUCSIsSupplementaryPrivateUseAreaA/usr/include/libxml2/libxml/xmlunicode.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSupplementaryPrivateUseAreaA(code: I32): I32 =>
    @xmlUCSIsSupplementaryPrivateUseAreaA(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:135
  Original Name: xmlUCSIsSupplementaryPrivateUseAreaB/usr/include/libxml2/libxml/xmlunicode.h:135

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSupplementaryPrivateUseAreaB(code: I32): I32 =>
    @xmlUCSIsSupplementaryPrivateUseAreaB(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:136
  Original Name: xmlUCSIsSyriac/usr/include/libxml2/libxml/xmlunicode.h:136

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsSyriac(code: I32): I32 =>
    @xmlUCSIsSyriac(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:137
  Original Name: xmlUCSIsTagalog/usr/include/libxml2/libxml/xmlunicode.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTagalog(code: I32): I32 =>
    @xmlUCSIsTagalog(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:138
  Original Name: xmlUCSIsTagbanwa/usr/include/libxml2/libxml/xmlunicode.h:138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTagbanwa(code: I32): I32 =>
    @xmlUCSIsTagbanwa(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:139
  Original Name: xmlUCSIsTags/usr/include/libxml2/libxml/xmlunicode.h:139

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTags(code: I32): I32 =>
    @xmlUCSIsTags(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:140
  Original Name: xmlUCSIsTaiLe/usr/include/libxml2/libxml/xmlunicode.h:140

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTaiLe(code: I32): I32 =>
    @xmlUCSIsTaiLe(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:141
  Original Name: xmlUCSIsTaiXuanJingSymbols/usr/include/libxml2/libxml/xmlunicode.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTaiXuanJingSymbols(code: I32): I32 =>
    @xmlUCSIsTaiXuanJingSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:142
  Original Name: xmlUCSIsTamil/usr/include/libxml2/libxml/xmlunicode.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTamil(code: I32): I32 =>
    @xmlUCSIsTamil(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:143
  Original Name: xmlUCSIsTelugu/usr/include/libxml2/libxml/xmlunicode.h:143

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTelugu(code: I32): I32 =>
    @xmlUCSIsTelugu(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:144
  Original Name: xmlUCSIsThaana/usr/include/libxml2/libxml/xmlunicode.h:144

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsThaana(code: I32): I32 =>
    @xmlUCSIsThaana(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:145
  Original Name: xmlUCSIsThai/usr/include/libxml2/libxml/xmlunicode.h:145

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsThai(code: I32): I32 =>
    @xmlUCSIsThai(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:146
  Original Name: xmlUCSIsTibetan/usr/include/libxml2/libxml/xmlunicode.h:146

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsTibetan(code: I32): I32 =>
    @xmlUCSIsTibetan(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:147
  Original Name: xmlUCSIsUgaritic/usr/include/libxml2/libxml/xmlunicode.h:147

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsUgaritic(code: I32): I32 =>
    @xmlUCSIsUgaritic(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:148
  Original Name: xmlUCSIsUnifiedCanadianAboriginalSyllabics/usr/include/libxml2/libxml/xmlunicode.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsUnifiedCanadianAboriginalSyllabics(code: I32): I32 =>
    @xmlUCSIsUnifiedCanadianAboriginalSyllabics(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:149
  Original Name: xmlUCSIsVariationSelectors/usr/include/libxml2/libxml/xmlunicode.h:149

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsVariationSelectors(code: I32): I32 =>
    @xmlUCSIsVariationSelectors(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:150
  Original Name: xmlUCSIsVariationSelectorsSupplement/usr/include/libxml2/libxml/xmlunicode.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsVariationSelectorsSupplement(code: I32): I32 =>
    @xmlUCSIsVariationSelectorsSupplement(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:151
  Original Name: xmlUCSIsYiRadicals/usr/include/libxml2/libxml/xmlunicode.h:151

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsYiRadicals(code: I32): I32 =>
    @xmlUCSIsYiRadicals(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:152
  Original Name: xmlUCSIsYiSyllables/usr/include/libxml2/libxml/xmlunicode.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsYiSyllables(code: I32): I32 =>
    @xmlUCSIsYiSyllables(code)


/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:153
  Original Name: xmlUCSIsYijingHexagramSymbols/usr/include/libxml2/libxml/xmlunicode.h:153

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlUCSIsYijingHexagramSymbols(code: I32): I32 =>
    @xmlUCSIsYijingHexagramSymbols(code)


/*
  Source: /usr/include/libxml2/libxml/uri.h:83
  Original Name: xmlURIEscape/usr/include/libxml2/libxml/uri.h:83

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlURIEscape(str: String): String =>
    var pcstring: Pointer[U8] =  @xmlURIEscape(str.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/uri.h:74
  Original Name: xmlURIEscapeStr/usr/include/libxml2/libxml/uri.h:74

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlURIEscapeStr(str: String, list: String): String =>
    var pcstring: Pointer[U8] =  @xmlURIEscapeStr(str.cstring(), list.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/uri.h:77
  Original Name: xmlURIUnescapeString/usr/include/libxml2/libxml/uri.h:77

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlURIUnescapeString(str: String, len: I32, target: String): String =>
    var pcstring: Pointer[U8] =  @xmlURIUnescapeString(str.cstring(), len, target.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:134
  Original Name: xmlUTF8Charcmp/usr/include/libxml2/libxml/xmlstring.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUTF8Charcmp(utf1: String, utf2: String): I32 =>
    @xmlUTF8Charcmp(utf1.cstring(), utf2.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:132
  Original Name: xmlUTF8Size/usr/include/libxml2/libxml/xmlstring.h:132

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUTF8Size(utf: String): I32 =>
    @xmlUTF8Size(utf.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:130
  Original Name: xmlUTF8Strlen/usr/include/libxml2/libxml/xmlstring.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUTF8Strlen(utf: String): I32 =>
    @xmlUTF8Strlen(utf.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:123
  Original Name: xmlUTF8Strloc/usr/include/libxml2/libxml/xmlstring.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUTF8Strloc(utf: String, utfchar: String): I32 =>
    @xmlUTF8Strloc(utf.cstring(), utfchar.cstring())


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:117
  Original Name: xmlUTF8Strndup/usr/include/libxml2/libxml/xmlstring.h:117

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlUTF8Strndup(utf: String, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlUTF8Strndup(utf.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:120
  Original Name: xmlUTF8Strpos/usr/include/libxml2/libxml/xmlstring.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlUTF8Strpos(utf: String, pos: I32): String val =>
    var pcstring: Pointer[U8] =  @xmlUTF8Strpos(utf.cstring(), pos)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:114
  Original Name: xmlUTF8Strsize/usr/include/libxml2/libxml/xmlstring.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlUTF8Strsize(utf: String, len: I32): I32 =>
    @xmlUTF8Strsize(utf.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:126
  Original Name: xmlUTF8Strsub/usr/include/libxml2/libxml/xmlstring.h:126

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlUTF8Strsub(utf: String, start: I32, len: I32): String =>
    var pcstring: Pointer[U8] =  @xmlUTF8Strsub(utf.cstring(), start, len)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/tree.h:977
  Original Name: xmlUnlinkNode/usr/include/libxml2/libxml/tree.h:977

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlUnlinkNode(cur: NullablePointer[XmlNode] tag): None =>
    @xmlUnlinkNode(cur)


/*
  Source: /usr/include/libxml2/libxml/threads.h:65
  Original Name: xmlUnlockLibrary/usr/include/libxml2/libxml/threads.h:65

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlUnlockLibrary(): None =>
    @xmlUnlockLibrary()


/*
  Source: /usr/include/libxml2/libxml/tree.h:1125
  Original Name: xmlUnsetNsProp/usr/include/libxml2/libxml/tree.h:1125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUnsetNsProp(node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: String): I32 =>
    @xmlUnsetNsProp(node, ns, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:1129
  Original Name: xmlUnsetProp/usr/include/libxml2/libxml/tree.h:1129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlUnsetProp(node: NullablePointer[XmlNode] tag, name: String): I32 =>
    @xmlUnsetProp(node, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:436
  Original Name: xmlValidBuildContentModel/usr/include/libxml2/libxml/valid.h:436

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
  fun xmlValidBuildContentModel(ctxt: NullablePointer[XmlValidCtxt] tag, elem: NullablePointer[XmlElement] tag): I32 =>
    @xmlValidBuildContentModel(ctxt, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:327
  Original Name: xmlValidCtxtNormalizeAttributeValue/usr/include/libxml2/libxml/valid.h:327

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidCtxtNormalizeAttributeValue(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, name: String, value: String): String =>
    var pcstring: Pointer[U8] =  @xmlValidCtxtNormalizeAttributeValue(ctxt, doc, elem, name.cstring(), value.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/valid.h:322
  Original Name: xmlValidNormalizeAttributeValue/usr/include/libxml2/libxml/valid.h:322

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidNormalizeAttributeValue(doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, name: String, value: String): String =>
    var pcstring: Pointer[U8] =  @xmlValidNormalizeAttributeValue(doc, elem, name.cstring(), value.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/valid.h:333
  Original Name: xmlValidateAttributeDecl/usr/include/libxml2/libxml/valid.h:333

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlValidateAttributeDecl(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttribute] tag): I32 =>
    @xmlValidateAttributeDecl(ctxt, doc, attr)


/*
  Source: /usr/include/libxml2/libxml/valid.h:337
  Original Name: xmlValidateAttributeValue/usr/include/libxml2/libxml/valid.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [Enumeration size=32,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateAttributeValue(xmltype: I32, value: String): I32 =>
    @xmlValidateAttributeValue(xmltype, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:351
  Original Name: xmlValidateDocument/usr/include/libxml2/libxml/valid.h:351

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlValidateDocument(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlValidateDocument(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/valid.h:375
  Original Name: xmlValidateDocumentFinal/usr/include/libxml2/libxml/valid.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlValidateDocumentFinal(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlValidateDocumentFinal(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/valid.h:344
  Original Name: xmlValidateDtd/usr/include/libxml2/libxml/valid.h:344

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
  fun xmlValidateDtd(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, dtd: NullablePointer[XmlDtd] tag): I32 =>
    @xmlValidateDtd(ctxt, doc, dtd)


/*
  Source: /usr/include/libxml2/libxml/valid.h:348
  Original Name: xmlValidateDtdFinal/usr/include/libxml2/libxml/valid.h:348

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlValidateDtdFinal(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlValidateDtdFinal(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/valid.h:354
  Original Name: xmlValidateElement/usr/include/libxml2/libxml/valid.h:354

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlValidateElement(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlValidateElement(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:318
  Original Name: xmlValidateElementDecl/usr/include/libxml2/libxml/valid.h:318

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
  fun xmlValidateElementDecl(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlElement] tag): I32 =>
    @xmlValidateElementDecl(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/tree.h:676
  Original Name: xmlValidateNCName/usr/include/libxml2/libxml/tree.h:676

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlValidateNCName(value: String, space: I32): I32 =>
    @xmlValidateNCName(value.cstring(), space)


/*
  Source: /usr/include/libxml2/libxml/tree.h:688
  Original Name: xmlValidateNMToken/usr/include/libxml2/libxml/tree.h:688

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlValidateNMToken(value: String, space: I32): I32 =>
    @xmlValidateNMToken(value.cstring(), space)


/*
  Source: /usr/include/libxml2/libxml/tree.h:685
  Original Name: xmlValidateName/usr/include/libxml2/libxml/tree.h:685

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlValidateName(value: String, space: I32): I32 =>
    @xmlValidateName(value.cstring(), space)


/*
  Source: /usr/include/libxml2/libxml/valid.h:423
  Original Name: xmlValidateNameValue/usr/include/libxml2/libxml/valid.h:423

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateNameValue(value: String): I32 =>
    @xmlValidateNameValue(value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:425
  Original Name: xmlValidateNamesValue/usr/include/libxml2/libxml/valid.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateNamesValue(value: String): I32 =>
    @xmlValidateNamesValue(value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:427
  Original Name: xmlValidateNmtokenValue/usr/include/libxml2/libxml/valid.h:427

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateNmtokenValue(value: String): I32 =>
    @xmlValidateNmtokenValue(value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:429
  Original Name: xmlValidateNmtokensValue/usr/include/libxml2/libxml/valid.h:429

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateNmtokensValue(value: String): I32 =>
    @xmlValidateNmtokensValue(value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:340
  Original Name: xmlValidateNotationDecl/usr/include/libxml2/libxml/valid.h:340

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=192,fid: f16]
*/
  fun xmlValidateNotationDecl(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, nota: NullablePointer[XmlNotation] tag): I32 =>
    @xmlValidateNotationDecl(ctxt, doc, nota)


/*
  Source: /usr/include/libxml2/libxml/valid.h:381
  Original Name: xmlValidateNotationUse/usr/include/libxml2/libxml/valid.h:381

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateNotationUse(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, notationName: String): I32 =>
    @xmlValidateNotationUse(ctxt, doc, notationName.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:362
  Original Name: xmlValidateOneAttribute/usr/include/libxml2/libxml/valid.h:362

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateOneAttribute(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag, value: String): I32 =>
    @xmlValidateOneAttribute(ctxt, doc, elem, attr, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:358
  Original Name: xmlValidateOneElement/usr/include/libxml2/libxml/valid.h:358

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlValidateOneElement(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag): I32 =>
    @xmlValidateOneElement(ctxt, doc, elem)


/*
  Source: /usr/include/libxml2/libxml/valid.h:368
  Original Name: xmlValidateOneNamespace/usr/include/libxml2/libxml/valid.h:368

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidateOneNamespace(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, prefix: String, ns: NullablePointer[XmlNs] tag, value: String): I32 =>
    @xmlValidateOneNamespace(ctxt, doc, elem, prefix.cstring(), ns, value.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:449
  Original Name: xmlValidatePopElement/usr/include/libxml2/libxml/valid.h:449

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidatePopElement(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, qname: String): I32 =>
    @xmlValidatePopElement(ctxt, doc, elem, qname.cstring())


/*
  Source: /usr/include/libxml2/libxml/valid.h:445
  Original Name: xmlValidatePushCData/usr/include/libxml2/libxml/valid.h:445

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlValidatePushCData(ctxt: NullablePointer[XmlValidCtxt] tag, data: String, len: I32): I32 =>
    @xmlValidatePushCData(ctxt, data.cstring(), len)


/*
  Source: /usr/include/libxml2/libxml/valid.h:440
  Original Name: xmlValidatePushElement/usr/include/libxml2/libxml/valid.h:440

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlValidatePushElement(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, qname: String): I32 =>
    @xmlValidatePushElement(ctxt, doc, elem, qname.cstring())


/*
  Source: /usr/include/libxml2/libxml/tree.h:682
  Original Name: xmlValidateQName/usr/include/libxml2/libxml/tree.h:682

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun xmlValidateQName(value: String, space: I32): I32 =>
    @xmlValidateQName(value.cstring(), space)


/*
  Source: /usr/include/libxml2/libxml/valid.h:315
  Original Name: xmlValidateRoot/usr/include/libxml2/libxml/valid.h:315

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlValidateRoot(ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlValidateRoot(ctxt, doc)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:119
  Original Name: xmlXIncludeFreeContext/usr/include/libxml2/libxml/xinclude.h:119

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
*/
  fun xmlXIncludeFreeContext(ctxt: NullablePointer[XmlXIncludeCtxt] tag): None =>
    @xmlXIncludeFreeContext(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:114
  Original Name: xmlXIncludeNewContext/usr/include/libxml2/libxml/xinclude.h:114

  Return Value: [PointerType size=64]->[Struct size=,fid: f80]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlXIncludeNewContext(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlXIncludeCtxt] =>
    @xmlXIncludeNewContext(doc)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:93
  Original Name: xmlXIncludeProcess/usr/include/libxml2/libxml/xinclude.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlXIncludeProcess(doc: NullablePointer[XmlDoc] tag): I32 =>
    @xmlXIncludeProcess(doc)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:95
  Original Name: xmlXIncludeProcessFlags/usr/include/libxml2/libxml/xinclude.h:95

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlXIncludeProcessFlags(doc: NullablePointer[XmlDoc] tag, flags: I32): I32 =>
    @xmlXIncludeProcessFlags(doc, flags)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:98
  Original Name: xmlXIncludeProcessFlagsData/usr/include/libxml2/libxml/xinclude.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlXIncludeProcessFlagsData(doc: NullablePointer[XmlDoc] tag, flags: I32, data: Pointer[None] tag): I32 =>
    @xmlXIncludeProcessFlagsData(doc, flags, data)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:121
  Original Name: xmlXIncludeProcessNode/usr/include/libxml2/libxml/xinclude.h:121

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXIncludeProcessNode(ctxt: NullablePointer[XmlXIncludeCtxt] tag, tree: NullablePointer[XmlNode] tag): I32 =>
    @xmlXIncludeProcessNode(ctxt, tree)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:106
  Original Name: xmlXIncludeProcessTree/usr/include/libxml2/libxml/xinclude.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXIncludeProcessTree(tree: NullablePointer[XmlNode] tag): I32 =>
    @xmlXIncludeProcessTree(tree)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:108
  Original Name: xmlXIncludeProcessTreeFlags/usr/include/libxml2/libxml/xinclude.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlXIncludeProcessTreeFlags(tree: NullablePointer[XmlNode] tag, flags: I32): I32 =>
    @xmlXIncludeProcessTreeFlags(tree, flags)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:102
  Original Name: xmlXIncludeProcessTreeFlagsData/usr/include/libxml2/libxml/xinclude.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlXIncludeProcessTreeFlagsData(tree: NullablePointer[XmlNode] tag, flags: I32, data: Pointer[None] tag): I32 =>
    @xmlXIncludeProcessTreeFlagsData(tree, flags, data)


/*
  Source: /usr/include/libxml2/libxml/xinclude.h:116
  Original Name: xmlXIncludeSetFlags/usr/include/libxml2/libxml/xinclude.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
    [FundamentalType(int) size=32]
*/
  fun xmlXIncludeSetFlags(ctxt: NullablePointer[XmlXIncludeCtxt] tag, flags: I32): I32 =>
    @xmlXIncludeSetFlags(ctxt, flags)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:555
  Original Name: xmlXPathAddValues/usr/include/libxml2/libxml/xpathInternals.h:555

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathAddValues(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathAddValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:620
  Original Name: xmlXPathBooleanFunction/usr/include/libxml2/libxml/xpathInternals.h:620

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathBooleanFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathBooleanFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:473
  Original Name: xmlXPathCastBooleanToNumber/usr/include/libxml2/libxml/xpath.h:473

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlXPathCastBooleanToNumber(xmlval: I32): F64 =>
    @xmlXPathCastBooleanToNumber(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:484
  Original Name: xmlXPathCastBooleanToString/usr/include/libxml2/libxml/xpath.h:484

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlXPathCastBooleanToString(xmlval: I32): String =>
    var pcstring: Pointer[U8] =  @xmlXPathCastBooleanToString(xmlval)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpath.h:468
  Original Name: xmlXPathCastNodeSetToBoolean/usr/include/libxml2/libxml/xpath.h:468

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathCastNodeSetToBoolean(ns: NullablePointer[XmlNodeSet] tag): I32 =>
    @xmlXPathCastNodeSetToBoolean(ns)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:479
  Original Name: xmlXPathCastNodeSetToNumber/usr/include/libxml2/libxml/xpath.h:479

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathCastNodeSetToNumber(ns: NullablePointer[XmlNodeSet] tag): F64 =>
    @xmlXPathCastNodeSetToNumber(ns)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:490
  Original Name: xmlXPathCastNodeSetToString/usr/include/libxml2/libxml/xpath.h:490

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathCastNodeSetToString(ns: NullablePointer[XmlNodeSet] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathCastNodeSetToString(ns)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpath.h:477
  Original Name: xmlXPathCastNodeToNumber/usr/include/libxml2/libxml/xpath.h:477

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathCastNodeToNumber(node: NullablePointer[XmlNode] tag): F64 =>
    @xmlXPathCastNodeToNumber(node)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:488
  Original Name: xmlXPathCastNodeToString/usr/include/libxml2/libxml/xpath.h:488

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathCastNodeToString(node: NullablePointer[XmlNode] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathCastNodeToString(node)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpath.h:464
  Original Name: xmlXPathCastNumberToBoolean/usr/include/libxml2/libxml/xpath.h:464

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun xmlXPathCastNumberToBoolean(xmlval: F64): I32 =>
    @xmlXPathCastNumberToBoolean(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:486
  Original Name: xmlXPathCastNumberToString/usr/include/libxml2/libxml/xpath.h:486

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun xmlXPathCastNumberToString(xmlval: F64): String =>
    var pcstring: Pointer[U8] =  @xmlXPathCastNumberToString(xmlval)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpath.h:466
  Original Name: xmlXPathCastStringToBoolean/usr/include/libxml2/libxml/xpath.h:466

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathCastStringToBoolean(xmlval: String): I32 =>
    @xmlXPathCastStringToBoolean(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpath.h:475
  Original Name: xmlXPathCastStringToNumber/usr/include/libxml2/libxml/xpath.h:475

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathCastStringToNumber(xmlval: String): F64 =>
    @xmlXPathCastStringToNumber(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpath.h:470
  Original Name: xmlXPathCastToBoolean/usr/include/libxml2/libxml/xpath.h:470

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathCastToBoolean(xmlval: NullablePointer[XmlXPathObject] tag): I32 =>
    @xmlXPathCastToBoolean(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:481
  Original Name: xmlXPathCastToNumber/usr/include/libxml2/libxml/xpath.h:481

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathCastToNumber(xmlval: NullablePointer[XmlXPathObject] tag): F64 =>
    @xmlXPathCastToNumber(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:492
  Original Name: xmlXPathCastToString/usr/include/libxml2/libxml/xpath.h:492

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathCastToString(xmlval: NullablePointer[XmlXPathObject] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathCastToString(xmlval)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:618
  Original Name: xmlXPathCeilingFunction/usr/include/libxml2/libxml/xpathInternals.h:618

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathCeilingFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathCeilingFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:458
  Original Name: xmlXPathCmpNodes/usr/include/libxml2/libxml/xpath.h:458

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathCmpNodes(node1: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag): I32 =>
    @xmlXPathCmpNodes(node1, node2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:553
  Original Name: xmlXPathCompareValues/usr/include/libxml2/libxml/xpathInternals.h:553

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathCompareValues(ctxt: NullablePointer[XmlXPathParserContext] tag, inf: I32, strict: I32): I32 =>
    @xmlXPathCompareValues(ctxt, inf, strict)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:538
  Original Name: xmlXPathCompile/usr/include/libxml2/libxml/xpath.h:538

  Return Value: [PointerType size=64]->[Struct size=,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathCompile(str: String): NullablePointer[XmlXPathCompExpr] =>
    @xmlXPathCompile(str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpath.h:543
  Original Name: xmlXPathCompiledEval/usr/include/libxml2/libxml/xpath.h:543

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathCompiledEval(comp: NullablePointer[XmlXPathCompExpr] tag, ctx: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathCompiledEval(comp, ctx)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:546
  Original Name: xmlXPathCompiledEvalToBoolean/usr/include/libxml2/libxml/xpath.h:546

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathCompiledEvalToBoolean(comp: NullablePointer[XmlXPathCompExpr] tag, ctxt: NullablePointer[XmlXPathContext] tag): I32 =>
    @xmlXPathCompiledEvalToBoolean(comp, ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:603
  Original Name: xmlXPathConcatFunction/usr/include/libxml2/libxml/xpathInternals.h:603

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathConcatFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathConcatFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:604
  Original Name: xmlXPathContainsFunction/usr/include/libxml2/libxml/xpathInternals.h:604

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathContainsFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathContainsFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:509
  Original Name: xmlXPathContextSetCache/usr/include/libxml2/libxml/xpath.h:509

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathContextSetCache(ctxt: NullablePointer[XmlXPathContext] tag, active: I32, value: I32, options: I32): I32 =>
    @xmlXPathContextSetCache(ctxt, active, value, options)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:495
  Original Name: xmlXPathConvertBoolean/usr/include/libxml2/libxml/xpath.h:495

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathConvertBoolean(xmlval: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathConvertBoolean(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:497
  Original Name: xmlXPathConvertNumber/usr/include/libxml2/libxml/xpath.h:497

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathConvertNumber(xmlval: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathConvertNumber(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:499
  Original Name: xmlXPathConvertString/usr/include/libxml2/libxml/xpath.h:499

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathConvertString(xmlval: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathConvertString(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:597
  Original Name: xmlXPathCountFunction/usr/include/libxml2/libxml/xpathInternals.h:597

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathCountFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathCountFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:540
  Original Name: xmlXPathCtxtCompile/usr/include/libxml2/libxml/xpath.h:540

  Return Value: [PointerType size=64]->[Struct size=,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathCtxtCompile(ctxt: NullablePointer[XmlXPathContext] tag, str: String): NullablePointer[XmlXPathCompExpr] =>
    @xmlXPathCtxtCompile(ctxt, str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:367
  Original Name: xmlXPathDebugDumpCompExpr/usr/include/libxml2/libxml/xpathInternals.h:367

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathDebugDumpCompExpr(output: NullablePointer[IOFILE] tag, comp: NullablePointer[XmlXPathCompExpr] tag, depth: I32): None =>
    @xmlXPathDebugDumpCompExpr(output, comp, depth)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:363
  Original Name: xmlXPathDebugDumpObject/usr/include/libxml2/libxml/xpathInternals.h:363

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=576,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathDebugDumpObject(output: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlXPathObject] tag, depth: I32): None =>
    @xmlXPathDebugDumpObject(output, cur, depth)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:378
  Original Name: xmlXPathDifference/usr/include/libxml2/libxml/xpathInternals.h:378

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathDifference(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathDifference(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:387
  Original Name: xmlXPathDistinct/usr/include/libxml2/libxml/xpathInternals.h:387

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathDistinct(nodes: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathDistinct(nodes)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:385
  Original Name: xmlXPathDistinctSorted/usr/include/libxml2/libxml/xpathInternals.h:385

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathDistinctSorted(nodes: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathDistinctSorted(nodes)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:558
  Original Name: xmlXPathDivValues/usr/include/libxml2/libxml/xpathInternals.h:558

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathDivValues(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathDivValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:551
  Original Name: xmlXPathEqualValues/usr/include/libxml2/libxml/xpathInternals.h:551

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathEqualValues(ctxt: NullablePointer[XmlXPathParserContext] tag): I32 =>
    @xmlXPathEqualValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:358
  Original Name: xmlXPathErr/usr/include/libxml2/libxml/xpathInternals.h:358

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathErr(ctxt: NullablePointer[XmlXPathParserContext] tag, xmlerror: I32): None =>
    @xmlXPathErr(ctxt, xmlerror)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:526
  Original Name: xmlXPathEval/usr/include/libxml2/libxml/xpath.h:526

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathEval(str: String, ctx: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathEval(str.cstring(), ctx)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:519
  Original Name: xmlXPathEvalExpr/usr/include/libxml2/libxml/xpathInternals.h:519

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathEvalExpr(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathEvalExpr(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:529
  Original Name: xmlXPathEvalExpression/usr/include/libxml2/libxml/xpath.h:529

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathEvalExpression(str: String, ctxt: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathEvalExpression(str.cstring(), ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:532
  Original Name: xmlXPathEvalPredicate/usr/include/libxml2/libxml/xpath.h:532

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathEvalPredicate(ctxt: NullablePointer[XmlXPathContext] tag, res: NullablePointer[XmlXPathObject] tag): I32 =>
    @xmlXPathEvalPredicate(ctxt, res)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:531
  Original Name: xmlXPathEvaluatePredicateResult/usr/include/libxml2/libxml/xpathInternals.h:531

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathEvaluatePredicateResult(ctxt: NullablePointer[XmlXPathParserContext] tag, res: NullablePointer[XmlXPathObject] tag): I32 =>
    @xmlXPathEvaluatePredicateResult(ctxt, res)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:613
  Original Name: xmlXPathFalseFunction/usr/include/libxml2/libxml/xpathInternals.h:613

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathFalseFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathFalseFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:617
  Original Name: xmlXPathFloorFunction/usr/include/libxml2/libxml/xpathInternals.h:617

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathFloorFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathFloorFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:549
  Original Name: xmlXPathFreeCompExpr/usr/include/libxml2/libxml/xpath.h:549

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
*/
  fun xmlXPathFreeCompExpr(comp: NullablePointer[XmlXPathCompExpr] tag): None =>
    @xmlXPathFreeCompExpr(comp)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:507
  Original Name: xmlXPathFreeContext/usr/include/libxml2/libxml/xpath.h:507

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathFreeContext(ctxt: NullablePointer[XmlXPathContext] tag): None =>
    @xmlXPathFreeContext(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:454
  Original Name: xmlXPathFreeNodeSet/usr/include/libxml2/libxml/xpath.h:454

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathFreeNodeSet(obj: NullablePointer[XmlNodeSet] tag): None =>
    @xmlXPathFreeNodeSet(obj)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:452
  Original Name: xmlXPathFreeNodeSetList/usr/include/libxml2/libxml/xpath.h:452

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathFreeNodeSetList(obj: NullablePointer[XmlXPathObject] tag): None =>
    @xmlXPathFreeNodeSetList(obj)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:448
  Original Name: xmlXPathFreeObject/usr/include/libxml2/libxml/xpath.h:448

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathFreeObject(obj: NullablePointer[XmlXPathObject] tag): None =>
    @xmlXPathFreeObject(obj)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:478
  Original Name: xmlXPathFreeParserContext/usr/include/libxml2/libxml/xpathInternals.h:478

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathFreeParserContext(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathFreeParserContext(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:453
  Original Name: xmlXPathFunctionLookup/usr/include/libxml2/libxml/xpathInternals.h:453

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathFunctionLookup(ctxt: NullablePointer[XmlXPathContext] tag, name: String): Pointer[None] =>
    @xmlXPathFunctionLookup(ctxt, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:456
  Original Name: xmlXPathFunctionLookupNS/usr/include/libxml2/libxml/xpathInternals.h:456

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathFunctionLookupNS(ctxt: NullablePointer[XmlXPathContext] tag, name: String, nsuri: String): Pointer[None] =>
    @xmlXPathFunctionLookupNS(ctxt, name.cstring(), nsuri.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:390
  Original Name: xmlXPathHasSameNodes/usr/include/libxml2/libxml/xpathInternals.h:390

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathHasSameNodes(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): I32 =>
    @xmlXPathHasSameNodes(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:598
  Original Name: xmlXPathIdFunction/usr/include/libxml2/libxml/xpathInternals.h:598

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathIdFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathIdFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:553
  Original Name: xmlXPathInit/usr/include/libxml2/libxml/xpath.h:553

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun xmlXPathInit(): None =>
    @xmlXPathInit()


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:381
  Original Name: xmlXPathIntersection/usr/include/libxml2/libxml/xpathInternals.h:381

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathIntersection(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathIntersection(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:557
  Original Name: xmlXPathIsInf/usr/include/libxml2/libxml/xpath.h:557

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun xmlXPathIsInf(xmlval: F64): I32 =>
    @xmlXPathIsInf(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:555
  Original Name: xmlXPathIsNaN/usr/include/libxml2/libxml/xpath.h:555

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun xmlXPathIsNaN(xmlval: F64): I32 =>
    @xmlXPathIsNaN(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:561
  Original Name: xmlXPathIsNodeType/usr/include/libxml2/libxml/xpathInternals.h:561

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathIsNodeType(name: String): I32 =>
    @xmlXPathIsNodeType(name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:614
  Original Name: xmlXPathLangFunction/usr/include/libxml2/libxml/xpathInternals.h:614

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathLangFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathLangFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:595
  Original Name: xmlXPathLastFunction/usr/include/libxml2/libxml/xpathInternals.h:595

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathLastFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathLastFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:403
  Original Name: xmlXPathLeading/usr/include/libxml2/libxml/xpathInternals.h:403

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathLeading(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathLeading(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:397
  Original Name: xmlXPathLeadingSorted/usr/include/libxml2/libxml/xpathInternals.h:397

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathLeadingSorted(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathLeadingSorted(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:599
  Original Name: xmlXPathLocalNameFunction/usr/include/libxml2/libxml/xpathInternals.h:599

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathLocalNameFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathLocalNameFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:559
  Original Name: xmlXPathModValues/usr/include/libxml2/libxml/xpathInternals.h:559

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathModValues(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathModValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:557
  Original Name: xmlXPathMultValues/usr/include/libxml2/libxml/xpathInternals.h:557

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathMultValues(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathMultValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:600
  Original Name: xmlXPathNamespaceURIFunction/usr/include/libxml2/libxml/xpathInternals.h:600

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNamespaceURIFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathNamespaceURIFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:498
  Original Name: xmlXPathNewBoolean/usr/include/libxml2/libxml/xpathInternals.h:498

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNewBoolean(xmlval: I32): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewBoolean(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:490
  Original Name: xmlXPathNewCString/usr/include/libxml2/libxml/xpathInternals.h:490

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlXPathNewCString(xmlval: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewCString(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpath.h:505
  Original Name: xmlXPathNewContext/usr/include/libxml2/libxml/xpath.h:505

  Return Value: [PointerType size=64]->[Struct size=3008,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlXPathNewContext(doc: NullablePointer[XmlDoc] tag): NullablePointer[XmlXPathContext] =>
    @xmlXPathNewContext(doc)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:496
  Original Name: xmlXPathNewFloat/usr/include/libxml2/libxml/xpathInternals.h:496

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun xmlXPathNewFloat(xmlval: F64): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewFloat(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:500
  Original Name: xmlXPathNewNodeSet/usr/include/libxml2/libxml/xpathInternals.h:500

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNewNodeSet(xmlval: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewNodeSet(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:545
  Original Name: xmlXPathNewNodeSetList/usr/include/libxml2/libxml/xpathInternals.h:545

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathNewNodeSetList(xmlval: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewNodeSetList(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:475
  Original Name: xmlXPathNewParserContext/usr/include/libxml2/libxml/xpathInternals.h:475

  Return Value: [PointerType size=64]->[Struct size=704,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathNewParserContext(str: String, ctxt: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathParserContext] =>
    @xmlXPathNewParserContext(str.cstring(), ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:488
  Original Name: xmlXPathNewString/usr/include/libxml2/libxml/xpathInternals.h:488

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathNewString(xmlval: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewString(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:502
  Original Name: xmlXPathNewValueTree/usr/include/libxml2/libxml/xpathInternals.h:502

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNewValueTree(xmlval: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathNewValueTree(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:588
  Original Name: xmlXPathNextAncestor/usr/include/libxml2/libxml/xpathInternals.h:588

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextAncestor(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextAncestor(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:576
  Original Name: xmlXPathNextAncestorOrSelf/usr/include/libxml2/libxml/xpathInternals.h:576

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextAncestorOrSelf(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextAncestorOrSelf(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:584
  Original Name: xmlXPathNextAttribute/usr/include/libxml2/libxml/xpathInternals.h:584

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextAttribute(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextAttribute(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:568
  Original Name: xmlXPathNextChild/usr/include/libxml2/libxml/xpathInternals.h:568

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextChild(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextChild(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:570
  Original Name: xmlXPathNextDescendant/usr/include/libxml2/libxml/xpathInternals.h:570

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextDescendant(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextDescendant(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:572
  Original Name: xmlXPathNextDescendantOrSelf/usr/include/libxml2/libxml/xpathInternals.h:572

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextDescendantOrSelf(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextDescendantOrSelf(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:580
  Original Name: xmlXPathNextFollowing/usr/include/libxml2/libxml/xpathInternals.h:580

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextFollowing(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextFollowing(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:578
  Original Name: xmlXPathNextFollowingSibling/usr/include/libxml2/libxml/xpathInternals.h:578

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextFollowingSibling(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextFollowingSibling(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:582
  Original Name: xmlXPathNextNamespace/usr/include/libxml2/libxml/xpathInternals.h:582

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextNamespace(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextNamespace(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:574
  Original Name: xmlXPathNextParent/usr/include/libxml2/libxml/xpathInternals.h:574

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextParent(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextParent(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:586
  Original Name: xmlXPathNextPreceding/usr/include/libxml2/libxml/xpathInternals.h:586

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextPreceding(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextPreceding(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:590
  Original Name: xmlXPathNextPrecedingSibling/usr/include/libxml2/libxml/xpathInternals.h:590

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextPrecedingSibling(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextPrecedingSibling(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:566
  Original Name: xmlXPathNextSelf/usr/include/libxml2/libxml/xpathInternals.h:566

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNextSelf(ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag): NullablePointer[XmlNode] =>
    @xmlXPathNextSelf(ctxt, cur)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:522
  Original Name: xmlXPathNodeEval/usr/include/libxml2/libxml/xpath.h:522

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathNodeEval(node: NullablePointer[XmlNode] tag, str: String, ctx: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathNodeEval(node, str.cstring(), ctx)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:400
  Original Name: xmlXPathNodeLeading/usr/include/libxml2/libxml/xpathInternals.h:400

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeLeading(nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeLeading(nodes, node)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:394
  Original Name: xmlXPathNodeLeadingSorted/usr/include/libxml2/libxml/xpathInternals.h:394

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeLeadingSorted(nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeLeadingSorted(nodes, node)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:504
  Original Name: xmlXPathNodeSetAdd/usr/include/libxml2/libxml/xpathInternals.h:504

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeSetAdd(cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag): I32 =>
    @xmlXPathNodeSetAdd(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:510
  Original Name: xmlXPathNodeSetAddNs/usr/include/libxml2/libxml/xpathInternals.h:510

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlXPathNodeSetAddNs(cur: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag): I32 =>
    @xmlXPathNodeSetAddNs(cur, node, ns)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:507
  Original Name: xmlXPathNodeSetAddUnique/usr/include/libxml2/libxml/xpathInternals.h:507

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeSetAddUnique(cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag): I32 =>
    @xmlXPathNodeSetAddUnique(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:375
  Original Name: xmlXPathNodeSetContains/usr/include/libxml2/libxml/xpathInternals.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeSetContains(cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag): I32 =>
    @xmlXPathNodeSetContains(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:450
  Original Name: xmlXPathNodeSetCreate/usr/include/libxml2/libxml/xpath.h:450

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeSetCreate(xmlval: NullablePointer[XmlNode] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeSetCreate(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:539
  Original Name: xmlXPathNodeSetDel/usr/include/libxml2/libxml/xpathInternals.h:539

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeSetDel(cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag): None =>
    @xmlXPathNodeSetDel(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:625
  Original Name: xmlXPathNodeSetFreeNs/usr/include/libxml2/libxml/xpathInternals.h:625

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
  fun xmlXPathNodeSetFreeNs(ns: NullablePointer[XmlNs] tag): None =>
    @xmlXPathNodeSetFreeNs(ns)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:536
  Original Name: xmlXPathNodeSetMerge/usr/include/libxml2/libxml/xpathInternals.h:536

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathNodeSetMerge(val1: NullablePointer[XmlNodeSet] tag, val2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeSetMerge(val1, val2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:542
  Original Name: xmlXPathNodeSetRemove/usr/include/libxml2/libxml/xpathInternals.h:542

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNodeSetRemove(cur: NullablePointer[XmlNodeSet] tag, xmlval: I32): None =>
    @xmlXPathNodeSetRemove(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:514
  Original Name: xmlXPathNodeSetSort/usr/include/libxml2/libxml/xpathInternals.h:514

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathNodeSetSort(set: NullablePointer[XmlNodeSet] tag): None =>
    @xmlXPathNodeSetSort(set)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:413
  Original Name: xmlXPathNodeTrailing/usr/include/libxml2/libxml/xpathInternals.h:413

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeTrailing(nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeTrailing(nodes, node)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:407
  Original Name: xmlXPathNodeTrailingSorted/usr/include/libxml2/libxml/xpathInternals.h:407

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPathNodeTrailingSorted(nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathNodeTrailingSorted(nodes, node)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:609
  Original Name: xmlXPathNormalizeFunction/usr/include/libxml2/libxml/xpathInternals.h:609

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNormalizeFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathNormalizeFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:552
  Original Name: xmlXPathNotEqualValues/usr/include/libxml2/libxml/xpathInternals.h:552

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathNotEqualValues(ctxt: NullablePointer[XmlXPathParserContext] tag): I32 =>
    @xmlXPathNotEqualValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:611
  Original Name: xmlXPathNotFunction/usr/include/libxml2/libxml/xpathInternals.h:611

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNotFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathNotFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:429
  Original Name: xmlXPathNsLookup/usr/include/libxml2/libxml/xpathInternals.h:429

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathNsLookup(ctxt: NullablePointer[XmlXPathContext] tag, prefix: String): String val =>
    var pcstring: Pointer[U8] =  @xmlXPathNsLookup(ctxt, prefix.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:615
  Original Name: xmlXPathNumberFunction/usr/include/libxml2/libxml/xpathInternals.h:615

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathNumberFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathNumberFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:456
  Original Name: xmlXPathObjectCopy/usr/include/libxml2/libxml/xpath.h:456

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathObjectCopy(xmlval: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathObjectCopy(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:517
  Original Name: xmlXPathOrderDocElems/usr/include/libxml2/libxml/xpath.h:517

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
  fun xmlXPathOrderDocElems(doc: NullablePointer[XmlDoc] tag): I64 =>
    @xmlXPathOrderDocElems(doc)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:523
  Original Name: xmlXPathParseNCName/usr/include/libxml2/libxml/xpathInternals.h:523

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathParseNCName(ctxt: NullablePointer[XmlXPathParserContext] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathParseNCName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:521
  Original Name: xmlXPathParseName/usr/include/libxml2/libxml/xpathInternals.h:521

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathParseName(ctxt: NullablePointer[XmlXPathParserContext] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathParseName(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:104
  Original Name: xmlXPathPopBoolean/usr/include/libxml2/libxml/xpathInternals.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathPopBoolean(ctxt: NullablePointer[XmlXPathParserContext] tag): I32 =>
    @xmlXPathPopBoolean(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:112
  Original Name: xmlXPathPopExternal/usr/include/libxml2/libxml/xpathInternals.h:112

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathPopExternal(ctxt: NullablePointer[XmlXPathParserContext] tag): Pointer[None] =>
    @xmlXPathPopExternal(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:110
  Original Name: xmlXPathPopNodeSet/usr/include/libxml2/libxml/xpathInternals.h:110

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathPopNodeSet(ctxt: NullablePointer[XmlXPathParserContext] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathPopNodeSet(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:106
  Original Name: xmlXPathPopNumber/usr/include/libxml2/libxml/xpathInternals.h:106

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathPopNumber(ctxt: NullablePointer[XmlXPathParserContext] tag): F64 =>
    @xmlXPathPopNumber(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:108
  Original Name: xmlXPathPopString/usr/include/libxml2/libxml/xpathInternals.h:108

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathPopString(ctxt: NullablePointer[XmlXPathParserContext] tag): String =>
    var pcstring: Pointer[U8] =  @xmlXPathPopString(ctxt)
    let p: String iso = String.from_cstring(pcstring).clone()
    Xml2Free(pcstring)
    consume p


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:596
  Original Name: xmlXPathPositionFunction/usr/include/libxml2/libxml/xpathInternals.h:596

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathPositionFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathPositionFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:534
  Original Name: xmlXPathRegisterAllFunctions/usr/include/libxml2/libxml/xpathInternals.h:534

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathRegisterAllFunctions(ctxt: NullablePointer[XmlXPathContext] tag): None =>
    @xmlXPathRegisterAllFunctions(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:435
  Original Name: xmlXPathRegisterFunc/usr/include/libxml2/libxml/xpathInternals.h:435

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlXPathRegisterFunc(ctxt: NullablePointer[XmlXPathContext] tag, name: String, f: Pointer[None] tag): I32 =>
    @xmlXPathRegisterFunc(ctxt, name.cstring(), f)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:344
  Original Name: xmlXPathRegisterFuncLookup/usr/include/libxml2/libxml/xpathInternals.h:344

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlXPathRegisterFuncLookup(ctxt: NullablePointer[XmlXPathContext] tag, f: Pointer[None] tag, funcCtxt: Pointer[None] tag): None =>
    @xmlXPathRegisterFuncLookup(ctxt, f, funcCtxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:439
  Original Name: xmlXPathRegisterFuncNS/usr/include/libxml2/libxml/xpathInternals.h:439

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun xmlXPathRegisterFuncNS(ctxt: NullablePointer[XmlXPathContext] tag, name: String, nsuri: String, f: Pointer[None] tag): I32 =>
    @xmlXPathRegisterFuncNS(ctxt, name.cstring(), nsuri.cstring(), f)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:425
  Original Name: xmlXPathRegisterNs/usr/include/libxml2/libxml/xpathInternals.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathRegisterNs(ctxt: NullablePointer[XmlXPathContext] tag, prefix: String, nsuri: String): I32 =>
    @xmlXPathRegisterNs(ctxt, prefix.cstring(), nsuri.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:444
  Original Name: xmlXPathRegisterVariable/usr/include/libxml2/libxml/xpathInternals.h:444

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathRegisterVariable(ctxt: NullablePointer[XmlXPathContext] tag, name: String, value: NullablePointer[XmlXPathObject] tag): I32 =>
    @xmlXPathRegisterVariable(ctxt, name.cstring(), value)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:335
  Original Name: xmlXPathRegisterVariableLookup/usr/include/libxml2/libxml/xpathInternals.h:335

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlXPathRegisterVariableLookup(ctxt: NullablePointer[XmlXPathContext] tag, f: Pointer[None] tag, data: Pointer[None] tag): None =>
    @xmlXPathRegisterVariableLookup(ctxt, f, data)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:448
  Original Name: xmlXPathRegisterVariableNS/usr/include/libxml2/libxml/xpathInternals.h:448

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPathRegisterVariableNS(ctxt: NullablePointer[XmlXPathContext] tag, name: String, nsuri: String, value: NullablePointer[XmlXPathObject] tag): I32 =>
    @xmlXPathRegisterVariableNS(ctxt, name.cstring(), nsuri.cstring(), value)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:460
  Original Name: xmlXPathRegisteredFuncsCleanup/usr/include/libxml2/libxml/xpathInternals.h:460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathRegisteredFuncsCleanup(ctxt: NullablePointer[XmlXPathContext] tag): None =>
    @xmlXPathRegisteredFuncsCleanup(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:432
  Original Name: xmlXPathRegisteredNsCleanup/usr/include/libxml2/libxml/xpathInternals.h:432

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathRegisteredNsCleanup(ctxt: NullablePointer[XmlXPathContext] tag): None =>
    @xmlXPathRegisteredNsCleanup(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:469
  Original Name: xmlXPathRegisteredVariablesCleanup/usr/include/libxml2/libxml/xpathInternals.h:469

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathRegisteredVariablesCleanup(ctxt: NullablePointer[XmlXPathContext] tag): None =>
    @xmlXPathRegisteredVariablesCleanup(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:517
  Original Name: xmlXPathRoot/usr/include/libxml2/libxml/xpathInternals.h:517

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathRoot(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathRoot(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:619
  Original Name: xmlXPathRoundFunction/usr/include/libxml2/libxml/xpathInternals.h:619

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathRoundFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathRoundFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpath.h:519
  Original Name: xmlXPathSetContextNode/usr/include/libxml2/libxml/xpath.h:519

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPathSetContextNode(node: NullablePointer[XmlNode] tag, ctx: NullablePointer[XmlXPathContext] tag): I32 =>
    @xmlXPathSetContextNode(node, ctx)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:605
  Original Name: xmlXPathStartsWithFunction/usr/include/libxml2/libxml/xpathInternals.h:605

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathStartsWithFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathStartsWithFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:529
  Original Name: xmlXPathStringEvalNumber/usr/include/libxml2/libxml/xpathInternals.h:529

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathStringEvalNumber(str: String): F64 =>
    @xmlXPathStringEvalNumber(str.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:601
  Original Name: xmlXPathStringFunction/usr/include/libxml2/libxml/xpathInternals.h:601

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathStringFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathStringFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:602
  Original Name: xmlXPathStringLengthFunction/usr/include/libxml2/libxml/xpathInternals.h:602

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathStringLengthFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathStringLengthFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:556
  Original Name: xmlXPathSubValues/usr/include/libxml2/libxml/xpathInternals.h:556

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathSubValues(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathSubValues(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:608
  Original Name: xmlXPathSubstringAfterFunction/usr/include/libxml2/libxml/xpathInternals.h:608

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathSubstringAfterFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathSubstringAfterFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:607
  Original Name: xmlXPathSubstringBeforeFunction/usr/include/libxml2/libxml/xpathInternals.h:607

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathSubstringBeforeFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathSubstringBeforeFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:606
  Original Name: xmlXPathSubstringFunction/usr/include/libxml2/libxml/xpathInternals.h:606

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathSubstringFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathSubstringFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:616
  Original Name: xmlXPathSumFunction/usr/include/libxml2/libxml/xpathInternals.h:616

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathSumFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathSumFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:416
  Original Name: xmlXPathTrailing/usr/include/libxml2/libxml/xpathInternals.h:416

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathTrailing(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathTrailing(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:410
  Original Name: xmlXPathTrailingSorted/usr/include/libxml2/libxml/xpathInternals.h:410

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathTrailingSorted(nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlNodeSet] =>
    @xmlXPathTrailingSorted(nodes1, nodes2)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:610
  Original Name: xmlXPathTranslateFunction/usr/include/libxml2/libxml/xpathInternals.h:610

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathTranslateFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathTranslateFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:612
  Original Name: xmlXPathTrueFunction/usr/include/libxml2/libxml/xpathInternals.h:612

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPathTrueFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPathTrueFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:554
  Original Name: xmlXPathValueFlipSign/usr/include/libxml2/libxml/xpathInternals.h:554

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPathValueFlipSign(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPathValueFlipSign(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:462
  Original Name: xmlXPathVariableLookup/usr/include/libxml2/libxml/xpathInternals.h:462

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathVariableLookup(ctxt: NullablePointer[XmlXPathContext] tag, name: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathVariableLookup(ctxt, name.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:465
  Original Name: xmlXPathVariableLookupNS/usr/include/libxml2/libxml/xpathInternals.h:465

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathVariableLookupNS(ctxt: NullablePointer[XmlXPathContext] tag, name: String, nsuri: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathVariableLookupNS(ctxt, name.cstring(), nsuri.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:494
  Original Name: xmlXPathWrapCString/usr/include/libxml2/libxml/xpathInternals.h:494

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun xmlXPathWrapCString(xmlval: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathWrapCString(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:549
  Original Name: xmlXPathWrapExternal/usr/include/libxml2/libxml/xpathInternals.h:549

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun xmlXPathWrapExternal(xmlval: Pointer[None] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathWrapExternal(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:547
  Original Name: xmlXPathWrapNodeSet/usr/include/libxml2/libxml/xpathInternals.h:547

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPathWrapNodeSet(xmlval: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPathWrapNodeSet(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:492
  Original Name: xmlXPathWrapString/usr/include/libxml2/libxml/xpathInternals.h:492

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun xmlXPathWrapString(xmlval: String): NullablePointer[XmlXPathObject] =>
    @xmlXPathWrapString(xmlval.cstring())


/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:352
  Original Name: xmlXPatherror/usr/include/libxml2/libxml/xpathInternals.h:352

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun xmlXPatherror(ctxt: NullablePointer[XmlXPathParserContext] tag, file: String, line: I32, no: I32): None =>
    @xmlXPatherror(ctxt, file.cstring(), line, no)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:106
  Original Name: xmlXPtrBuildNodeList/usr/include/libxml2/libxml/xpointer.h:106

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrBuildNodeList(obj: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlNode] =>
    @xmlXPtrBuildNodeList(obj)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:100
  Original Name: xmlXPtrEval/usr/include/libxml2/libxml/xpointer.h:100

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
  fun xmlXPtrEval(str: String, ctx: NullablePointer[XmlXPathContext] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrEval(str.cstring(), ctx)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:108
  Original Name: xmlXPtrEvalRangePredicate/usr/include/libxml2/libxml/xpointer.h:108

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
  fun xmlXPtrEvalRangePredicate(ctxt: NullablePointer[XmlXPathParserContext] tag): None =>
    @xmlXPtrEvalRangePredicate(ctxt)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:49
  Original Name: xmlXPtrFreeLocationSet/usr/include/libxml2/libxml/xpointer.h:49

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
  fun xmlXPtrFreeLocationSet(obj: NullablePointer[XmlLocationSet] tag): None =>
    @xmlXPtrFreeLocationSet(obj)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:81
  Original Name: xmlXPtrLocationSetAdd/usr/include/libxml2/libxml/xpointer.h:81

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrLocationSetAdd(cur: NullablePointer[XmlLocationSet] tag, xmlval: NullablePointer[XmlXPathObject] tag): None =>
    @xmlXPtrLocationSetAdd(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:47
  Original Name: xmlXPtrLocationSetCreate/usr/include/libxml2/libxml/xpointer.h:47

  Return Value: [PointerType size=64]->[Struct size=128,fid: f89]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrLocationSetCreate(xmlval: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlLocationSet] =>
    @xmlXPtrLocationSetCreate(xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:86
  Original Name: xmlXPtrLocationSetDel/usr/include/libxml2/libxml/xpointer.h:86

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrLocationSetDel(cur: NullablePointer[XmlLocationSet] tag, xmlval: NullablePointer[XmlXPathObject] tag): None =>
    @xmlXPtrLocationSetDel(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:51
  Original Name: xmlXPtrLocationSetMerge/usr/include/libxml2/libxml/xpointer.h:51

  Return Value: [PointerType size=64]->[Struct size=128,fid: f89]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
  fun xmlXPtrLocationSetMerge(val1: NullablePointer[XmlLocationSet] tag, val2: NullablePointer[XmlLocationSet] tag): NullablePointer[XmlLocationSet] =>
    @xmlXPtrLocationSetMerge(val1, val2)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:89
  Original Name: xmlXPtrLocationSetRemove/usr/include/libxml2/libxml/xpointer.h:89

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [FundamentalType(int) size=32]
*/
  fun xmlXPtrLocationSetRemove(cur: NullablePointer[XmlLocationSet] tag, xmlval: I32): None =>
    @xmlXPtrLocationSetRemove(cur, xmlval)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:79
  Original Name: xmlXPtrNewCollapsedRange/usr/include/libxml2/libxml/xpointer.h:79

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPtrNewCollapsedRange(start: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewCollapsedRange(start)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:96
  Original Name: xmlXPtrNewContext/usr/include/libxml2/libxml/xpointer.h:96

  Return Value: [PointerType size=64]->[Struct size=3008,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPtrNewContext(doc: NullablePointer[XmlDoc] tag, here: NullablePointer[XmlNode] tag, origin: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathContext] =>
    @xmlXPtrNewContext(doc, here, origin)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:74
  Original Name: xmlXPtrNewLocationSetNodeSet/usr/include/libxml2/libxml/xpointer.h:74

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
  fun xmlXPtrNewLocationSetNodeSet(set: NullablePointer[XmlNodeSet] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewLocationSetNodeSet(set)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:71
  Original Name: xmlXPtrNewLocationSetNodes/usr/include/libxml2/libxml/xpointer.h:71

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPtrNewLocationSetNodes(start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewLocationSetNodes(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:54
  Original Name: xmlXPtrNewRange/usr/include/libxml2/libxml/xpointer.h:54

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
  fun xmlXPtrNewRange(start: NullablePointer[XmlNode] tag, startindex: I32, xmlend: NullablePointer[XmlNode] tag, endindex: I32): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRange(start, startindex, xmlend, endindex)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:76
  Original Name: xmlXPtrNewRangeNodeObject/usr/include/libxml2/libxml/xpointer.h:76

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrNewRangeNodeObject(start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRangeNodeObject(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:62
  Original Name: xmlXPtrNewRangeNodePoint/usr/include/libxml2/libxml/xpointer.h:62

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrNewRangeNodePoint(start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRangeNodePoint(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:68
  Original Name: xmlXPtrNewRangeNodes/usr/include/libxml2/libxml/xpointer.h:68

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPtrNewRangeNodes(start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRangeNodes(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:65
  Original Name: xmlXPtrNewRangePointNode/usr/include/libxml2/libxml/xpointer.h:65

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
  fun xmlXPtrNewRangePointNode(start: NullablePointer[XmlXPathObject] tag, xmlend: NullablePointer[XmlNode] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRangePointNode(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:59
  Original Name: xmlXPtrNewRangePoints/usr/include/libxml2/libxml/xpointer.h:59

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
  fun xmlXPtrNewRangePoints(start: NullablePointer[XmlXPathObject] tag, xmlend: NullablePointer[XmlXPathObject] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrNewRangePoints(start, xmlend)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:103
  Original Name: xmlXPtrRangeToFunction/usr/include/libxml2/libxml/xpointer.h:103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
  fun xmlXPtrRangeToFunction(ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32): None =>
    @xmlXPtrRangeToFunction(ctxt, nargs)


/*
  Source: /usr/include/libxml2/libxml/xpointer.h:84
  Original Name: xmlXPtrWrapLocationSet/usr/include/libxml2/libxml/xpointer.h:84

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
  fun xmlXPtrWrapLocationSet(xmlval: NullablePointer[XmlLocationSet] tag): NullablePointer[XmlXPathObject] =>
    @xmlXPtrWrapLocationSet(xmlval)
