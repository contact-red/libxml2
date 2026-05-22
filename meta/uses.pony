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
use @UTF8ToHtml[I32](out: Pointer[U8] tag, outlen: Pointer[I32] tag, xmlin: Pointer[U8] tag, inlen: Pointer[I32] tag)

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
use @UTF8Toisolat1[I32](out: Pointer[U8] tag, outlen: Pointer[I32] tag, xmlin: Pointer[U8] tag, inlen: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:171
  Original Name: docbDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:171

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @docbDefaultSAXHandlerInit[None]()

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:269
  Original Name: htmlAttrAllowed/usr/include/libxml2/libxml/HTMLparser.h:269

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @htmlAttrAllowed[I32](parg0: NullablePointer[HtmlElemDesc] tag, parg1: Pointer[U8] tag, parg2: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:97
  Original Name: htmlAutoCloseTag/usr/include/libxml2/libxml/HTMLparser.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @htmlAutoCloseTag[I32](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:578
  Original Name: htmlCreateFileParserCtxt/usr/include/libxml2/libxml/parserInternals.h:578

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @htmlCreateFileParserCtxt[NullablePointer[XmlParserCtxt]](filename: Pointer[U8] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:112
  Original Name: htmlCreateMemoryParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:112

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @htmlCreateMemoryParserCtxt[NullablePointer[XmlParserCtxt]](buffer: Pointer[U8] tag, size: I32)

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
use @htmlCreatePushParserCtxt[NullablePointer[XmlParserCtxt]](sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, chunk: Pointer[U8] tag, size: I32, filename: Pointer[U8] tag, enc: I32)

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
use @htmlCtxtReadDoc[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlCtxtReadFd[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlCtxtReadFile[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, filename: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlCtxtReadIO[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlCtxtReadMemory[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:192
  Original Name: htmlCtxtReset/usr/include/libxml2/libxml/HTMLparser.h:192

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @htmlCtxtReset[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:194
  Original Name: htmlCtxtUseOptions/usr/include/libxml2/libxml/HTMLparser.h:194

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @htmlCtxtUseOptions[I32](ctxt: NullablePointer[XmlParserCtxt] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:165
  Original Name: htmlDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @htmlDefaultSAXHandlerInit[None]()

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
use @htmlDocContentDumpFormatOutput[None](buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:120
  Original Name: htmlDocContentDumpOutput/usr/include/libxml2/libxml/HTMLtree.h:120

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @htmlDocContentDumpOutput[None](buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:84
  Original Name: htmlDocDump/usr/include/libxml2/libxml/HTMLtree.h:84

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @htmlDocDump[I32](f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:75
  Original Name: htmlDocDumpMemory/usr/include/libxml2/libxml/HTMLtree.h:75

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @htmlDocDumpMemory[None](cur: NullablePointer[XmlDoc] tag, mem: Pointer[Pointer[U8]] tag, size: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:79
  Original Name: htmlDocDumpMemoryFormat/usr/include/libxml2/libxml/HTMLtree.h:79

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @htmlDocDumpMemoryFormat[None](cur: NullablePointer[XmlDoc] tag, mem: Pointer[Pointer[U8]] tag, size: Pointer[I32] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:270
  Original Name: htmlElementAllowedHere/usr/include/libxml2/libxml/HTMLparser.h:270

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlElementAllowedHere[I32](parg0: NullablePointer[HtmlElemDesc] tag, parg1: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:271
  Original Name: htmlElementStatusHere/usr/include/libxml2/libxml/HTMLparser.h:271

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f70]
    [PointerType size=64]->[Struct size=512,fid: f70]
*/
use @htmlElementStatusHere[I32](parg0: NullablePointer[HtmlElemDesc] tag, parg1: NullablePointer[HtmlElemDesc] tag)

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
use @htmlEncodeEntities[I32](out: Pointer[U8] tag, outlen: Pointer[I32] tag, xmlin: Pointer[U8] tag, inlen: Pointer[I32] tag, quoteChar: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:89
  Original Name: htmlEntityLookup/usr/include/libxml2/libxml/HTMLparser.h:89

  Return Value: [PointerType size=64]->[Struct size=192,fid: f70]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlEntityLookup[NullablePointer[HtmlEntityDesc]](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:91
  Original Name: htmlEntityValueLookup/usr/include/libxml2/libxml/HTMLparser.h:91

  Return Value: [PointerType size=64]->[Struct size=192,fid: f70]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @htmlEntityValueLookup[NullablePointer[HtmlEntityDesc]](value: U32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:167
  Original Name: htmlFreeParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @htmlFreeParserCtxt[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:69
  Original Name: htmlGetMetaEncoding/usr/include/libxml2/libxml/HTMLtree.h:69

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @htmlGetMetaEncoding[Pointer[U8]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:146
  Original Name: htmlHandleOmittedElem/usr/include/libxml2/libxml/HTMLparser.h:146

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @htmlHandleOmittedElem[I32](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:577
  Original Name: htmlInitAutoClose/usr/include/libxml2/libxml/parserInternals.h:577

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @htmlInitAutoClose[None]()

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:94
  Original Name: htmlIsAutoClosed/usr/include/libxml2/libxml/HTMLparser.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @htmlIsAutoClosed[I32](doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:137
  Original Name: htmlIsBooleanAttr/usr/include/libxml2/libxml/HTMLtree.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlIsBooleanAttr[I32](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:144
  Original Name: htmlIsScriptAttribute/usr/include/libxml2/libxml/HTMLparser.h:144

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlIsScriptAttribute[I32](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:63
  Original Name: htmlNewDoc/usr/include/libxml2/libxml/HTMLtree.h:63

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlNewDoc[NullablePointer[XmlDoc]](uRI: Pointer[U8] tag, externalID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:66
  Original Name: htmlNewDocNoDtD/usr/include/libxml2/libxml/HTMLtree.h:66

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlNewDocNoDtD[NullablePointer[XmlDoc]](uRI: Pointer[U8] tag, externalID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:109
  Original Name: htmlNewParserCtxt/usr/include/libxml2/libxml/HTMLparser.h:109

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
*/
use @htmlNewParserCtxt[NullablePointer[XmlParserCtxt]]()

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:90
  Original Name: htmlNodeDump/usr/include/libxml2/libxml/HTMLtree.h:90

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @htmlNodeDump[I32](buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:94
  Original Name: htmlNodeDumpFile/usr/include/libxml2/libxml/HTMLtree.h:94

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @htmlNodeDumpFile[None](out: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag)

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
use @htmlNodeDumpFileFormat[I32](out: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: Pointer[U8] tag, format: I32)

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
use @htmlNodeDumpFormatOutput[None](buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: Pointer[U8] tag, format: I32)

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
use @htmlNodeDumpOutput[None](buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:272
  Original Name: htmlNodeStatus/usr/include/libxml2/libxml/HTMLparser.h:272

  Return Value: [Enumeration size=32,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @htmlNodeStatus[I32](parg0: NullablePointer[XmlNode] tag, parg1: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:104
  Original Name: htmlParseCharRef/usr/include/libxml2/libxml/HTMLparser.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @htmlParseCharRef[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @htmlParseChunk[I32](ctxt: NullablePointer[XmlParserCtxt] tag, chunk: Pointer[U8] tag, size: I32, terminate: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:123
  Original Name: htmlParseDoc/usr/include/libxml2/libxml/HTMLparser.h:123

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @htmlParseDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:116
  Original Name: htmlParseDocument/usr/include/libxml2/libxml/HTMLparser.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @htmlParseDocument[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:106
  Original Name: htmlParseElement/usr/include/libxml2/libxml/HTMLparser.h:106

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @htmlParseElement[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:101
  Original Name: htmlParseEntityRef/usr/include/libxml2/libxml/HTMLparser.h:101

  Return Value: [PointerType size=64]->[Struct size=192,fid: f70]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlParseEntityRef[NullablePointer[HtmlEntityDesc]](ctxt: NullablePointer[XmlParserCtxt] tag, str: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:131
  Original Name: htmlParseFile/usr/include/libxml2/libxml/HTMLparser.h:131

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @htmlParseFile[NullablePointer[XmlDoc]](filename: Pointer[U8] tag, encoding: Pointer[U8] tag)

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
use @htmlReadDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlReadFd[NullablePointer[XmlDoc]](fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:202
  Original Name: htmlReadFile/usr/include/libxml2/libxml/HTMLparser.h:202

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @htmlReadFile[NullablePointer[XmlDoc]](uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlReadIO[NullablePointer[XmlDoc]](ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlReadMemory[NullablePointer[XmlDoc]](buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @htmlSAXParseDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag, encoding: Pointer[U8] tag, sax: NullablePointer[XmlSAXHandler] tag, userData: Pointer[None] tag)

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
use @htmlSAXParseFile[NullablePointer[XmlDoc]](filename: Pointer[U8] tag, encoding: Pointer[U8] tag, sax: NullablePointer[XmlSAXHandler] tag, userData: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:87
  Original Name: htmlSaveFile/usr/include/libxml2/libxml/HTMLtree.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @htmlSaveFile[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:104
  Original Name: htmlSaveFileEnc/usr/include/libxml2/libxml/HTMLtree.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @htmlSaveFileEnc[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag)

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
use @htmlSaveFileFormat[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/HTMLtree.h:71
  Original Name: htmlSetMetaEncoding/usr/include/libxml2/libxml/HTMLtree.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlSetMetaEncoding[I32](doc: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/HTMLparser.h:87
  Original Name: htmlTagLookup/usr/include/libxml2/libxml/HTMLparser.h:87

  Return Value: [PointerType size=64]->[Struct size=512,fid: f70]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @htmlTagLookup[NullablePointer[HtmlElemDesc]](xmltag: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:866
  Original Name: initGenericErrorDefaultFunc/usr/include/libxml2/libxml/xmlerror.h:866

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @initGenericErrorDefaultFunc[None](handler: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:545
  Original Name: inputPop/usr/include/libxml2/libxml/parserInternals.h:545

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @inputPop[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:543
  Original Name: inputPush/usr/include/libxml2/libxml/parserInternals.h:543

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @inputPush[I32](ctxt: NullablePointer[XmlParserCtxt] tag, value: NullablePointer[XmlParserInput] tag)

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
use @isolat1ToUTF8[I32](out: Pointer[U8] tag, outlen: Pointer[I32] tag, xmlin: Pointer[U8] tag, inlen: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:546
  Original Name: namePop/usr/include/libxml2/libxml/parserInternals.h:546

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @namePop[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:547
  Original Name: namePush/usr/include/libxml2/libxml/parserInternals.h:547

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @namePush[I32](ctxt: NullablePointer[XmlParserCtxt] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:542
  Original Name: nodePop/usr/include/libxml2/libxml/parserInternals.h:542

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @nodePop[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:540
  Original Name: nodePush/usr/include/libxml2/libxml/parserInternals.h:540

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @nodePush[I32](ctxt: NullablePointer[XmlParserCtxt] tag, value: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:482
  Original Name: valuePop/usr/include/libxml2/libxml/xpathInternals.h:482

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @valuePop[NullablePointer[XmlXPathObject]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:484
  Original Name: valuePush/usr/include/libxml2/libxml/xpathInternals.h:484

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @valuePush[I32](ctxt: NullablePointer[XmlXPathParserContext] tag, value: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xlink.h:164
  Original Name: xlinkGetDefaultDetect/usr/include/libxml2/libxml/xlink.h:164

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
*/
use @xlinkGetDefaultDetect[Pointer[None]]()

/*
  Source: /usr/include/libxml2/libxml/xlink.h:172
  Original Name: xlinkGetDefaultHandler/usr/include/libxml2/libxml/xlink.h:172

  Return Value: [PointerType size=64]->[Struct size=192,fid: f62]

  Arguments:
*/
use @xlinkGetDefaultHandler[NullablePointer[XlinkHandler]]()

/*
  Source: /usr/include/libxml2/libxml/xlink.h:180
  Original Name: xlinkIsLink/usr/include/libxml2/libxml/xlink.h:180

  Return Value: [Enumeration size=32,fid: f62]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xlinkIsLink[I32](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xlink.h:166
  Original Name: xlinkSetDefaultDetect/usr/include/libxml2/libxml/xlink.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xlinkSetDefaultDetect[None](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xlink.h:174
  Original Name: xlinkSetDefaultHandler/usr/include/libxml2/libxml/xlink.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f62]
*/
use @xlinkSetDefaultHandler[None](handler: NullablePointer[XlinkHandler] tag)

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
use @xmlACatalogAdd[I32](catal: NullablePointer[XmlCatalog] tag, xmltype: Pointer[U8] tag, orig: Pointer[U8] tag, replace: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:100
  Original Name: xmlACatalogDump/usr/include/libxml2/libxml/catalog.h:100

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
use @xmlACatalogDump[None](catal: NullablePointer[XmlCatalog] tag, out: NullablePointer[IOFILE] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:83
  Original Name: xmlACatalogRemove/usr/include/libxml2/libxml/catalog.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlACatalogRemove[I32](catal: NullablePointer[XmlCatalog] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:86
  Original Name: xmlACatalogResolve/usr/include/libxml2/libxml/catalog.h:86

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlACatalogResolve[Pointer[U8]](catal: NullablePointer[XmlCatalog] tag, pubID: Pointer[U8] tag, sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:93
  Original Name: xmlACatalogResolvePublic/usr/include/libxml2/libxml/catalog.h:93

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlACatalogResolvePublic[Pointer[U8]](catal: NullablePointer[XmlCatalog] tag, pubID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:90
  Original Name: xmlACatalogResolveSystem/usr/include/libxml2/libxml/catalog.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlACatalogResolveSystem[Pointer[U8]](catal: NullablePointer[XmlCatalog] tag, sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:96
  Original Name: xmlACatalogResolveURI/usr/include/libxml2/libxml/catalog.h:96

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlACatalogResolveURI[Pointer[U8]](catal: NullablePointer[XmlCatalog] tag, uRI: Pointer[U8] tag)

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
use @xmlAddAttributeDecl[NullablePointer[XmlAttribute]](ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, elem: Pointer[U8] tag, name: Pointer[U8] tag, ns: Pointer[U8] tag, xmltype: I32, def: I32, defaultValue: Pointer[U8] tag, tree: NullablePointer[XmlEnumeration] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:954
  Original Name: xmlAddChild/usr/include/libxml2/libxml/tree.h:954

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlAddChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:957
  Original Name: xmlAddChildList/usr/include/libxml2/libxml/tree.h:957

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlAddChildList[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag)

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
use @xmlAddDocEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, xmltype: I32, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlAddDtdEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, xmltype: I32, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlAddElementDecl[NullablePointer[XmlElement]](ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, name: Pointer[U8] tag, xmltype: I32, content: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:190
  Original Name: xmlAddEncodingAlias/usr/include/libxml2/libxml/encoding.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlAddEncodingAlias[I32](name: Pointer[U8] tag, alias: Pointer[U8] tag)

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
use @xmlAddID[NullablePointer[XmlID]](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, value: Pointer[U8] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:974
  Original Name: xmlAddNextSibling/usr/include/libxml2/libxml/tree.h:974

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlAddNextSibling[NullablePointer[XmlNode]](cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag)

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
use @xmlAddNotationDecl[NullablePointer[XmlNotation]](ctxt: NullablePointer[XmlValidCtxt] tag, dtd: NullablePointer[XmlDtd] tag, name: Pointer[U8] tag, publicID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:967
  Original Name: xmlAddPrevSibling/usr/include/libxml2/libxml/tree.h:967

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlAddPrevSibling[NullablePointer[XmlNode]](cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag)

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
use @xmlAddRef[NullablePointer[XmlRef]](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, value: Pointer[U8] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:971
  Original Name: xmlAddSibling/usr/include/libxml2/libxml/tree.h:971

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlAddSibling[NullablePointer[XmlNode]](cur: NullablePointer[XmlNode] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:225
  Original Name: xmlAllocOutputBuffer/usr/include/libxml2/libxml/xmlIO.h:225

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlAllocOutputBuffer[NullablePointer[XmlOutputBuffer]](encoder: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:167
  Original Name: xmlAllocParserInputBuffer/usr/include/libxml2/libxml/xmlIO.h:167

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
use @xmlAllocParserInputBuffer[NullablePointer[XmlParserInputBuffer]](enc: I32)

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
use @xmlAttrSerializeTxtContent[None](buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag, string: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:135
  Original Name: xmlAutomataCompile/usr/include/libxml2/libxml/xmlautomata.h:135

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataCompile[NullablePointer[XmlRegexp]](am: NullablePointer[XmlAutomata] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:49
  Original Name: xmlAutomataGetInitState/usr/include/libxml2/libxml/xmlautomata.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataGetInitState[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:137
  Original Name: xmlAutomataIsDeterminist/usr/include/libxml2/libxml/xmlautomata.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataIsDeterminist[I32](am: NullablePointer[XmlAutomata] tag)

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
use @xmlAutomataNewAllTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, lax: I32)

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
use @xmlAutomataNewCountTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, min: I32, max: I32, data: Pointer[None] tag)

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
use @xmlAutomataNewCountTrans2[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, token2: Pointer[U8] tag, min: I32, max: I32, data: Pointer[None] tag)

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
use @xmlAutomataNewCountedTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, counter: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:130
  Original Name: xmlAutomataNewCounter/usr/include/libxml2/libxml/xmlautomata.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlAutomataNewCounter[I32](am: NullablePointer[XmlAutomata] tag, min: I32, max: I32)

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
use @xmlAutomataNewCounterTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, counter: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:116
  Original Name: xmlAutomataNewEpsilon/usr/include/libxml2/libxml/xmlautomata.h:116

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataNewEpsilon[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag)

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
use @xmlAutomataNewNegTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, token2: Pointer[U8] tag, data: Pointer[None] tag)

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
use @xmlAutomataNewOnceTrans[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, min: I32, max: I32, data: Pointer[None] tag)

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
use @xmlAutomataNewOnceTrans2[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, token2: Pointer[U8] tag, min: I32, max: I32, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:54
  Original Name: xmlAutomataNewState/usr/include/libxml2/libxml/xmlautomata.h:54

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataNewState[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag)

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
use @xmlAutomataNewTransition[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, data: Pointer[None] tag)

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
use @xmlAutomataNewTransition2[NullablePointer[XmlAutomataState]](am: NullablePointer[XmlAutomata] tag, from: NullablePointer[XmlAutomataState] tag, to: NullablePointer[XmlAutomataState] tag, token: Pointer[U8] tag, token2: Pointer[U8] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:51
  Original Name: xmlAutomataSetFinalState/usr/include/libxml2/libxml/xmlautomata.h:51

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlAutomataSetFinalState[I32](am: NullablePointer[XmlAutomata] tag, state: NullablePointer[XmlAutomataState] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:86
  Original Name: xmlBoolToText/usr/include/libxml2/libxml/debugXML.h:86

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlBoolToText[Pointer[U8]](boolval: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:120
  Original Name: xmlBufContent/usr/include/libxml2/libxml/tree.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
use @xmlBufContent[Pointer[U8]](buf: NullablePointer[XmlBuf] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:121
  Original Name: xmlBufEnd/usr/include/libxml2/libxml/tree.h:121

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
use @xmlBufEnd[Pointer[U8]](buf: NullablePointer[XmlBuf] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1094
  Original Name: xmlBufGetNodeContent/usr/include/libxml2/libxml/tree.h:1094

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlBufGetNodeContent[I32](buf: NullablePointer[XmlBuf] tag, cur: NullablePointer[XmlNode] tag)

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
use @xmlBufNodeDump[U64](buf: NullablePointer[XmlBuf] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:123
  Original Name: xmlBufShrink/usr/include/libxml2/libxml/tree.h:123

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlBufShrink[U64](buf: NullablePointer[XmlBuf] tag, len: U64)

/*
  Source: /usr/include/libxml2/libxml/tree.h:122
  Original Name: xmlBufUse/usr/include/libxml2/libxml/tree.h:122

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f16]
*/
use @xmlBufUse[U64](buf: NullablePointer[XmlBuf] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:729
  Original Name: xmlBufferAdd/usr/include/libxml2/libxml/tree.h:729

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlBufferAdd[I32](buf: NullablePointer[XmlBuffer] tag, str: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:733
  Original Name: xmlBufferAddHead/usr/include/libxml2/libxml/tree.h:733

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlBufferAddHead[I32](buf: NullablePointer[XmlBuffer] tag, str: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:740
  Original Name: xmlBufferCCat/usr/include/libxml2/libxml/tree.h:740

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlBufferCCat[I32](buf: NullablePointer[XmlBuffer] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:737
  Original Name: xmlBufferCat/usr/include/libxml2/libxml/tree.h:737

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlBufferCat[I32](buf: NullablePointer[XmlBuffer] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:751
  Original Name: xmlBufferContent/usr/include/libxml2/libxml/tree.h:751

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferContent[Pointer[U8]](buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:714
  Original Name: xmlBufferCreate/usr/include/libxml2/libxml/tree.h:714

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
*/
use @xmlBufferCreate[NullablePointer[XmlBuffer]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:716
  Original Name: xmlBufferCreateSize/usr/include/libxml2/libxml/tree.h:716

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlBufferCreateSize[NullablePointer[XmlBuffer]](size: U64)

/*
  Source: /usr/include/libxml2/libxml/tree.h:718
  Original Name: xmlBufferCreateStatic/usr/include/libxml2/libxml/tree.h:718

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlBufferCreateStatic[NullablePointer[XmlBuffer]](mem: Pointer[None] tag, size: U64)

/*
  Source: /usr/include/libxml2/libxml/tree.h:753
  Original Name: xmlBufferDetach/usr/include/libxml2/libxml/tree.h:753

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferDetach[Pointer[U8]](buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:726
  Original Name: xmlBufferDump/usr/include/libxml2/libxml/tree.h:726

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferDump[I32](file: NullablePointer[IOFILE] tag, buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:749
  Original Name: xmlBufferEmpty/usr/include/libxml2/libxml/tree.h:749

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferEmpty[None](buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:724
  Original Name: xmlBufferFree/usr/include/libxml2/libxml/tree.h:724

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferFree[None](buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:746
  Original Name: xmlBufferGrow/usr/include/libxml2/libxml/tree.h:746

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
use @xmlBufferGrow[I32](buf: NullablePointer[XmlBuffer] tag, len: U32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:758
  Original Name: xmlBufferLength/usr/include/libxml2/libxml/tree.h:758

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlBufferLength[I32](buf: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:721
  Original Name: xmlBufferResize/usr/include/libxml2/libxml/tree.h:721

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
use @xmlBufferResize[I32](buf: NullablePointer[XmlBuffer] tag, size: U32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:755
  Original Name: xmlBufferSetAllocationScheme/usr/include/libxml2/libxml/tree.h:755

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [Enumeration size=32,fid: f16]
*/
use @xmlBufferSetAllocationScheme[None](buf: NullablePointer[XmlBuffer] tag, scheme: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:743
  Original Name: xmlBufferShrink/usr/include/libxml2/libxml/tree.h:743

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(unsigned int) size=32]
*/
use @xmlBufferShrink[I32](buf: NullablePointer[XmlBuffer] tag, len: U32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1137
  Original Name: xmlBufferWriteCHAR/usr/include/libxml2/libxml/tree.h:1137

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlBufferWriteCHAR[None](buf: NullablePointer[XmlBuffer] tag, string: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1140
  Original Name: xmlBufferWriteChar/usr/include/libxml2/libxml/tree.h:1140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlBufferWriteChar[None](buf: NullablePointer[XmlBuffer] tag, string: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1143
  Original Name: xmlBufferWriteQuotedString/usr/include/libxml2/libxml/tree.h:1143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlBufferWriteQuotedString[None](buf: NullablePointer[XmlBuffer] tag, string: Pointer[U8] tag)

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
use @xmlBuildQName[Pointer[U8]](ncname: Pointer[U8] tag, prefix: Pointer[U8] tag, memory: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/uri.h:58
  Original Name: xmlBuildRelativeURI/usr/include/libxml2/libxml/uri.h:58

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlBuildRelativeURI[Pointer[U8]](uRI: Pointer[U8] tag, base: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:55
  Original Name: xmlBuildURI/usr/include/libxml2/libxml/uri.h:55

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlBuildURI[Pointer[U8]](uRI: Pointer[U8] tag, base: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1080
  Original Name: xmlByteConsumed/usr/include/libxml2/libxml/parser.h:1080

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlByteConsumed[I64](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/c14n.h:78
  Original Name: xmlC14NDocDumpMemory/usr/include/libxml2/libxml/c14n.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=128,fid: f65]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlC14NDocDumpMemory[I32](doc: NullablePointer[XmlDoc] tag, nodes: NullablePointer[XmlNodeSet] tag, mode: I32, inclusivensprefixes: Pointer[Pointer[U8]] tag, withcomments: I32, doctxtptr: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/c14n.h:86
  Original Name: xmlC14NDocSave/usr/include/libxml2/libxml/c14n.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=128,fid: f65]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlC14NDocSave[I32](doc: NullablePointer[XmlDoc] tag, nodes: NullablePointer[XmlNodeSet] tag, mode: I32, inclusivensprefixes: Pointer[Pointer[U8]] tag, withcomments: I32, filename: Pointer[U8] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/c14n.h:70
  Original Name: xmlC14NDocSaveTo/usr/include/libxml2/libxml/c14n.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=128,fid: f65]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlC14NDocSaveTo[I32](doc: NullablePointer[XmlDoc] tag, nodes: NullablePointer[XmlNodeSet] tag, mode: I32, inclusivensprefixes: Pointer[Pointer[U8]] tag, withcomments: I32, buf: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/c14n.h:113
  Original Name: xmlC14NExecute/usr/include/libxml2/libxml/c14n.h:113

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlC14NExecute[I32](doc: NullablePointer[XmlDoc] tag, isvisiblecallback: Pointer[None] tag, userdata: Pointer[None] tag, mode: I32, inclusivensprefixes: Pointer[Pointer[U8]] tag, withcomments: I32, buf: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:87
  Original Name: xmlCanonicPath/usr/include/libxml2/libxml/uri.h:87

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCanonicPath[Pointer[U8]](path: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:133
  Original Name: xmlCatalogAdd/usr/include/libxml2/libxml/catalog.h:133

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogAdd[I32](xmltype: Pointer[U8] tag, orig: Pointer[U8] tag, replace: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:150
  Original Name: xmlCatalogAddLocal/usr/include/libxml2/libxml/catalog.h:150

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogAddLocal[Pointer[None]](catalogs: Pointer[None] tag, uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:118
  Original Name: xmlCatalogCleanup/usr/include/libxml2/libxml/catalog.h:118

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCatalogCleanup[None]()

/*
  Source: /usr/include/libxml2/libxml/catalog.h:141
  Original Name: xmlCatalogConvert/usr/include/libxml2/libxml/catalog.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlCatalogConvert[I32]()

/*
  Source: /usr/include/libxml2/libxml/catalog.h:121
  Original Name: xmlCatalogDump/usr/include/libxml2/libxml/catalog.h:121

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
use @xmlCatalogDump[None](out: NullablePointer[IOFILE] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:148
  Original Name: xmlCatalogFreeLocal/usr/include/libxml2/libxml/catalog.h:148

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlCatalogFreeLocal[None](catalogs: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:169
  Original Name: xmlCatalogGetDefaults/usr/include/libxml2/libxml/catalog.h:169

  Return Value: [Enumeration size=32,fid: f67]

  Arguments:
*/
use @xmlCatalogGetDefaults[I32]()

/*
  Source: /usr/include/libxml2/libxml/catalog.h:176
  Original Name: xmlCatalogGetPublic/usr/include/libxml2/libxml/catalog.h:176

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogGetPublic[Pointer[U8]](pubID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:174
  Original Name: xmlCatalogGetSystem/usr/include/libxml2/libxml/catalog.h:174

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogGetSystem[Pointer[U8]](sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:106
  Original Name: xmlCatalogIsEmpty/usr/include/libxml2/libxml/catalog.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
use @xmlCatalogIsEmpty[I32](catal: NullablePointer[XmlCatalog] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:153
  Original Name: xmlCatalogLocalResolve/usr/include/libxml2/libxml/catalog.h:153

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogLocalResolve[Pointer[U8]](catalogs: Pointer[None] tag, pubID: Pointer[U8] tag, sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:157
  Original Name: xmlCatalogLocalResolveURI/usr/include/libxml2/libxml/catalog.h:157

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogLocalResolveURI[Pointer[U8]](catalogs: Pointer[None] tag, uRI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:137
  Original Name: xmlCatalogRemove/usr/include/libxml2/libxml/catalog.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogRemove[I32](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:124
  Original Name: xmlCatalogResolve/usr/include/libxml2/libxml/catalog.h:124

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogResolve[Pointer[U8]](pubID: Pointer[U8] tag, sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:129
  Original Name: xmlCatalogResolvePublic/usr/include/libxml2/libxml/catalog.h:129

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogResolvePublic[Pointer[U8]](pubID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:127
  Original Name: xmlCatalogResolveSystem/usr/include/libxml2/libxml/catalog.h:127

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogResolveSystem[Pointer[U8]](sysID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:131
  Original Name: xmlCatalogResolveURI/usr/include/libxml2/libxml/catalog.h:131

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCatalogResolveURI[Pointer[U8]](uRI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:163
  Original Name: xmlCatalogSetDebug/usr/include/libxml2/libxml/catalog.h:163

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlCatalogSetDebug[I32](level: I32)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:165
  Original Name: xmlCatalogSetDefaultPrefer/usr/include/libxml2/libxml/catalog.h:165

  Return Value: [Enumeration size=32,fid: f67]

  Arguments:
    [Enumeration size=32,fid: f67]
*/
use @xmlCatalogSetDefaultPrefer[I32](prefer: I32)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:167
  Original Name: xmlCatalogSetDefaults/usr/include/libxml2/libxml/catalog.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [Enumeration size=32,fid: f67]
*/
use @xmlCatalogSetDefaults[None](allow: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:224
  Original Name: xmlCharEncCloseFunc/usr/include/libxml2/libxml/encoding.h:224

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlCharEncCloseFunc[I32](handler: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:220
  Original Name: xmlCharEncFirstLine/usr/include/libxml2/libxml/encoding.h:220

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlCharEncFirstLine[I32](handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:216
  Original Name: xmlCharEncInFunc/usr/include/libxml2/libxml/encoding.h:216

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlCharEncInFunc[I32](handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:211
  Original Name: xmlCharEncOutFunc/usr/include/libxml2/libxml/encoding.h:211

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlCharEncOutFunc[I32](handler: NullablePointer[XmlCharEncodingHandler] tag, out: NullablePointer[XmlBuffer] tag, xmlin: NullablePointer[XmlBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:55
  Original Name: xmlCharInRange/usr/include/libxml2/libxml/chvalid.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f68]
*/
use @xmlCharInRange[I32](xmlval: U32, group: NullablePointer[XmlChRangeGroup] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:49
  Original Name: xmlCharStrdup/usr/include/libxml2/libxml/xmlstring.h:49

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlCharStrdup[Pointer[U8]](cur: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:46
  Original Name: xmlCharStrndup/usr/include/libxml2/libxml/xmlstring.h:46

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlCharStrndup[Pointer[U8]](cur: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:312
  Original Name: xmlCheckFilename/usr/include/libxml2/libxml/xmlIO.h:312

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlCheckFilename[I32](path: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:293
  Original Name: xmlCheckHTTPInput/usr/include/libxml2/libxml/xmlIO.h:293

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlCheckHTTPInput[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag, ret: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:558
  Original Name: xmlCheckLanguageID/usr/include/libxml2/libxml/parserInternals.h:558

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCheckLanguageID[I32](lang: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:112
  Original Name: xmlCheckUTF8/usr/include/libxml2/libxml/xmlstring.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCheckUTF8[I32](utf: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlversion.h:24
  Original Name: xmlCheckVersion/usr/include/libxml2/libxml/xmlversion.h:24

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlCheckVersion[None](version: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1305
  Original Name: xmlChildElementCount/usr/include/libxml2/libxml/tree.h:1305

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlChildElementCount[U64](parent: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:174
  Original Name: xmlCleanupCharEncodingHandlers/usr/include/libxml2/libxml/encoding.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupCharEncodingHandlers[None]()

/*
  Source: /usr/include/libxml2/libxml/encoding.h:197
  Original Name: xmlCleanupEncodingAliases/usr/include/libxml2/libxml/encoding.h:197

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupEncodingAliases[None]()

/*
  Source: /usr/include/libxml2/libxml/globals.h:28
  Original Name: xmlCleanupGlobals/usr/include/libxml2/libxml/globals.h:28

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupGlobals[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:159
  Original Name: xmlCleanupInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupInputCallbacks[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:136
  Original Name: xmlCleanupMemory/usr/include/libxml2/libxml/xmlmemory.h:136

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupMemory[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:219
  Original Name: xmlCleanupOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:219

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupOutputCallbacks[None]()

/*
  Source: /usr/include/libxml2/libxml/parser.h:827
  Original Name: xmlCleanupParser/usr/include/libxml2/libxml/parser.h:827

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupParser[None]()

/*
  Source: /usr/include/libxml2/libxml/entities.h:143
  Original Name: xmlCleanupPredefinedEntities/usr/include/libxml2/libxml/entities.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupPredefinedEntities[None]()

/*
  Source: /usr/include/libxml2/libxml/threads.h:71
  Original Name: xmlCleanupThreads/usr/include/libxml2/libxml/threads.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlCleanupThreads[None]()

/*
  Source: /usr/include/libxml2/libxml/parser.h:1055
  Original Name: xmlClearNodeInfoSeq/usr/include/libxml2/libxml/parser.h:1055

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
*/
use @xmlClearNodeInfoSeq[None](seq: NullablePointer[XmlParserNodeInfoSeq] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:983
  Original Name: xmlClearParserCtxt/usr/include/libxml2/libxml/parser.h:983

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlClearParserCtxt[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:76
  Original Name: xmlConvertSGMLCatalog/usr/include/libxml2/libxml/catalog.h:76

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
use @xmlConvertSGMLCatalog[I32](catal: NullablePointer[XmlCatalog] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:253
  Original Name: xmlCopyAttributeTable/usr/include/libxml2/libxml/valid.h:253

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlCopyAttributeTable[NullablePointer[XmlHashTable]](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:567
  Original Name: xmlCopyChar/usr/include/libxml2/libxml/parserInternals.h:567

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlCopyChar[I32](len: I32, out: Pointer[U8] tag, xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:565
  Original Name: xmlCopyCharMultiByte/usr/include/libxml2/libxml/parserInternals.h:565

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlCopyCharMultiByte[I32](out: Pointer[U8] tag, xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:832
  Original Name: xmlCopyDoc/usr/include/libxml2/libxml/tree.h:832

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlCopyDoc[NullablePointer[XmlDoc]](doc: NullablePointer[XmlDoc] tag, recursive: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:189
  Original Name: xmlCopyDocElementContent/usr/include/libxml2/libxml/valid.h:189

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlCopyDocElementContent[NullablePointer[XmlElementContent]](doc: NullablePointer[XmlDoc] tag, content: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:828
  Original Name: xmlCopyDtd/usr/include/libxml2/libxml/tree.h:828

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
use @xmlCopyDtd[NullablePointer[XmlDtd]](dtd: NullablePointer[XmlDtd] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:180
  Original Name: xmlCopyElementContent/usr/include/libxml2/libxml/valid.h:180

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlCopyElementContent[NullablePointer[XmlElementContent]](content: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:217
  Original Name: xmlCopyElementTable/usr/include/libxml2/libxml/valid.h:217

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlCopyElementTable[NullablePointer[XmlHashTable]](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:129
  Original Name: xmlCopyEntitiesTable/usr/include/libxml2/libxml/entities.h:129

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlCopyEntitiesTable[NullablePointer[XmlHashTable]](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:237
  Original Name: xmlCopyEnumeration/usr/include/libxml2/libxml/valid.h:237

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
use @xmlCopyEnumeration[NullablePointer[XmlEnumeration]](cur: NullablePointer[XmlEnumeration] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:910
  Original Name: xmlCopyError/usr/include/libxml2/libxml/xmlerror.h:910

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f25]
    [PointerType size=64]->[Struct size=704,fid: f25]
*/
use @xmlCopyError[I32](from: NullablePointer[XmlError] tag, to: NullablePointer[XmlError] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1017
  Original Name: xmlCopyNamespace/usr/include/libxml2/libxml/tree.h:1017

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlCopyNamespace[NullablePointer[XmlNs]](cur: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1019
  Original Name: xmlCopyNamespaceList/usr/include/libxml2/libxml/tree.h:1019

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlCopyNamespaceList[NullablePointer[XmlNs]](cur: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:896
  Original Name: xmlCopyNode/usr/include/libxml2/libxml/tree.h:896

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlCopyNode[NullablePointer[XmlNode]](node: NullablePointer[XmlNode] tag, recursive: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:906
  Original Name: xmlCopyNodeList/usr/include/libxml2/libxml/tree.h:906

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlCopyNodeList[NullablePointer[XmlNode]](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:161
  Original Name: xmlCopyNotationTable/usr/include/libxml2/libxml/valid.h:161

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlCopyNotationTable[NullablePointer[XmlHashTable]](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:821
  Original Name: xmlCopyProp/usr/include/libxml2/libxml/tree.h:821

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlCopyProp[NullablePointer[XmlAttr]](target: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:824
  Original Name: xmlCopyPropList/usr/include/libxml2/libxml/tree.h:824

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlCopyPropList[NullablePointer[XmlAttr]](target: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:993
  Original Name: xmlCreateDocParserCtxt/usr/include/libxml2/libxml/parser.h:993

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCreateDocParserCtxt[NullablePointer[XmlParserCtxt]](cur: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:126
  Original Name: xmlCreateEntitiesTable/usr/include/libxml2/libxml/entities.h:126

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
*/
use @xmlCreateEntitiesTable[NullablePointer[XmlHashTable]]()

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:333
  Original Name: xmlCreateEntityParserCtxt/usr/include/libxml2/libxml/parserInternals.h:333

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCreateEntityParserCtxt[NullablePointer[XmlParserCtxt]](uRL: Pointer[U8] tag, iD: Pointer[U8] tag, base: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:232
  Original Name: xmlCreateEnumeration/usr/include/libxml2/libxml/valid.h:232

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlCreateEnumeration[NullablePointer[XmlEnumeration]](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:325
  Original Name: xmlCreateFileParserCtxt/usr/include/libxml2/libxml/parserInternals.h:325

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlCreateFileParserCtxt[NullablePointer[XmlParserCtxt]](filename: Pointer[U8] tag)

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
use @xmlCreateIOParserCtxt[NullablePointer[XmlParserCtxt]](sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, enc: I32)

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
use @xmlCreateIntSubset[NullablePointer[XmlDtd]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:330
  Original Name: xmlCreateMemoryParserCtxt/usr/include/libxml2/libxml/parserInternals.h:330

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlCreateMemoryParserCtxt[NullablePointer[XmlParserCtxt]](buffer: Pointer[U8] tag, size: I32)

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
use @xmlCreatePushParserCtxt[NullablePointer[XmlParserCtxt]](sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, chunk: Pointer[U8] tag, size: I32, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:53
  Original Name: xmlCreateURI/usr/include/libxml2/libxml/uri.h:53

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
*/
use @xmlCreateURI[NullablePointer[XmlURI]]()

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:327
  Original Name: xmlCreateURLParserCtxt/usr/include/libxml2/libxml/parserInternals.h:327

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlCreateURLParserCtxt[NullablePointer[XmlParserCtxt]](filename: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:904
  Original Name: xmlCtxtGetLastError/usr/include/libxml2/libxml/xmlerror.h:904

  Return Value: [PointerType size=64]->[Struct size=704,fid: f25]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlCtxtGetLastError[NullablePointer[XmlError]](ctx: Pointer[None] tag)

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
use @xmlCtxtReadDoc[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlCtxtReadFd[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlCtxtReadFile[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, filename: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlCtxtReadIO[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlCtxtReadMemory[NullablePointer[XmlDoc]](ctxt: NullablePointer[XmlParserCtxt] tag, buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1120
  Original Name: xmlCtxtReset/usr/include/libxml2/libxml/parser.h:1120

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlCtxtReset[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:906
  Original Name: xmlCtxtResetLastError/usr/include/libxml2/libxml/xmlerror.h:906

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlCtxtResetLastError[None](ctx: Pointer[None] tag)

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
use @xmlCtxtResetPush[I32](ctxt: NullablePointer[XmlParserCtxt] tag, chunk: Pointer[U8] tag, size: I32, filename: Pointer[U8] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1128
  Original Name: xmlCtxtUseOptions/usr/include/libxml2/libxml/parser.h:1128

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlCtxtUseOptions[I32](ctxt: NullablePointer[XmlParserCtxt] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:563
  Original Name: xmlCurrentChar/usr/include/libxml2/libxml/parserInternals.h:563

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlCurrentChar[I32](ctxt: NullablePointer[XmlParserCtxt] tag, len: Pointer[I32] tag)

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
use @xmlDOMWrapAdoptNode[I32](ctxt: NullablePointer[XmlDOMWrapCtxt] tag, sourceDoc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, destDoc: NullablePointer[XmlDoc] tag, destParent: NullablePointer[XmlNode] tag, options: I32)

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
use @xmlDOMWrapCloneNode[I32](ctxt: NullablePointer[XmlDOMWrapCtxt] tag, sourceDoc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, clonedNode: Pointer[NullablePointer[XmlNode]] tag, destDoc: NullablePointer[XmlDoc] tag, destParent: NullablePointer[XmlNode] tag, deep: I32, options: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1272
  Original Name: xmlDOMWrapFreeCtxt/usr/include/libxml2/libxml/tree.h:1272

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
*/
use @xmlDOMWrapFreeCtxt[None](ctxt: NullablePointer[XmlDOMWrapCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1270
  Original Name: xmlDOMWrapNewCtxt/usr/include/libxml2/libxml/tree.h:1270

  Return Value: [PointerType size=64]->[Struct size=256,fid: f16]

  Arguments:
*/
use @xmlDOMWrapNewCtxt[NullablePointer[XmlDOMWrapCtxt]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:1274
  Original Name: xmlDOMWrapReconcileNamespaces/usr/include/libxml2/libxml/tree.h:1274

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDOMWrapReconcileNamespaces[I32](ctxt: NullablePointer[XmlDOMWrapCtxt] tag, elem: NullablePointer[XmlNode] tag, options: I32)

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
use @xmlDOMWrapRemoveNode[I32](ctxt: NullablePointer[XmlDOMWrapCtxt] tag, doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:71
  Original Name: xmlDebugCheckDocument/usr/include/libxml2/libxml/debugXML.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDebugCheckDocument[I32](output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:32
  Original Name: xmlDebugDumpAttr/usr/include/libxml2/libxml/debugXML.h:32

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDebugDumpAttr[None](output: NullablePointer[IOFILE] tag, attr: NullablePointer[XmlAttr] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:36
  Original Name: xmlDebugDumpAttrList/usr/include/libxml2/libxml/debugXML.h:36

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=768,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDebugDumpAttrList[None](output: NullablePointer[IOFILE] tag, attr: NullablePointer[XmlAttr] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:58
  Original Name: xmlDebugDumpDTD/usr/include/libxml2/libxml/debugXML.h:58

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
use @xmlDebugDumpDTD[None](output: NullablePointer[IOFILE] tag, dtd: NullablePointer[XmlDtd] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:55
  Original Name: xmlDebugDumpDocument/usr/include/libxml2/libxml/debugXML.h:55

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDebugDumpDocument[None](output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:52
  Original Name: xmlDebugDumpDocumentHead/usr/include/libxml2/libxml/debugXML.h:52

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDebugDumpDocumentHead[None](output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:61
  Original Name: xmlDebugDumpEntities/usr/include/libxml2/libxml/debugXML.h:61

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDebugDumpEntities[None](output: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:44
  Original Name: xmlDebugDumpNode/usr/include/libxml2/libxml/debugXML.h:44

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDebugDumpNode[None](output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:48
  Original Name: xmlDebugDumpNodeList/usr/include/libxml2/libxml/debugXML.h:48

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDebugDumpNodeList[None](output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:40
  Original Name: xmlDebugDumpOneNode/usr/include/libxml2/libxml/debugXML.h:40

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDebugDumpOneNode[None](output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:29
  Original Name: xmlDebugDumpString/usr/include/libxml2/libxml/debugXML.h:29

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlDebugDumpString[None](output: NullablePointer[IOFILE] tag, str: Pointer[U8] tag)

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
use @xmlDecodeEntities[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, len: I32, what: I32, xmlend: U8, end2: U8, end3: U8)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:174
  Original Name: xmlDefaultSAXHandlerInit/usr/include/libxml2/libxml/SAX2.h:174

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlDefaultSAXHandlerInit[None]()

/*
  Source: /usr/include/libxml2/libxml/encoding.h:193
  Original Name: xmlDelEncodingAlias/usr/include/libxml2/libxml/encoding.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlDelEncodingAlias[I32](alias: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:185
  Original Name: xmlDeregisterNodeDefault/usr/include/libxml2/libxml/globals.h:185

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlDeregisterNodeDefault[Pointer[None]](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:207
  Original Name: xmlDetectCharEncoding/usr/include/libxml2/libxml/encoding.h:207

  Return Value: [Enumeration size=32,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlDetectCharEncoding[I32](xmlin: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/dict.h:74
  Original Name: xmlDictCleanup/usr/include/libxml2/libxml/dict.h:74

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlDictCleanup[None]()

/*
  Source: /usr/include/libxml2/libxml/dict.h:36
  Original Name: xmlDictCreate/usr/include/libxml2/libxml/dict.h:36

  Return Value: [PointerType size=64]->[Struct size=,fid: f21]

  Arguments:
*/
use @xmlDictCreate[NullablePointer[XmlDict]]()

/*
  Source: /usr/include/libxml2/libxml/dict.h:43
  Original Name: xmlDictCreateSub/usr/include/libxml2/libxml/dict.h:43

  Return Value: [PointerType size=64]->[Struct size=,fid: f21]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlDictCreateSub[NullablePointer[XmlDict]](sub: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:57
  Original Name: xmlDictExists/usr/include/libxml2/libxml/dict.h:57

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlDictExists[Pointer[U8]](dict: NullablePointer[XmlDict] tag, name: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/dict.h:47
  Original Name: xmlDictFree/usr/include/libxml2/libxml/dict.h:47

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlDictFree[None](dict: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:41
  Original Name: xmlDictGetUsage/usr/include/libxml2/libxml/dict.h:41

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlDictGetUsage[U64](dict: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:53
  Original Name: xmlDictLookup/usr/include/libxml2/libxml/dict.h:53

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlDictLookup[Pointer[U8]](dict: NullablePointer[XmlDict] tag, name: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/dict.h:65
  Original Name: xmlDictOwns/usr/include/libxml2/libxml/dict.h:65

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlDictOwns[I32](dict: NullablePointer[XmlDict] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:61
  Original Name: xmlDictQLookup/usr/include/libxml2/libxml/dict.h:61

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlDictQLookup[Pointer[U8]](dict: NullablePointer[XmlDict] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:45
  Original Name: xmlDictReference/usr/include/libxml2/libxml/dict.h:45

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlDictReference[I32](dict: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/dict.h:38
  Original Name: xmlDictSetLimit/usr/include/libxml2/libxml/dict.h:38

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlDictSetLimit[U64](dict: NullablePointer[XmlDict] tag, limit: U64)

/*
  Source: /usr/include/libxml2/libxml/dict.h:68
  Original Name: xmlDictSize/usr/include/libxml2/libxml/dict.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlDictSize[I32](dict: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:899
  Original Name: xmlDocCopyNode/usr/include/libxml2/libxml/tree.h:899

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDocCopyNode[NullablePointer[XmlNode]](node: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag, recursive: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:903
  Original Name: xmlDocCopyNodeList/usr/include/libxml2/libxml/tree.h:903

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlDocCopyNodeList[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1191
  Original Name: xmlDocDump/usr/include/libxml2/libxml/tree.h:1191

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDocDump[I32](f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1167
  Original Name: xmlDocDumpFormatMemory/usr/include/libxml2/libxml/tree.h:1167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlDocDumpFormatMemory[None](cur: NullablePointer[XmlDoc] tag, mem: Pointer[Pointer[U8]] tag, size: Pointer[I32] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1181
  Original Name: xmlDocDumpFormatMemoryEnc/usr/include/libxml2/libxml/tree.h:1181

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlDocDumpFormatMemoryEnc[None](outdoc: NullablePointer[XmlDoc] tag, doctxtptr: Pointer[Pointer[U8]] tag, doctxtlen: Pointer[I32] tag, txtencoding: Pointer[U8] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1172
  Original Name: xmlDocDumpMemory/usr/include/libxml2/libxml/tree.h:1172

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlDocDumpMemory[None](cur: NullablePointer[XmlDoc] tag, mem: Pointer[Pointer[U8]] tag, size: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1176
  Original Name: xmlDocDumpMemoryEnc/usr/include/libxml2/libxml/tree.h:1176

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlDocDumpMemoryEnc[None](outdoc: NullablePointer[XmlDoc] tag, doctxtptr: Pointer[Pointer[U8]] tag, doctxtlen: Pointer[I32] tag, txtencoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1187
  Original Name: xmlDocFormatDump/usr/include/libxml2/libxml/tree.h:1187

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlDocFormatDump[I32](f: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlDoc] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:932
  Original Name: xmlDocGetRootElement/usr/include/libxml2/libxml/tree.h:932

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlDocGetRootElement[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:945
  Original Name: xmlDocSetRootElement/usr/include/libxml2/libxml/tree.h:945

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlDocSetRootElement[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, root: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:262
  Original Name: xmlDumpAttributeDecl/usr/include/libxml2/libxml/valid.h:262

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlDumpAttributeDecl[None](buf: NullablePointer[XmlBuffer] tag, attr: NullablePointer[XmlAttribute] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:259
  Original Name: xmlDumpAttributeTable/usr/include/libxml2/libxml/valid.h:259

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlDumpAttributeTable[None](buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:226
  Original Name: xmlDumpElementDecl/usr/include/libxml2/libxml/valid.h:226

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
use @xmlDumpElementDecl[None](buf: NullablePointer[XmlBuffer] tag, elem: NullablePointer[XmlElement] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:223
  Original Name: xmlDumpElementTable/usr/include/libxml2/libxml/valid.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlDumpElementTable[None](buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:135
  Original Name: xmlDumpEntitiesTable/usr/include/libxml2/libxml/entities.h:135

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlDumpEntitiesTable[None](buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:138
  Original Name: xmlDumpEntityDecl/usr/include/libxml2/libxml/entities.h:138

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
use @xmlDumpEntityDecl[None](buf: NullablePointer[XmlBuffer] tag, ent: NullablePointer[XmlEntity] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:167
  Original Name: xmlDumpNotationDecl/usr/include/libxml2/libxml/valid.h:167

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=192,fid: f16]
*/
use @xmlDumpNotationDecl[None](buf: NullablePointer[XmlBuffer] tag, nota: NullablePointer[XmlNotation] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:170
  Original Name: xmlDumpNotationTable/usr/include/libxml2/libxml/valid.h:170

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlDumpNotationTable[None](buf: NullablePointer[XmlBuffer] tag, table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1194
  Original Name: xmlElemDump/usr/include/libxml2/libxml/tree.h:1194

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlElemDump[None](f: NullablePointer[IOFILE] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:116
  Original Name: xmlEncodeEntities/usr/include/libxml2/libxml/entities.h:116

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlEncodeEntities[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, input: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:120
  Original Name: xmlEncodeEntitiesReentrant/usr/include/libxml2/libxml/entities.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlEncodeEntitiesReentrant[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, input: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:123
  Original Name: xmlEncodeSpecialChars/usr/include/libxml2/libxml/entities.h:123

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlEncodeSpecialChars[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, input: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:325
  Original Name: xmlFileClose/usr/include/libxml2/libxml/xmlIO.h:325

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlFileClose[I32](context: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:317
  Original Name: xmlFileMatch/usr/include/libxml2/libxml/xmlIO.h:317

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlFileMatch[I32](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:319
  Original Name: xmlFileOpen/usr/include/libxml2/libxml/xmlIO.h:319

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlFileOpen[Pointer[None]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:321
  Original Name: xmlFileRead/usr/include/libxml2/libxml/xmlIO.h:321

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlFileRead[I32](context: Pointer[None] tag, buffer: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:180
  Original Name: xmlFindCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:180

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlFindCharEncodingHandler[NullablePointer[XmlCharEncodingHandler]](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1309
  Original Name: xmlFirstElementChild/usr/include/libxml2/libxml/tree.h:1309

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlFirstElementChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:256
  Original Name: xmlFreeAttributeTable/usr/include/libxml2/libxml/valid.h:256

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeAttributeTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:46
  Original Name: xmlFreeAutomata/usr/include/libxml2/libxml/xmlautomata.h:46

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f27]
*/
use @xmlFreeAutomata[None](am: NullablePointer[XmlAutomata] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:104
  Original Name: xmlFreeCatalog/usr/include/libxml2/libxml/catalog.h:104

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f67]
*/
use @xmlFreeCatalog[None](catal: NullablePointer[XmlCatalog] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:794
  Original Name: xmlFreeDoc/usr/include/libxml2/libxml/tree.h:794

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlFreeDoc[None](cur: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:192
  Original Name: xmlFreeDocElementContent/usr/include/libxml2/libxml/valid.h:192

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlFreeDocElementContent[None](doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:776
  Original Name: xmlFreeDtd/usr/include/libxml2/libxml/tree.h:776

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
use @xmlFreeDtd[None](cur: NullablePointer[XmlDtd] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:182
  Original Name: xmlFreeElementContent/usr/include/libxml2/libxml/valid.h:182

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlFreeElementContent[None](cur: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:220
  Original Name: xmlFreeElementTable/usr/include/libxml2/libxml/valid.h:220

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeElementTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:132
  Original Name: xmlFreeEntitiesTable/usr/include/libxml2/libxml/entities.h:132

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeEntitiesTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:234
  Original Name: xmlFreeEnumeration/usr/include/libxml2/libxml/valid.h:234

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
use @xmlFreeEnumeration[None](cur: NullablePointer[XmlEnumeration] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:273
  Original Name: xmlFreeIDTable/usr/include/libxml2/libxml/valid.h:273

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeIDTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:372
  Original Name: xmlFreeInputStream/usr/include/libxml2/libxml/parserInternals.h:372

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlFreeInputStream[None](input: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:46
  Original Name: xmlFreeMutex/usr/include/libxml2/libxml/threads.h:46

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlFreeMutex[None](tok: NullablePointer[XmlMutex] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:988
  Original Name: xmlFreeNode/usr/include/libxml2/libxml/tree.h:988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlFreeNode[None](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:986
  Original Name: xmlFreeNodeList/usr/include/libxml2/libxml/tree.h:986

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlFreeNodeList[None](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:164
  Original Name: xmlFreeNotationTable/usr/include/libxml2/libxml/valid.h:164

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeNotationTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:788
  Original Name: xmlFreeNs/usr/include/libxml2/libxml/tree.h:788

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlFreeNs[None](cur: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:790
  Original Name: xmlFreeNsList/usr/include/libxml2/libxml/tree.h:790

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlFreeNsList[None](cur: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:985
  Original Name: xmlFreeParserCtxt/usr/include/libxml2/libxml/parser.h:985

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlFreeParserCtxt[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:200
  Original Name: xmlFreeParserInputBuffer/usr/include/libxml2/libxml/xmlIO.h:200

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
*/
use @xmlFreeParserInputBuffer[None](xmlin: NullablePointer[XmlParserInputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:47
  Original Name: xmlFreePattern/usr/include/libxml2/libxml/pattern.h:47

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlFreePattern[None](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:50
  Original Name: xmlFreePatternList/usr/include/libxml2/libxml/pattern.h:50

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlFreePatternList[None](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:819
  Original Name: xmlFreeProp/usr/include/libxml2/libxml/tree.h:819

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlFreeProp[None](cur: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:817
  Original Name: xmlFreePropList/usr/include/libxml2/libxml/tree.h:817

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlFreePropList[None](cur: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:55
  Original Name: xmlFreeRMutex/usr/include/libxml2/libxml/threads.h:55

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlFreeRMutex[None](tok: NullablePointer[XmlRMutex] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:292
  Original Name: xmlFreeRefTable/usr/include/libxml2/libxml/valid.h:292

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlFreeRefTable[None](table: NullablePointer[XmlHashTable] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:76
  Original Name: xmlFreeStreamCtxt/usr/include/libxml2/libxml/pattern.h:76

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlFreeStreamCtxt[None](stream: NullablePointer[XmlStreamCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:118
  Original Name: xmlFreeTextReader/usr/include/libxml2/libxml/xmlreader.h:118

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlFreeTextReader[None](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:45
  Original Name: xmlFreeTextWriter/usr/include/libxml2/libxml/xmlwriter.h:45

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlFreeTextWriter[None](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:85
  Original Name: xmlFreeURI/usr/include/libxml2/libxml/uri.h:85

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
use @xmlFreeURI[None](uri: NullablePointer[XmlURI] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:312
  Original Name: xmlFreeValidCtxt/usr/include/libxml2/libxml/valid.h:312

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
*/
use @xmlFreeValidCtxt[None](parg0: NullablePointer[XmlValidCtxt] tag)

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
use @xmlGcMemGet[I32](freeFunc: NullablePointer[Pointer[None]] tag, mallocFunc: NullablePointer[Pointer[None]] tag, mallocAtomicFunc: NullablePointer[Pointer[None]] tag, reallocFunc: NullablePointer[Pointer[None]] tag, strdupFunc: NullablePointer[Pointer[None]] tag)

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
use @xmlGcMemSetup[I32](freeFunc: Pointer[None] tag, mallocFunc: Pointer[None] tag, mallocAtomicFunc: Pointer[None] tag, reallocFunc: Pointer[None] tag, strdupFunc: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:711
  Original Name: xmlGetBufferAllocationScheme/usr/include/libxml2/libxml/tree.h:711

  Return Value: [Enumeration size=32,fid: f16]

  Arguments:
*/
use @xmlGetBufferAllocationScheme[I32]()

/*
  Source: /usr/include/libxml2/libxml/encoding.h:178
  Original Name: xmlGetCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:178

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
use @xmlGetCharEncodingHandler[NullablePointer[XmlCharEncodingHandler]](enc: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:201
  Original Name: xmlGetCharEncodingName/usr/include/libxml2/libxml/encoding.h:201

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [Enumeration size=32,fid: f42]
*/
use @xmlGetCharEncodingName[Pointer[U8]](enc: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1262
  Original Name: xmlGetCompressMode/usr/include/libxml2/libxml/tree.h:1262

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlGetCompressMode[I32]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:1257
  Original Name: xmlGetDocCompressMode/usr/include/libxml2/libxml/tree.h:1257

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlGetDocCompressMode[I32](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:106
  Original Name: xmlGetDocEntity/usr/include/libxml2/libxml/entities.h:106

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDocEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:390
  Original Name: xmlGetDtdAttrDesc/usr/include/libxml2/libxml/valid.h:390

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDtdAttrDesc[NullablePointer[XmlAttribute]](dtd: NullablePointer[XmlDtd] tag, elem: Pointer[U8] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:406
  Original Name: xmlGetDtdElementDesc/usr/include/libxml2/libxml/valid.h:406

  Return Value: [PointerType size=64]->[Struct size=896,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDtdElementDesc[NullablePointer[XmlElement]](dtd: NullablePointer[XmlDtd] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:109
  Original Name: xmlGetDtdEntity/usr/include/libxml2/libxml/entities.h:109

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDtdEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:399
  Original Name: xmlGetDtdNotationDesc/usr/include/libxml2/libxml/valid.h:399

  Return Value: [PointerType size=64]->[Struct size=192,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDtdNotationDesc[NullablePointer[XmlNotation]](dtd: NullablePointer[XmlDtd] tag, name: Pointer[U8] tag)

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
use @xmlGetDtdQAttrDesc[NullablePointer[XmlAttribute]](dtd: NullablePointer[XmlDtd] tag, elem: Pointer[U8] tag, name: Pointer[U8] tag, prefix: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:402
  Original Name: xmlGetDtdQElementDesc/usr/include/libxml2/libxml/valid.h:402

  Return Value: [PointerType size=64]->[Struct size=896,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1024,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetDtdQElementDesc[NullablePointer[XmlElement]](dtd: NullablePointer[XmlDtd] tag, name: Pointer[U8] tag, prefix: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:195
  Original Name: xmlGetEncodingAlias/usr/include/libxml2/libxml/encoding.h:195

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlGetEncodingAlias[Pointer[U8]](alias: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1070
  Original Name: xmlGetExternalEntityLoader/usr/include/libxml2/libxml/parser.h:1070

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
*/
use @xmlGetExternalEntityLoader[Pointer[None]]()

/*
  Source: /usr/include/libxml2/libxml/parser.h:1003
  Original Name: xmlGetFeature/usr/include/libxml2/libxml/parser.h:1003

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlGetFeature[I32](ctxt: NullablePointer[XmlParserCtxt] tag, name: Pointer[U8] tag, result: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1000
  Original Name: xmlGetFeaturesList/usr/include/libxml2/libxml/parser.h:1000

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlGetFeaturesList[I32](len: Pointer[I32] tag, result: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:73
  Original Name: xmlGetGlobalState/usr/include/libxml2/libxml/threads.h:73

  Return Value: [PointerType size=64]->[Struct size=7744,fid: f64]

  Arguments:
*/
use @xmlGetGlobalState[NullablePointer[XmlGlobalState]]()

/*
  Source: /usr/include/libxml2/libxml/valid.h:275
  Original Name: xmlGetID/usr/include/libxml2/libxml/valid.h:275

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetID[NullablePointer[XmlAttr]](doc: NullablePointer[XmlDoc] tag, iD: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:774
  Original Name: xmlGetIntSubset/usr/include/libxml2/libxml/tree.h:774

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlGetIntSubset[NullablePointer[XmlDtd]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:934
  Original Name: xmlGetLastChild/usr/include/libxml2/libxml/tree.h:934

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlGetLastChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:900
  Original Name: xmlGetLastError/usr/include/libxml2/libxml/xmlerror.h:900

  Return Value: [PointerType size=64]->[Struct size=704,fid: f25]

  Arguments:
*/
use @xmlGetLastError[NullablePointer[XmlError]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:926
  Original Name: xmlGetLineNo/usr/include/libxml2/libxml/tree.h:926

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlGetLineNo[I64](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1038
  Original Name: xmlGetNoNsProp/usr/include/libxml2/libxml/tree.h:1038

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetNoNsProp[Pointer[U8]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:929
  Original Name: xmlGetNodePath/usr/include/libxml2/libxml/tree.h:929

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlGetNodePath[Pointer[U8]](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1009
  Original Name: xmlGetNsList/usr/include/libxml2/libxml/tree.h:1009

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlGetNsList[Pointer[NullablePointer[XmlNs]]](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1051
  Original Name: xmlGetNsProp/usr/include/libxml2/libxml/tree.h:1051

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetNsProp[Pointer[U8]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, nameSpace: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:112
  Original Name: xmlGetParameterEntity/usr/include/libxml2/libxml/entities.h:112

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetParameterEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:104
  Original Name: xmlGetPredefinedEntity/usr/include/libxml2/libxml/entities.h:104

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetPredefinedEntity[NullablePointer[XmlEntity]](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1041
  Original Name: xmlGetProp/usr/include/libxml2/libxml/tree.h:1041

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetProp[Pointer[U8]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:301
  Original Name: xmlGetRefs/usr/include/libxml2/libxml/valid.h:301

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlGetRefs[NullablePointer[XmlList]](doc: NullablePointer[XmlDoc] tag, iD: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:67
  Original Name: xmlGetThreadId/usr/include/libxml2/libxml/threads.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlGetThreadId[I32]()

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:109
  Original Name: xmlGetUTF8Char/usr/include/libxml2/libxml/xmlstring.h:109

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlGetUTF8Char[I32](utf: Pointer[U8] tag, len: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:627
  Original Name: xmlHandleEntity/usr/include/libxml2/libxml/parserInternals.h:627

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
use @xmlHandleEntity[None](ctxt: NullablePointer[XmlParserCtxt] tag, entity: NullablePointer[XmlEntity] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1238
  Original Name: xmlHasFeature/usr/include/libxml2/libxml/parser.h:1238

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [Enumeration size=32,fid: f17]
*/
use @xmlHasFeature[I32](feature: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1047
  Original Name: xmlHasNsProp/usr/include/libxml2/libxml/tree.h:1047

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHasNsProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, nameSpace: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1044
  Original Name: xmlHasProp/usr/include/libxml2/libxml/tree.h:1044

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHasProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:122
  Original Name: xmlHashAddEntry/usr/include/libxml2/libxml/hash.h:122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlHashAddEntry[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, userdata: Pointer[None] tag)

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
use @xmlHashAddEntry2[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, userdata: Pointer[None] tag)

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
use @xmlHashAddEntry3[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag, userdata: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:207
  Original Name: xmlHashCopy/usr/include/libxml2/libxml/hash.h:207

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlHashCopy[NullablePointer[XmlHashTable]](table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:107
  Original Name: xmlHashCreate/usr/include/libxml2/libxml/hash.h:107

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlHashCreate[NullablePointer[XmlHashTable]](size: I32)

/*
  Source: /usr/include/libxml2/libxml/hash.h:109
  Original Name: xmlHashCreateDict/usr/include/libxml2/libxml/hash.h:109

  Return Value: [PointerType size=64]->[Struct size=,fid: f24]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=,fid: f21]
*/
use @xmlHashCreateDict[NullablePointer[XmlHashTable]](size: I32, dict: NullablePointer[XmlDict] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:115
  Original Name: xmlHashDefaultDeallocator/usr/include/libxml2/libxml/hash.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHashDefaultDeallocator[None](entry: Pointer[None] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:112
  Original Name: xmlHashFree/usr/include/libxml2/libxml/hash.h:112

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlHashFree[None](table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:173
  Original Name: xmlHashLookup/usr/include/libxml2/libxml/hash.h:173

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHashLookup[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:176
  Original Name: xmlHashLookup2/usr/include/libxml2/libxml/hash.h:176

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHashLookup2[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag)

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
use @xmlHashLookup3[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:185
  Original Name: xmlHashQLookup/usr/include/libxml2/libxml/hash.h:185

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlHashQLookup[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, prefix: Pointer[U8] tag)

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
use @xmlHashQLookup2[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, prefix: Pointer[U8] tag, name2: Pointer[U8] tag, prefix2: Pointer[U8] tag)

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
use @xmlHashQLookup3[Pointer[None]](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, prefix: Pointer[U8] tag, name2: Pointer[U8] tag, prefix2: Pointer[U8] tag, name3: Pointer[U8] tag, prefix3: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:159
  Original Name: xmlHashRemoveEntry/usr/include/libxml2/libxml/hash.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlHashRemoveEntry[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, f: Pointer[None] tag)

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
use @xmlHashRemoveEntry2[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, f: Pointer[None] tag)

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
use @xmlHashRemoveEntry3[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:212
  Original Name: xmlHashScan/usr/include/libxml2/libxml/hash.h:212

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlHashScan[None](table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag, data: Pointer[None] tag)

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
use @xmlHashScan3[None](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag, f: Pointer[None] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:223
  Original Name: xmlHashScanFull/usr/include/libxml2/libxml/hash.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlHashScanFull[None](table: NullablePointer[XmlHashTable] tag, f: Pointer[None] tag, data: Pointer[None] tag)

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
use @xmlHashScanFull3[None](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag, f: Pointer[None] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/hash.h:210
  Original Name: xmlHashSize/usr/include/libxml2/libxml/hash.h:210

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f24]
*/
use @xmlHashSize[I32](table: NullablePointer[XmlHashTable] tag)

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
use @xmlHashUpdateEntry[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, userdata: Pointer[None] tag, f: Pointer[None] tag)

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
use @xmlHashUpdateEntry2[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, userdata: Pointer[None] tag, f: Pointer[None] tag)

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
use @xmlHashUpdateEntry3[I32](table: NullablePointer[XmlHashTable] tag, name: Pointer[U8] tag, name2: Pointer[U8] tag, name3: Pointer[U8] tag, userdata: Pointer[None] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:361
  Original Name: xmlIOFTPClose/usr/include/libxml2/libxml/xmlIO.h:361

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlIOFTPClose[I32](context: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:353
  Original Name: xmlIOFTPMatch/usr/include/libxml2/libxml/xmlIO.h:353

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlIOFTPMatch[I32](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:355
  Original Name: xmlIOFTPOpen/usr/include/libxml2/libxml/xmlIO.h:355

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlIOFTPOpen[Pointer[None]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:357
  Original Name: xmlIOFTPRead/usr/include/libxml2/libxml/xmlIO.h:357

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlIOFTPRead[I32](context: Pointer[None] tag, buffer: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:345
  Original Name: xmlIOHTTPClose/usr/include/libxml2/libxml/xmlIO.h:345

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlIOHTTPClose[I32](context: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:332
  Original Name: xmlIOHTTPMatch/usr/include/libxml2/libxml/xmlIO.h:332

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlIOHTTPMatch[I32](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:334
  Original Name: xmlIOHTTPOpen/usr/include/libxml2/libxml/xmlIO.h:334

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlIOHTTPOpen[Pointer[None]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:337
  Original Name: xmlIOHTTPOpenW/usr/include/libxml2/libxml/xmlIO.h:337

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlIOHTTPOpenW[Pointer[None]](posturi: Pointer[U8] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:341
  Original Name: xmlIOHTTPRead/usr/include/libxml2/libxml/xmlIO.h:341

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlIOHTTPRead[I32](context: Pointer[None] tag, buffer: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:932
  Original Name: xmlIOParseDTD/usr/include/libxml2/libxml/parser.h:932

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [Enumeration size=32,fid: f42]
*/
use @xmlIOParseDTD[NullablePointer[XmlDtd]](sax: NullablePointer[XmlSAXHandler] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:172
  Original Name: xmlInitCharEncodingHandlers/usr/include/libxml2/libxml/encoding.h:172

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitCharEncodingHandlers[None]()

/*
  Source: /usr/include/libxml2/libxml/globals.h:27
  Original Name: xmlInitGlobals/usr/include/libxml2/libxml/globals.h:27

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitGlobals[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:130
  Original Name: xmlInitMemory/usr/include/libxml2/libxml/xmlmemory.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlInitMemory[I32]()

/*
  Source: /usr/include/libxml2/libxml/parser.h:1053
  Original Name: xmlInitNodeInfoSeq/usr/include/libxml2/libxml/parser.h:1053

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
*/
use @xmlInitNodeInfoSeq[None](seq: NullablePointer[XmlParserNodeInfoSeq] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:825
  Original Name: xmlInitParser/usr/include/libxml2/libxml/parser.h:825

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitParser[None]()

/*
  Source: /usr/include/libxml2/libxml/parser.h:981
  Original Name: xmlInitParserCtxt/usr/include/libxml2/libxml/parser.h:981

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlInitParserCtxt[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:61
  Original Name: xmlInitThreads/usr/include/libxml2/libxml/threads.h:61

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitThreads[None]()

/*
  Source: /usr/include/libxml2/libxml/catalog.h:112
  Original Name: xmlInitializeCatalog/usr/include/libxml2/libxml/catalog.h:112

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitializeCatalog[None]()

/*
  Source: /usr/include/libxml2/libxml/dict.h:30
  Original Name: xmlInitializeDict/usr/include/libxml2/libxml/dict.h:30

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlInitializeDict[I32]()

/*
  Source: /usr/include/libxml2/libxml/globals.h:177
  Original Name: xmlInitializeGlobalState/usr/include/libxml2/libxml/globals.h:177

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=7744,fid: f64]
*/
use @xmlInitializeGlobalState[None](gs: NullablePointer[XmlGlobalState] tag)

/*
  Source: /usr/include/libxml2/libxml/entities.h:79
  Original Name: xmlInitializePredefinedEntities/usr/include/libxml2/libxml/entities.h:79

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlInitializePredefinedEntities[None]()

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:211
  Original Name: xmlIsBaseChar/usr/include/libxml2/libxml/chvalid.h:211

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsBaseChar[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:213
  Original Name: xmlIsBlank/usr/include/libxml2/libxml/chvalid.h:213

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsBlank[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:938
  Original Name: xmlIsBlankNode/usr/include/libxml2/libxml/tree.h:938

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlIsBlankNode[I32](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:215
  Original Name: xmlIsChar/usr/include/libxml2/libxml/chvalid.h:215

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsChar[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:217
  Original Name: xmlIsCombining/usr/include/libxml2/libxml/chvalid.h:217

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsCombining[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:219
  Original Name: xmlIsDigit/usr/include/libxml2/libxml/chvalid.h:219

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsDigit[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:221
  Original Name: xmlIsExtender/usr/include/libxml2/libxml/chvalid.h:221

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsExtender[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:278
  Original Name: xmlIsID/usr/include/libxml2/libxml/valid.h:278

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlIsID[I32](doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:223
  Original Name: xmlIsIdeographic/usr/include/libxml2/libxml/chvalid.h:223

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsIdeographic[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:319
  Original Name: xmlIsLetter/usr/include/libxml2/libxml/parserInternals.h:319

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlIsLetter[I32](c: I32)

/*
  Source: /usr/include/libxml2/libxml/threads.h:69
  Original Name: xmlIsMainThread/usr/include/libxml2/libxml/threads.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlIsMainThread[I32]()

/*
  Source: /usr/include/libxml2/libxml/valid.h:387
  Original Name: xmlIsMixedElement/usr/include/libxml2/libxml/valid.h:387

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlIsMixedElement[I32](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/chvalid.h:225
  Original Name: xmlIsPubidChar/usr/include/libxml2/libxml/chvalid.h:225

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
use @xmlIsPubidChar[I32](ch: U32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:294
  Original Name: xmlIsRef/usr/include/libxml2/libxml/valid.h:294

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlIsRef[I32](doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1250
  Original Name: xmlIsXHTML/usr/include/libxml2/libxml/tree.h:1250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlIsXHTML[I32](systemID: Pointer[U8] tag, publicID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:854
  Original Name: xmlKeepBlanksDefault/usr/include/libxml2/libxml/parser.h:854

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlKeepBlanksDefault[I32](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1311
  Original Name: xmlLastElementChild/usr/include/libxml2/libxml/tree.h:1311

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlLastElementChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:860
  Original Name: xmlLineNumbersDefault/usr/include/libxml2/libxml/parser.h:860

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlLineNumbersDefault[I32](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/list.h:128
  Original Name: xmlLinkGetData/usr/include/libxml2/libxml/list.h:128

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlLinkGetData[Pointer[None]](lk: NullablePointer[XmlLink] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:72
  Original Name: xmlListAppend/usr/include/libxml2/libxml/list.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListAppend[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:84
  Original Name: xmlListClear/usr/include/libxml2/libxml/list.h:84

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListClear[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:124
  Original Name: xmlListCopy/usr/include/libxml2/libxml/list.h:124

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListCopy[I32](cur: NullablePointer[XmlList] tag, old: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:56
  Original Name: xmlListCreate/usr/include/libxml2/libxml/list.h:56

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlListCreate[NullablePointer[XmlList]](deallocator: Pointer[None] tag, compare: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:59
  Original Name: xmlListDelete/usr/include/libxml2/libxml/list.h:59

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListDelete[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:122
  Original Name: xmlListDup/usr/include/libxml2/libxml/list.h:122

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListDup[NullablePointer[XmlList]](old: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:86
  Original Name: xmlListEmpty/usr/include/libxml2/libxml/list.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListEmpty[I32](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:90
  Original Name: xmlListEnd/usr/include/libxml2/libxml/list.h:90

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListEnd[NullablePointer[XmlLink]](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:88
  Original Name: xmlListFront/usr/include/libxml2/libxml/list.h:88

  Return Value: [PointerType size=64]->[Struct size=,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListFront[NullablePointer[XmlLink]](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:69
  Original Name: xmlListInsert/usr/include/libxml2/libxml/list.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListInsert[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:119
  Original Name: xmlListMerge/usr/include/libxml2/libxml/list.h:119

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListMerge[None](l1: NullablePointer[XmlList] tag, l2: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:97
  Original Name: xmlListPopBack/usr/include/libxml2/libxml/list.h:97

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListPopBack[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:95
  Original Name: xmlListPopFront/usr/include/libxml2/libxml/list.h:95

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListPopFront[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:102
  Original Name: xmlListPushBack/usr/include/libxml2/libxml/list.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListPushBack[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:99
  Original Name: xmlListPushFront/usr/include/libxml2/libxml/list.h:99

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListPushFront[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:81
  Original Name: xmlListRemoveAll/usr/include/libxml2/libxml/list.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListRemoveAll[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:75
  Original Name: xmlListRemoveFirst/usr/include/libxml2/libxml/list.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListRemoveFirst[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:78
  Original Name: xmlListRemoveLast/usr/include/libxml2/libxml/list.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListRemoveLast[I32](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:107
  Original Name: xmlListReverse/usr/include/libxml2/libxml/list.h:107

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListReverse[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:66
  Original Name: xmlListReverseSearch/usr/include/libxml2/libxml/list.h:66

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListReverseSearch[Pointer[None]](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:115
  Original Name: xmlListReverseWalk/usr/include/libxml2/libxml/list.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListReverseWalk[None](l: NullablePointer[XmlList] tag, walker: Pointer[None] tag, user: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:63
  Original Name: xmlListSearch/usr/include/libxml2/libxml/list.h:63

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListSearch[Pointer[None]](l: NullablePointer[XmlList] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:92
  Original Name: xmlListSize/usr/include/libxml2/libxml/list.h:92

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListSize[I32](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:109
  Original Name: xmlListSort/usr/include/libxml2/libxml/list.h:109

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
*/
use @xmlListSort[None](l: NullablePointer[XmlList] tag)

/*
  Source: /usr/include/libxml2/libxml/list.h:111
  Original Name: xmlListWalk/usr/include/libxml2/libxml/list.h:111

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f26]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlListWalk[None](l: NullablePointer[XmlList] tag, walker: Pointer[None] tag, user: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:72
  Original Name: xmlLoadACatalog/usr/include/libxml2/libxml/catalog.h:72

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlLoadACatalog[NullablePointer[XmlCatalog]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:114
  Original Name: xmlLoadCatalog/usr/include/libxml2/libxml/catalog.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlLoadCatalog[I32](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:116
  Original Name: xmlLoadCatalogs/usr/include/libxml2/libxml/catalog.h:116

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlLoadCatalogs[None](paths: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1072
  Original Name: xmlLoadExternalEntity/usr/include/libxml2/libxml/parser.h:1072

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlLoadExternalEntity[NullablePointer[XmlParserInput]](uRL: Pointer[U8] tag, iD: Pointer[U8] tag, ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:74
  Original Name: xmlLoadSGMLSuperCatalog/usr/include/libxml2/libxml/catalog.h:74

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlLoadSGMLSuperCatalog[NullablePointer[XmlCatalog]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:63
  Original Name: xmlLockLibrary/usr/include/libxml2/libxml/threads.h:63

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlLockLibrary[None]()

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:83
  Original Name: xmlLsCountNode/usr/include/libxml2/libxml/debugXML.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlLsCountNode[I32](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:81
  Original Name: xmlLsOneNode/usr/include/libxml2/libxml/debugXML.h:81

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlLsOneNode[None](output: NullablePointer[IOFILE] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:165
  Original Name: xmlMallocAtomicLoc/usr/include/libxml2/libxml/xmlmemory.h:165

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlMallocAtomicLoc[Pointer[None]](size: U64, file: Pointer[U8] tag, line: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:161
  Original Name: xmlMallocLoc/usr/include/libxml2/libxml/xmlmemory.h:161

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlMallocLoc[Pointer[None]](size: U64, file: Pointer[U8] tag, line: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:143
  Original Name: xmlMemBlocks/usr/include/libxml2/libxml/xmlmemory.h:143

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlMemBlocks[I32]()

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:145
  Original Name: xmlMemDisplay/usr/include/libxml2/libxml/xmlmemory.h:145

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
*/
use @xmlMemDisplay[None](fp: NullablePointer[IOFILE] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:147
  Original Name: xmlMemDisplayLast/usr/include/libxml2/libxml/xmlmemory.h:147

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [FundamentalType(long int) size=64]
*/
use @xmlMemDisplayLast[None](fp: NullablePointer[IOFILE] tag, nbBytes: I64)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:157
  Original Name: xmlMemFree/usr/include/libxml2/libxml/xmlmemory.h:157

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlMemFree[None](ptr: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:109
  Original Name: xmlMemGet/usr/include/libxml2/libxml/xmlmemory.h:109

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlMemGet[I32](freeFunc: Pointer[XmlFreeFunc] tag, mallocFunc: Pointer[None] tag, reallocFunc: Pointer[None] tag, strdupFunc: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:153
  Original Name: xmlMemMalloc/usr/include/libxml2/libxml/xmlmemory.h:153

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlMemMalloc[Pointer[None]](size: U64)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:155
  Original Name: xmlMemRealloc/usr/include/libxml2/libxml/xmlmemory.h:155

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
use @xmlMemRealloc[Pointer[None]](ptr: Pointer[None] tag, size: U64)

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
use @xmlMemSetup[I32](freeFunc: Pointer[None] tag, mallocFunc: Pointer[None] tag, reallocFunc: Pointer[None] tag, strdupFunc: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:149
  Original Name: xmlMemShow/usr/include/libxml2/libxml/xmlmemory.h:149

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [FundamentalType(int) size=32]
*/
use @xmlMemShow[None](fp: NullablePointer[IOFILE] tag, nr: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:167
  Original Name: xmlMemStrdupLoc/usr/include/libxml2/libxml/xmlmemory.h:167

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlMemStrdupLoc[Pointer[U8]](str: Pointer[U8] tag, file: Pointer[U8] tag, line: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:141
  Original Name: xmlMemUsed/usr/include/libxml2/libxml/xmlmemory.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlMemUsed[I32]()

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:151
  Original Name: xmlMemoryDump/usr/include/libxml2/libxml/xmlmemory.h:151

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlMemoryDump[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlmemory.h:159
  Original Name: xmlMemoryStrdup/usr/include/libxml2/libxml/xmlmemory.h:159

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlMemoryStrdup[Pointer[U8]](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:47
  Original Name: xmlModuleClose/usr/include/libxml2/libxml/xmlmodule.h:47

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
*/
use @xmlModuleClose[I32](module: NullablePointer[XmlModule] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:49
  Original Name: xmlModuleFree/usr/include/libxml2/libxml/xmlmodule.h:49

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
*/
use @xmlModuleFree[I32](module: NullablePointer[XmlModule] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:40
  Original Name: xmlModuleOpen/usr/include/libxml2/libxml/xmlmodule.h:40

  Return Value: [PointerType size=64]->[Struct size=,fid: f81]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlModuleOpen[NullablePointer[XmlModule]](filename: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlmodule.h:43
  Original Name: xmlModuleSymbol/usr/include/libxml2/libxml/xmlmodule.h:43

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f81]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlModuleSymbol[I32](module: NullablePointer[XmlModule] tag, name: Pointer[U8] tag, result: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:42
  Original Name: xmlMutexLock/usr/include/libxml2/libxml/threads.h:42

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlMutexLock[None](tok: NullablePointer[XmlMutex] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:44
  Original Name: xmlMutexUnlock/usr/include/libxml2/libxml/threads.h:44

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlMutexUnlock[None](tok: NullablePointer[XmlMutex] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:611
  Original Name: xmlNamespaceParseNCName/usr/include/libxml2/libxml/parserInternals.h:611

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlNamespaceParseNCName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:607
  Original Name: xmlNamespaceParseNSDef/usr/include/libxml2/libxml/parserInternals.h:607

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlNamespaceParseNSDef[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:614
  Original Name: xmlNamespaceParseQName/usr/include/libxml2/libxml/parserInternals.h:614

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNamespaceParseQName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, prefix: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:125
  Original Name: xmlNanoFTPCheckResponse/usr/include/libxml2/libxml/nanoftp.h:125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPCheckResponse[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:84
  Original Name: xmlNanoFTPCleanup/usr/include/libxml2/libxml/nanoftp.h:84

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlNanoFTPCleanup[None]()

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:104
  Original Name: xmlNanoFTPClose/usr/include/libxml2/libxml/nanoftp.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPClose[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:140
  Original Name: xmlNanoFTPCloseConnection/usr/include/libxml2/libxml/nanoftp.h:140

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPCloseConnection[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:102
  Original Name: xmlNanoFTPConnect/usr/include/libxml2/libxml/nanoftp.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPConnect[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:94
  Original Name: xmlNanoFTPConnectTo/usr/include/libxml2/libxml/nanoftp.h:94

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNanoFTPConnectTo[Pointer[None]](server: Pointer[U8] tag, port: I32)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:131
  Original Name: xmlNanoFTPCwd/usr/include/libxml2/libxml/nanoftp.h:131

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPCwd[I32](ctx: Pointer[None] tag, directory: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:134
  Original Name: xmlNanoFTPDele/usr/include/libxml2/libxml/nanoftp.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPDele[I32](ctx: Pointer[None] tag, file: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:92
  Original Name: xmlNanoFTPFreeCtxt/usr/include/libxml2/libxml/nanoftp.h:92

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPFreeCtxt[None](ctx: Pointer[None] tag)

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
use @xmlNanoFTPGet[I32](ctx: Pointer[None] tag, callback: Pointer[None] tag, userData: Pointer[None] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:138
  Original Name: xmlNanoFTPGetConnection/usr/include/libxml2/libxml/nanoftp.h:138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPGetConnection[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:123
  Original Name: xmlNanoFTPGetResponse/usr/include/libxml2/libxml/nanoftp.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPGetResponse[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:147
  Original Name: xmlNanoFTPGetSocket/usr/include/libxml2/libxml/nanoftp.h:147

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPGetSocket[I32](ctx: Pointer[None] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:82
  Original Name: xmlNanoFTPInit/usr/include/libxml2/libxml/nanoftp.h:82

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlNanoFTPInit[None]()

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
use @xmlNanoFTPList[I32](ctx: Pointer[None] tag, callback: Pointer[None] tag, userData: Pointer[None] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:90
  Original Name: xmlNanoFTPNewCtxt/usr/include/libxml2/libxml/nanoftp.h:90

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPNewCtxt[Pointer[None]](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:100
  Original Name: xmlNanoFTPOpen/usr/include/libxml2/libxml/nanoftp.h:100

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPOpen[Pointer[None]](uRL: Pointer[U8] tag)

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
use @xmlNanoFTPProxy[None](host: Pointer[U8] tag, port: I32, user: Pointer[U8] tag, passwd: Pointer[U8] tag, xmltype: I32)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:106
  Original Name: xmlNanoFTPQuit/usr/include/libxml2/libxml/nanoftp.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoFTPQuit[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:155
  Original Name: xmlNanoFTPRead/usr/include/libxml2/libxml/nanoftp.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
*/
use @xmlNanoFTPRead[I32](ctx: Pointer[None] tag, dest: Pointer[None] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:108
  Original Name: xmlNanoFTPScanProxy/usr/include/libxml2/libxml/nanoftp.h:108

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPScanProxy[None](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanoftp.h:116
  Original Name: xmlNanoFTPUpdateURL/usr/include/libxml2/libxml/nanoftp.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoFTPUpdateURL[I32](ctx: Pointer[None] tag, uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:56
  Original Name: xmlNanoHTTPAuthHeader/usr/include/libxml2/libxml/nanohttp.h:56

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPAuthHeader[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:24
  Original Name: xmlNanoHTTPCleanup/usr/include/libxml2/libxml/nanohttp.h:24

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlNanoHTTPCleanup[None]()

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:75
  Original Name: xmlNanoHTTPClose/usr/include/libxml2/libxml/nanohttp.h:75

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPClose[None](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:60
  Original Name: xmlNanoHTTPContentLength/usr/include/libxml2/libxml/nanohttp.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPContentLength[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:62
  Original Name: xmlNanoHTTPEncoding/usr/include/libxml2/libxml/nanohttp.h:62

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPEncoding[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:28
  Original Name: xmlNanoHTTPFetch/usr/include/libxml2/libxml/nanohttp.h:28

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoHTTPFetch[I32](uRL: Pointer[U8] tag, filename: Pointer[U8] tag, contentType: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:22
  Original Name: xmlNanoHTTPInit/usr/include/libxml2/libxml/nanohttp.h:22

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlNanoHTTPInit[None]()

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:32
  Original Name: xmlNanoHTTPMethod/usr/include/libxml2/libxml/nanohttp.h:32

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNanoHTTPMethod[Pointer[None]](uRL: Pointer[U8] tag, method: Pointer[U8] tag, input: Pointer[U8] tag, contentType: Pointer[Pointer[U8]] tag, headers: Pointer[U8] tag, ilen: I32)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:39
  Original Name: xmlNanoHTTPMethodRedir/usr/include/libxml2/libxml/nanohttp.h:39

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNanoHTTPMethodRedir[Pointer[None]](uRL: Pointer[U8] tag, method: Pointer[U8] tag, input: Pointer[U8] tag, contentType: Pointer[Pointer[U8]] tag, redir: Pointer[Pointer[U8]] tag, headers: Pointer[U8] tag, ilen: I32)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:64
  Original Name: xmlNanoHTTPMimeType/usr/include/libxml2/libxml/nanohttp.h:64

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPMimeType[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:47
  Original Name: xmlNanoHTTPOpen/usr/include/libxml2/libxml/nanohttp.h:47

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoHTTPOpen[Pointer[None]](uRL: Pointer[U8] tag, contentType: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:50
  Original Name: xmlNanoHTTPOpenRedir/usr/include/libxml2/libxml/nanohttp.h:50

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoHTTPOpenRedir[Pointer[None]](uRL: Pointer[U8] tag, contentType: Pointer[Pointer[U8]] tag, redir: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:66
  Original Name: xmlNanoHTTPRead/usr/include/libxml2/libxml/nanohttp.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
*/
use @xmlNanoHTTPRead[I32](ctx: Pointer[None] tag, dest: Pointer[None] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:58
  Original Name: xmlNanoHTTPRedir/usr/include/libxml2/libxml/nanohttp.h:58

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPRedir[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:54
  Original Name: xmlNanoHTTPReturnCode/usr/include/libxml2/libxml/nanohttp.h:54

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlNanoHTTPReturnCode[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:71
  Original Name: xmlNanoHTTPSave/usr/include/libxml2/libxml/nanohttp.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoHTTPSave[I32](ctxt: Pointer[None] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/nanohttp.h:26
  Original Name: xmlNanoHTTPScanProxy/usr/include/libxml2/libxml/nanohttp.h:26

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNanoHTTPScanProxy[None](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlautomata.h:44
  Original Name: xmlNewAutomata/usr/include/libxml2/libxml/xmlautomata.h:44

  Return Value: [PointerType size=64]->[Struct size=,fid: f27]

  Arguments:
*/
use @xmlNewAutomata[NullablePointer[XmlAutomata]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:886
  Original Name: xmlNewCDataBlock/usr/include/libxml2/libxml/tree.h:886

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNewCDataBlock[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:70
  Original Name: xmlNewCatalog/usr/include/libxml2/libxml/catalog.h:70

  Return Value: [PointerType size=64]->[Struct size=,fid: f67]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlNewCatalog[NullablePointer[XmlCatalog]](sgml: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:182
  Original Name: xmlNewCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:182

  Return Value: [PointerType size=64]->[Struct size=448,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlNewCharEncodingHandler[NullablePointer[XmlCharEncodingHandler]](name: Pointer[U8] tag, input: Pointer[None] tag, output: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:890
  Original Name: xmlNewCharRef/usr/include/libxml2/libxml/tree.h:890

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewCharRef[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

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
use @xmlNewChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:884
  Original Name: xmlNewComment/usr/include/libxml2/libxml/tree.h:884

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewComment[NullablePointer[XmlNode]](content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:792
  Original Name: xmlNewDoc/usr/include/libxml2/libxml/tree.h:792

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewDoc[NullablePointer[XmlDoc]](version: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:881
  Original Name: xmlNewDocComment/usr/include/libxml2/libxml/tree.h:881

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewDocComment[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:185
  Original Name: xmlNewDocElementContent/usr/include/libxml2/libxml/valid.h:185

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
*/
use @xmlNewDocElementContent[NullablePointer[XmlElementContent]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, xmltype: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:919
  Original Name: xmlNewDocFragment/usr/include/libxml2/libxml/tree.h:919

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlNewDocFragment[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag)

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
use @xmlNewDocNode[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlNewDocNodeEatName[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:867
  Original Name: xmlNewDocPI/usr/include/libxml2/libxml/tree.h:867

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewDocPI[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:796
  Original Name: xmlNewDocProp/usr/include/libxml2/libxml/tree.h:796

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewDocProp[NullablePointer[XmlAttr]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

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
use @xmlNewDocRawNode[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:862
  Original Name: xmlNewDocText/usr/include/libxml2/libxml/tree.h:862

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewDocText[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:874
  Original Name: xmlNewDocTextLen/usr/include/libxml2/libxml/tree.h:874

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNewDocTextLen[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, content: Pointer[U8] tag, len: I32)

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
use @xmlNewDtd[NullablePointer[XmlDtd]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:177
  Original Name: xmlNewElementContent/usr/include/libxml2/libxml/valid.h:177

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f16]
*/
use @xmlNewElementContent[NullablePointer[XmlElementContent]](name: Pointer[U8] tag, xmltype: I32)

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
use @xmlNewEntity[NullablePointer[XmlEntity]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag, xmltype: I32, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:364
  Original Name: xmlNewEntityInputStream/usr/include/libxml2/libxml/parserInternals.h:364

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=1088,fid: f18]
*/
use @xmlNewEntityInputStream[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag, entity: NullablePointer[XmlEntity] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:779
  Original Name: xmlNewGlobalNs/usr/include/libxml2/libxml/tree.h:779

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewGlobalNs[NullablePointer[XmlNs]](doc: NullablePointer[XmlDoc] tag, href: Pointer[U8] tag, prefix: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1042
  Original Name: xmlNewIOInputStream/usr/include/libxml2/libxml/parser.h:1042

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=512,fid: f15]
    [Enumeration size=32,fid: f42]
*/
use @xmlNewIOInputStream[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:374
  Original Name: xmlNewInputFromFile/usr/include/libxml2/libxml/parserInternals.h:374

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNewInputFromFile[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:377
  Original Name: xmlNewInputStream/usr/include/libxml2/libxml/parserInternals.h:377

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlNewInputStream[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:40
  Original Name: xmlNewMutex/usr/include/libxml2/libxml/threads.h:40

  Return Value: [PointerType size=64]->[Struct size=,fid: f23]

  Arguments:
*/
use @xmlNewMutex[NullablePointer[XmlMutex]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:849
  Original Name: xmlNewNode/usr/include/libxml2/libxml/tree.h:849

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewNode[NullablePointer[XmlNode]](ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:852
  Original Name: xmlNewNodeEatName/usr/include/libxml2/libxml/tree.h:852

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewNodeEatName[NullablePointer[XmlNode]](ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:784
  Original Name: xmlNewNs/usr/include/libxml2/libxml/tree.h:784

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewNs[NullablePointer[XmlNs]](node: NullablePointer[XmlNode] tag, href: Pointer[U8] tag, prefix: Pointer[U8] tag)

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
use @xmlNewNsProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

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
use @xmlNewNsPropEatName[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:871
  Original Name: xmlNewPI/usr/include/libxml2/libxml/tree.h:871

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewPI[NullablePointer[XmlNode]](name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:979
  Original Name: xmlNewParserCtxt/usr/include/libxml2/libxml/parser.h:979

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
*/
use @xmlNewParserCtxt[NullablePointer[XmlParserCtxt]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:802
  Original Name: xmlNewProp/usr/include/libxml2/libxml/tree.h:802

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:49
  Original Name: xmlNewRMutex/usr/include/libxml2/libxml/threads.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f23]

  Arguments:
*/
use @xmlNewRMutex[NullablePointer[XmlRMutex]]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:893
  Original Name: xmlNewReference/usr/include/libxml2/libxml/tree.h:893

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewReference[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:361
  Original Name: xmlNewStringInputStream/usr/include/libxml2/libxml/parserInternals.h:361

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewStringInputStream[NullablePointer[XmlParserInput]](ctxt: NullablePointer[XmlParserCtxt] tag, buffer: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:865
  Original Name: xmlNewText/usr/include/libxml2/libxml/tree.h:865

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNewText[NullablePointer[XmlNode]](content: Pointer[U8] tag)

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
use @xmlNewTextChild[NullablePointer[XmlNode]](parent: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:878
  Original Name: xmlNewTextLen/usr/include/libxml2/libxml/tree.h:878

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextLen[NullablePointer[XmlNode]](content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:112
  Original Name: xmlNewTextReader/usr/include/libxml2/libxml/xmlreader.h:112

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNewTextReader[NullablePointer[XmlTextReader]](input: NullablePointer[XmlParserInputBuffer] tag, uRI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:115
  Original Name: xmlNewTextReaderFilename/usr/include/libxml2/libxml/xmlreader.h:115

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNewTextReaderFilename[NullablePointer[XmlTextReader]](uRI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:33
  Original Name: xmlNewTextWriter/usr/include/libxml2/libxml/xmlwriter.h:33

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlNewTextWriter[NullablePointer[XmlTextWriter]](out: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:41
  Original Name: xmlNewTextWriterDoc/usr/include/libxml2/libxml/xmlwriter.h:41

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextWriterDoc[NullablePointer[XmlTextWriter]](doc: Pointer[NullablePointer[XmlDoc]] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:35
  Original Name: xmlNewTextWriterFilename/usr/include/libxml2/libxml/xmlwriter.h:35

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextWriterFilename[NullablePointer[XmlTextWriter]](uri: Pointer[U8] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:37
  Original Name: xmlNewTextWriterMemory/usr/include/libxml2/libxml/xmlwriter.h:37

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextWriterMemory[NullablePointer[XmlTextWriter]](buf: NullablePointer[XmlBuffer] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:39
  Original Name: xmlNewTextWriterPushParser/usr/include/libxml2/libxml/xmlwriter.h:39

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextWriterPushParser[NullablePointer[XmlTextWriter]](ctxt: NullablePointer[XmlParserCtxt] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:43
  Original Name: xmlNewTextWriterTree/usr/include/libxml2/libxml/xmlwriter.h:43

  Return Value: [PointerType size=64]->[Struct size=,fid: f87]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNewTextWriterTree[NullablePointer[XmlTextWriter]](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:310
  Original Name: xmlNewValidCtxt/usr/include/libxml2/libxml/valid.h:310

  Return Value: [PointerType size=64]->[Struct size=896,fid: f28]

  Arguments:
*/
use @xmlNewValidCtxt[NullablePointer[XmlValidCtxt]]()

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:570
  Original Name: xmlNextChar/usr/include/libxml2/libxml/parserInternals.h:570

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlNextChar[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1307
  Original Name: xmlNextElementSibling/usr/include/libxml2/libxml/tree.h:1307

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNextElementSibling[NullablePointer[XmlNode]](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:300
  Original Name: xmlNoNetExternalEntityLoader/usr/include/libxml2/libxml/xmlIO.h:300

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlNoNetExternalEntityLoader[NullablePointer[XmlParserInput]](uRL: Pointer[U8] tag, iD: Pointer[U8] tag, ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1081
  Original Name: xmlNodeAddContent/usr/include/libxml2/libxml/tree.h:1081

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNodeAddContent[None](cur: NullablePointer[XmlNode] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1084
  Original Name: xmlNodeAddContentLen/usr/include/libxml2/libxml/tree.h:1084

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNodeAddContentLen[None](cur: NullablePointer[XmlNode] tag, content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1091
  Original Name: xmlNodeBufGetContent/usr/include/libxml2/libxml/tree.h:1091

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeBufGetContent[I32](buffer: NullablePointer[XmlBuffer] tag, cur: NullablePointer[XmlNode] tag)

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
use @xmlNodeDump[I32](buf: NullablePointer[XmlBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32)

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
use @xmlNodeDumpOutput[None](buf: NullablePointer[XmlOutputBuffer] tag, doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag, level: I32, format: I32, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1110
  Original Name: xmlNodeGetBase/usr/include/libxml2/libxml/tree.h:1110

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeGetBase[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1088
  Original Name: xmlNodeGetContent/usr/include/libxml2/libxml/tree.h:1088

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeGetContent[Pointer[U8]](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1098
  Original Name: xmlNodeGetLang/usr/include/libxml2/libxml/tree.h:1098

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeGetLang[Pointer[U8]](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1100
  Original Name: xmlNodeGetSpacePreserve/usr/include/libxml2/libxml/tree.h:1100

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeGetSpacePreserve[I32](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:936
  Original Name: xmlNodeIsText/usr/include/libxml2/libxml/tree.h:936

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlNodeIsText[I32](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1067
  Original Name: xmlNodeListGetRawString/usr/include/libxml2/libxml/tree.h:1067

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNodeListGetRawString[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, list: NullablePointer[XmlNode] tag, inLine: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1062
  Original Name: xmlNodeListGetString/usr/include/libxml2/libxml/tree.h:1062

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNodeListGetString[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, list: NullablePointer[XmlNode] tag, inLine: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1114
  Original Name: xmlNodeSetBase/usr/include/libxml2/libxml/tree.h:1114

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNodeSetBase[None](cur: NullablePointer[XmlNode] tag, uri: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1072
  Original Name: xmlNodeSetContent/usr/include/libxml2/libxml/tree.h:1072

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNodeSetContent[None](cur: NullablePointer[XmlNode] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1076
  Original Name: xmlNodeSetContentLen/usr/include/libxml2/libxml/tree.h:1076

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlNodeSetContentLen[None](cur: NullablePointer[XmlNode] tag, content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1103
  Original Name: xmlNodeSetLang/usr/include/libxml2/libxml/tree.h:1103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNodeSetLang[None](cur: NullablePointer[XmlNode] tag, lang: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:950
  Original Name: xmlNodeSetName/usr/include/libxml2/libxml/tree.h:950

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNodeSetName[None](cur: NullablePointer[XmlNode] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1106
  Original Name: xmlNodeSetSpacePreserve/usr/include/libxml2/libxml/tree.h:1106

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlNodeSetSpacePreserve[None](cur: NullablePointer[XmlNode] tag, xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/uri.h:81
  Original Name: xmlNormalizeURIPath/usr/include/libxml2/libxml/uri.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlNormalizeURIPath[I32](path: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:309
  Original Name: xmlNormalizeWindowsPath/usr/include/libxml2/libxml/xmlIO.h:309

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlNormalizeWindowsPath[Pointer[U8]](path: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:271
  Original Name: xmlOutputBufferClose/usr/include/libxml2/libxml/xmlIO.h:271

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlOutputBufferClose[I32](out: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:237
  Original Name: xmlOutputBufferCreateBuffer/usr/include/libxml2/libxml/xmlIO.h:237

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlOutputBufferCreateBuffer[NullablePointer[XmlOutputBuffer]](buffer: NullablePointer[XmlBuffer] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:241
  Original Name: xmlOutputBufferCreateFd/usr/include/libxml2/libxml/xmlIO.h:241

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlOutputBufferCreateFd[NullablePointer[XmlOutputBuffer]](fd: I32, encoder: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:233
  Original Name: xmlOutputBufferCreateFile/usr/include/libxml2/libxml/xmlIO.h:233

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlOutputBufferCreateFile[NullablePointer[XmlOutputBuffer]](file: NullablePointer[IOFILE] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:228
  Original Name: xmlOutputBufferCreateFilename/usr/include/libxml2/libxml/xmlIO.h:228

  Return Value: [PointerType size=64]->[Struct size=448,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=448,fid: f42]
    [FundamentalType(int) size=32]
*/
use @xmlOutputBufferCreateFilename[NullablePointer[XmlOutputBuffer]](uRI: Pointer[U8] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag, compression: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:63
  Original Name: xmlOutputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:63

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlOutputBufferCreateFilenameDefault[Pointer[None]](func: Pointer[None] tag)

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
use @xmlOutputBufferCreateIO[NullablePointer[XmlOutputBuffer]](iowrite: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, encoder: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:269
  Original Name: xmlOutputBufferFlush/usr/include/libxml2/libxml/xmlIO.h:269

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlOutputBufferFlush[I32](out: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:252
  Original Name: xmlOutputBufferGetContent/usr/include/libxml2/libxml/xmlIO.h:252

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlOutputBufferGetContent[Pointer[U8]](out: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:254
  Original Name: xmlOutputBufferGetSize/usr/include/libxml2/libxml/xmlIO.h:254

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
*/
use @xmlOutputBufferGetSize[U64](out: NullablePointer[XmlOutputBuffer] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:257
  Original Name: xmlOutputBufferWrite/usr/include/libxml2/libxml/xmlIO.h:257

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlOutputBufferWrite[I32](out: NullablePointer[XmlOutputBuffer] tag, len: I32, buf: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:264
  Original Name: xmlOutputBufferWriteEscape/usr/include/libxml2/libxml/xmlIO.h:264

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlOutputBufferWriteEscape[I32](out: NullablePointer[XmlOutputBuffer] tag, str: Pointer[U8] tag, escaping: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:261
  Original Name: xmlOutputBufferWriteString/usr/include/libxml2/libxml/xmlIO.h:261

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlOutputBufferWriteString[I32](out: NullablePointer[XmlOutputBuffer] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:398
  Original Name: xmlParseAttValue/usr/include/libxml2/libxml/parserInternals.h:398

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseAttValue[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:463
  Original Name: xmlParseAttribute/usr/include/libxml2/libxml/parserInternals.h:463

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseAttribute[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, value: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:434
  Original Name: xmlParseAttributeListDecl/usr/include/libxml2/libxml/parserInternals.h:434

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseAttributeListDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:431
  Original Name: xmlParseAttributeType/usr/include/libxml2/libxml/parserInternals.h:431

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[Struct size=128,fid: f16]
*/
use @xmlParseAttributeType[I32](ctxt: NullablePointer[XmlParserCtxt] tag, tree: Pointer[NullablePointer[XmlEnumeration]] tag)

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
use @xmlParseBalancedChunkMemory[I32](doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, string: Pointer[U8] tag, lst: Pointer[NullablePointer[XmlNode]] tag)

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
use @xmlParseBalancedChunkMemoryRecover[I32](doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, string: Pointer[U8] tag, lst: Pointer[NullablePointer[XmlNode]] tag, xmlrecover: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:471
  Original Name: xmlParseCDSect/usr/include/libxml2/libxml/parserInternals.h:471

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseCDSect[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/catalog.h:139
  Original Name: xmlParseCatalogFile/usr/include/libxml2/libxml/catalog.h:139

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseCatalogFile[NullablePointer[XmlDoc]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:404
  Original Name: xmlParseCharData/usr/include/libxml2/libxml/parserInternals.h:404

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlParseCharData[None](ctxt: NullablePointer[XmlParserCtxt] tag, cdata: I32)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:199
  Original Name: xmlParseCharEncoding/usr/include/libxml2/libxml/encoding.h:199

  Return Value: [Enumeration size=32,fid: f42]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseCharEncoding[I32](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:452
  Original Name: xmlParseCharRef/usr/include/libxml2/libxml/parserInternals.h:452

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseCharRef[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @xmlParseChunk[I32](ctxt: NullablePointer[XmlParserCtxt] tag, chunk: Pointer[U8] tag, size: I32, terminate: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:411
  Original Name: xmlParseComment/usr/include/libxml2/libxml/parserInternals.h:411

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseComment[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:473
  Original Name: xmlParseContent/usr/include/libxml2/libxml/parserInternals.h:473

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseContent[None](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @xmlParseCtxtExternalEntity[I32](ctx: NullablePointer[XmlParserCtxt] tag, uRL: Pointer[U8] tag, iD: Pointer[U8] tag, lst: Pointer[NullablePointer[XmlNode]] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:929
  Original Name: xmlParseDTD/usr/include/libxml2/libxml/parser.h:929

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseDTD[NullablePointer[XmlDtd]](externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:421
  Original Name: xmlParseDefaultDecl/usr/include/libxml2/libxml/parserInternals.h:421

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseDefaultDecl[I32](ctxt: NullablePointer[XmlParserCtxt] tag, value: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:844
  Original Name: xmlParseDoc/usr/include/libxml2/libxml/parser.h:844

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:460
  Original Name: xmlParseDocTypeDecl/usr/include/libxml2/libxml/parserInternals.h:460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseDocTypeDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:879
  Original Name: xmlParseDocument/usr/include/libxml2/libxml/parser.h:879

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseDocument[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:475
  Original Name: xmlParseElement/usr/include/libxml2/libxml/parserInternals.h:475

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseElement[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:440
  Original Name: xmlParseElementChildrenContentDecl/usr/include/libxml2/libxml/parserInternals.h:440

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlParseElementChildrenContentDecl[NullablePointer[XmlElementContent]](ctxt: NullablePointer[XmlParserCtxt] tag, inputchk: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:444
  Original Name: xmlParseElementContentDecl/usr/include/libxml2/libxml/parserInternals.h:444

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlParseElementContentDecl[I32](ctxt: NullablePointer[XmlParserCtxt] tag, name: Pointer[U8] tag, result: Pointer[NullablePointer[XmlElementContent]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:448
  Original Name: xmlParseElementDecl/usr/include/libxml2/libxml/parserInternals.h:448

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseElementDecl[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:436
  Original Name: xmlParseElementMixedContentDecl/usr/include/libxml2/libxml/parserInternals.h:436

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlParseElementMixedContentDecl[NullablePointer[XmlElementContent]](ctxt: NullablePointer[XmlParserCtxt] tag, inputchk: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:481
  Original Name: xmlParseEncName/usr/include/libxml2/libxml/parserInternals.h:481

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEncName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:483
  Original Name: xmlParseEncodingDecl/usr/include/libxml2/libxml/parserInternals.h:483

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEncodingDecl[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:468
  Original Name: xmlParseEndTag/usr/include/libxml2/libxml/parserInternals.h:468

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEndTag[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:920
  Original Name: xmlParseEntity/usr/include/libxml2/libxml/parser.h:920

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseEntity[NullablePointer[XmlDoc]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:419
  Original Name: xmlParseEntityDecl/usr/include/libxml2/libxml/parserInternals.h:419

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEntityDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:454
  Original Name: xmlParseEntityRef/usr/include/libxml2/libxml/parserInternals.h:454

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEntityRef[NullablePointer[XmlEntity]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:395
  Original Name: xmlParseEntityValue/usr/include/libxml2/libxml/parserInternals.h:395

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseEntityValue[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, orig: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:428
  Original Name: xmlParseEnumeratedType/usr/include/libxml2/libxml/parserInternals.h:428

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[Struct size=128,fid: f16]
*/
use @xmlParseEnumeratedType[I32](ctxt: NullablePointer[XmlParserCtxt] tag, tree: Pointer[NullablePointer[XmlEnumeration]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:426
  Original Name: xmlParseEnumerationType/usr/include/libxml2/libxml/parserInternals.h:426

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseEnumerationType[NullablePointer[XmlEnumeration]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:881
  Original Name: xmlParseExtParsedEnt/usr/include/libxml2/libxml/parser.h:881

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseExtParsedEnt[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @xmlParseExternalEntity[I32](doc: NullablePointer[XmlDoc] tag, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, depth: I32, uRL: Pointer[U8] tag, iD: Pointer[U8] tag, lst: Pointer[NullablePointer[XmlNode]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:407
  Original Name: xmlParseExternalID/usr/include/libxml2/libxml/parserInternals.h:407

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlParseExternalID[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, publicID: Pointer[Pointer[U8]] tag, strict: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:493
  Original Name: xmlParseExternalSubset/usr/include/libxml2/libxml/parserInternals.h:493

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlParseExternalSubset[None](ctxt: NullablePointer[XmlParserCtxt] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:846
  Original Name: xmlParseFile/usr/include/libxml2/libxml/parser.h:846

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseFile[NullablePointer[XmlDoc]](filename: Pointer[U8] tag)

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
use @xmlParseInNodeContext[I32](node: NullablePointer[XmlNode] tag, data: Pointer[U8] tag, datalen: I32, options: I32, lst: Pointer[NullablePointer[XmlNode]] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:450
  Original Name: xmlParseMarkupDecl/usr/include/libxml2/libxml/parserInternals.h:450

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseMarkupDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:848
  Original Name: xmlParseMemory/usr/include/libxml2/libxml/parser.h:848

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlParseMemory[NullablePointer[XmlDoc]](buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:491
  Original Name: xmlParseMisc/usr/include/libxml2/libxml/parserInternals.h:491

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseMisc[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:391
  Original Name: xmlParseName/usr/include/libxml2/libxml/parserInternals.h:391

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:605
  Original Name: xmlParseNamespace/usr/include/libxml2/libxml/parserInternals.h:605

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseNamespace[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:393
  Original Name: xmlParseNmtoken/usr/include/libxml2/libxml/parserInternals.h:393

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseNmtoken[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:417
  Original Name: xmlParseNotationDecl/usr/include/libxml2/libxml/parserInternals.h:417

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseNotationDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:424
  Original Name: xmlParseNotationType/usr/include/libxml2/libxml/parserInternals.h:424

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseNotationType[NullablePointer[XmlEnumeration]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:458
  Original Name: xmlParsePEReference/usr/include/libxml2/libxml/parserInternals.h:458

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParsePEReference[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:415
  Original Name: xmlParsePI/usr/include/libxml2/libxml/parserInternals.h:415

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParsePI[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:413
  Original Name: xmlParsePITarget/usr/include/libxml2/libxml/parserInternals.h:413

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParsePITarget[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:402
  Original Name: xmlParsePubidLiteral/usr/include/libxml2/libxml/parserInternals.h:402

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParsePubidLiteral[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:603
  Original Name: xmlParseQuotedString/usr/include/libxml2/libxml/parserInternals.h:603

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseQuotedString[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:456
  Original Name: xmlParseReference/usr/include/libxml2/libxml/parserInternals.h:456

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseReference[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:485
  Original Name: xmlParseSDDecl/usr/include/libxml2/libxml/parserInternals.h:485

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseSDDecl[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:466
  Original Name: xmlParseStartTag/usr/include/libxml2/libxml/parserInternals.h:466

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseStartTag[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:400
  Original Name: xmlParseSystemLiteral/usr/include/libxml2/libxml/parserInternals.h:400

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseSystemLiteral[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:489
  Original Name: xmlParseTextDecl/usr/include/libxml2/libxml/parserInternals.h:489

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseTextDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:61
  Original Name: xmlParseURI/usr/include/libxml2/libxml/uri.h:61

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseURI[NullablePointer[XmlURI]](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:63
  Original Name: xmlParseURIRaw/usr/include/libxml2/libxml/uri.h:63

  Return Value: [PointerType size=64]->[Struct size=704,fid: f79]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlParseURIRaw[NullablePointer[XmlURI]](str: Pointer[U8] tag, raw: I32)

/*
  Source: /usr/include/libxml2/libxml/uri.h:66
  Original Name: xmlParseURIReference/usr/include/libxml2/libxml/uri.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParseURIReference[I32](uri: NullablePointer[XmlURI] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:479
  Original Name: xmlParseVersionInfo/usr/include/libxml2/libxml/parserInternals.h:479

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseVersionInfo[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:477
  Original Name: xmlParseVersionNum/usr/include/libxml2/libxml/parserInternals.h:477

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseVersionNum[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:487
  Original Name: xmlParseXMLDecl/usr/include/libxml2/libxml/parserInternals.h:487

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParseXMLDecl[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1060
  Original Name: xmlParserAddNodeInfo/usr/include/libxml2/libxml/parser.h:1060

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=320,fid: f17]
*/
use @xmlParserAddNodeInfo[None](ctxt: NullablePointer[XmlParserCtxt] tag, info: NullablePointer[XmlParserNodeInfo] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:876
  Original Name: xmlParserError/usr/include/libxml2/libxml/xmlerror.h:876

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserError[None](ctx: Pointer[None] tag, msg: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1050
  Original Name: xmlParserFindNodeInfo/usr/include/libxml2/libxml/parser.h:1050

  Return Value: [PointerType size=64]->[Struct size=320,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlParserFindNodeInfo[NullablePointer[XmlParserNodeInfo]](ctxt: NullablePointer[XmlParserCtxt] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1057
  Original Name: xmlParserFindNodeInfoIndex/usr/include/libxml2/libxml/parser.h:1057

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f17]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlParserFindNodeInfoIndex[U64](seq: NullablePointer[XmlParserNodeInfoSeq] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:202
  Original Name: xmlParserGetDirectory/usr/include/libxml2/libxml/xmlIO.h:202

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserGetDirectory[Pointer[U8]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:557
  Original Name: xmlParserHandlePEReference/usr/include/libxml2/libxml/parserInternals.h:557

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParserHandlePEReference[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:612
  Original Name: xmlParserHandleReference/usr/include/libxml2/libxml/parserInternals.h:612

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlParserHandleReference[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:176
  Original Name: xmlParserInputBufferCreateFd/usr/include/libxml2/libxml/xmlIO.h:176

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
use @xmlParserInputBufferCreateFd[NullablePointer[XmlParserInputBuffer]](fd: I32, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:173
  Original Name: xmlParserInputBufferCreateFile/usr/include/libxml2/libxml/xmlIO.h:173

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [Enumeration size=32,fid: f42]
*/
use @xmlParserInputBufferCreateFile[NullablePointer[XmlParserInputBuffer]](file: NullablePointer[IOFILE] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:170
  Original Name: xmlParserInputBufferCreateFilename/usr/include/libxml2/libxml/xmlIO.h:170

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f42]
*/
use @xmlParserInputBufferCreateFilename[NullablePointer[XmlParserInputBuffer]](uRI: Pointer[U8] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:61
  Original Name: xmlParserInputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:61

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlParserInputBufferCreateFilenameDefault[Pointer[None]](func: Pointer[None] tag)

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
use @xmlParserInputBufferCreateIO[NullablePointer[XmlParserInputBuffer]](ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:179
  Original Name: xmlParserInputBufferCreateMem/usr/include/libxml2/libxml/xmlIO.h:179

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
use @xmlParserInputBufferCreateMem[NullablePointer[XmlParserInputBuffer]](mem: Pointer[U8] tag, size: I32, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:182
  Original Name: xmlParserInputBufferCreateStatic/usr/include/libxml2/libxml/xmlIO.h:182

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [Enumeration size=32,fid: f42]
*/
use @xmlParserInputBufferCreateStatic[NullablePointer[XmlParserInputBuffer]](mem: Pointer[U8] tag, size: I32, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:193
  Original Name: xmlParserInputBufferGrow/usr/include/libxml2/libxml/xmlIO.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
*/
use @xmlParserInputBufferGrow[I32](xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:196
  Original Name: xmlParserInputBufferPush/usr/include/libxml2/libxml/xmlIO.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserInputBufferPush[I32](xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32, buf: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:190
  Original Name: xmlParserInputBufferRead/usr/include/libxml2/libxml/xmlIO.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=512,fid: f15]
    [FundamentalType(int) size=32]
*/
use @xmlParserInputBufferRead[I32](xmlin: NullablePointer[XmlParserInputBuffer] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:836
  Original Name: xmlParserInputGrow/usr/include/libxml2/libxml/parser.h:836

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlParserInputGrow[I32](xmlin: NullablePointer[XmlParserInput] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:833
  Original Name: xmlParserInputRead/usr/include/libxml2/libxml/parser.h:833

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlParserInputRead[I32](xmlin: NullablePointer[XmlParserInput] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:571
  Original Name: xmlParserInputShrink/usr/include/libxml2/libxml/parserInternals.h:571

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlParserInputShrink[None](xmlin: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:894
  Original Name: xmlParserPrintFileContext/usr/include/libxml2/libxml/xmlerror.h:894

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlParserPrintFileContext[None](input: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:892
  Original Name: xmlParserPrintFileInfo/usr/include/libxml2/libxml/xmlerror.h:892

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlParserPrintFileInfo[None](input: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:884
  Original Name: xmlParserValidityError/usr/include/libxml2/libxml/xmlerror.h:884

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserValidityError[None](ctx: Pointer[None] tag, msg: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:888
  Original Name: xmlParserValidityWarning/usr/include/libxml2/libxml/xmlerror.h:888

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserValidityWarning[None](ctx: Pointer[None] tag, msg: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:880
  Original Name: xmlParserWarning/usr/include/libxml2/libxml/xmlerror.h:880

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlParserWarning[None](ctx: Pointer[None] tag, msg: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/uri.h:89
  Original Name: xmlPathToURI/usr/include/libxml2/libxml/uri.h:89

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlPathToURI[Pointer[U8]](path: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:72
  Original Name: xmlPatternFromRoot/usr/include/libxml2/libxml/pattern.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlPatternFromRoot[I32](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:74
  Original Name: xmlPatternGetStreamCtxt/usr/include/libxml2/libxml/pattern.h:74

  Return Value: [PointerType size=64]->[Struct size=,fid: f75]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlPatternGetStreamCtxt[NullablePointer[XmlStreamCtxt]](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:58
  Original Name: xmlPatternMatch/usr/include/libxml2/libxml/pattern.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlPatternMatch[I32](comp: NullablePointer[XmlPattern] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:68
  Original Name: xmlPatternMaxDepth/usr/include/libxml2/libxml/pattern.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlPatternMaxDepth[I32](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:70
  Original Name: xmlPatternMinDepth/usr/include/libxml2/libxml/pattern.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlPatternMinDepth[I32](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:66
  Original Name: xmlPatternStreamable/usr/include/libxml2/libxml/pattern.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlPatternStreamable[I32](comp: NullablePointer[XmlPattern] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:53
  Original Name: xmlPatterncompile/usr/include/libxml2/libxml/pattern.h:53

  Return Value: [PointerType size=64]->[Struct size=,fid: f75]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=,fid: f21]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlPatterncompile[NullablePointer[XmlPattern]](pattern: Pointer[U8] tag, dict: NullablePointer[XmlDict] tag, flags: I32, namespaces: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:858
  Original Name: xmlPedanticParserDefault/usr/include/libxml2/libxml/parser.h:858

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlPedanticParserDefault[I32](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:370
  Original Name: xmlPopInput/usr/include/libxml2/libxml/parserInternals.h:370

  Return Value: [FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlPopInput[U8](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:162
  Original Name: xmlPopInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlPopInputCallbacks[I32]()

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:221
  Original Name: xmlPopOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:221

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlPopOutputCallbacks[I32]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:1313
  Original Name: xmlPreviousElementSibling/usr/include/libxml2/libxml/tree.h:1313

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlPreviousElementSibling[NullablePointer[XmlNode]](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:71
  Original Name: xmlPrintURI/usr/include/libxml2/libxml/uri.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
use @xmlPrintURI[None](stream: NullablePointer[IOFILE] tag, uri: NullablePointer[XmlURI] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:367
  Original Name: xmlPushInput/usr/include/libxml2/libxml/parserInternals.h:367

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
*/
use @xmlPushInput[I32](ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInput] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:51
  Original Name: xmlRMutexLock/usr/include/libxml2/libxml/threads.h:51

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlRMutexLock[None](tok: NullablePointer[XmlRMutex] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:53
  Original Name: xmlRMutexUnlock/usr/include/libxml2/libxml/threads.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f23]
*/
use @xmlRMutexUnlock[None](tok: NullablePointer[XmlRMutex] tag)

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
use @xmlReadDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReadFd[NullablePointer[XmlDoc]](fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1136
  Original Name: xmlReadFile/usr/include/libxml2/libxml/parser.h:1136

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlReadFile[NullablePointer[XmlDoc]](uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReadIO[NullablePointer[XmlDoc]](ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReadMemory[NullablePointer[XmlDoc]](buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderForDoc[NullablePointer[XmlTextReader]](cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderForFd[NullablePointer[XmlTextReader]](fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:329
  Original Name: xmlReaderForFile/usr/include/libxml2/libxml/xmlreader.h:329

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlReaderForFile[NullablePointer[XmlTextReader]](filename: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderForIO[NullablePointer[XmlTextReader]](ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderForMemory[NullablePointer[XmlTextReader]](buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderNewDoc[I32](reader: NullablePointer[XmlTextReader] tag, cur: Pointer[U8] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderNewFd[I32](reader: NullablePointer[XmlTextReader] tag, fd: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderNewFile[I32](reader: NullablePointer[XmlTextReader] tag, filename: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderNewIO[I32](reader: NullablePointer[XmlTextReader] tag, ioread: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlReaderNewMemory[I32](reader: NullablePointer[XmlTextReader] tag, buffer: Pointer[U8] tag, size: I32, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:352
  Original Name: xmlReaderNewWalker/usr/include/libxml2/libxml/xmlreader.h:352

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlReaderNewWalker[I32](reader: NullablePointer[XmlTextReader] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:322
  Original Name: xmlReaderWalker/usr/include/libxml2/libxml/xmlreader.h:322

  Return Value: [PointerType size=64]->[Struct size=,fid: f83]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlReaderWalker[NullablePointer[XmlTextReader]](doc: NullablePointer[XmlDoc] tag)

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
use @xmlReallocLoc[Pointer[None]](ptr: Pointer[None] tag, size: U64, file: Pointer[U8] tag, line: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1158
  Original Name: xmlReconciliateNs/usr/include/libxml2/libxml/tree.h:1158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlReconciliateNs[I32](doc: NullablePointer[XmlDoc] tag, tree: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:867
  Original Name: xmlRecoverDoc/usr/include/libxml2/libxml/parser.h:867

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlRecoverDoc[NullablePointer[XmlDoc]](cur: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:872
  Original Name: xmlRecoverFile/usr/include/libxml2/libxml/parser.h:872

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlRecoverFile[NullablePointer[XmlDoc]](filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:869
  Original Name: xmlRecoverMemory/usr/include/libxml2/libxml/parser.h:869

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlRecoverMemory[NullablePointer[XmlDoc]](buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:103
  Original Name: xmlRegExecErrInfo/usr/include/libxml2/libxml/xmlregexp.h:103

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlRegExecErrInfo[I32](exec: NullablePointer[XmlRegExecCtxt] tag, string: Pointer[Pointer[U8]] tag, nbval: Pointer[I32] tag, nbneg: Pointer[I32] tag, values: Pointer[Pointer[U8]] tag, terminal: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:97
  Original Name: xmlRegExecNextValues/usr/include/libxml2/libxml/xmlregexp.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlRegExecNextValues[I32](exec: NullablePointer[XmlRegExecCtxt] tag, nbval: Pointer[I32] tag, nbneg: Pointer[I32] tag, values: Pointer[Pointer[U8]] tag, terminal: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:87
  Original Name: xmlRegExecPushString/usr/include/libxml2/libxml/xmlregexp.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlRegExecPushString[I32](exec: NullablePointer[XmlRegExecCtxt] tag, value: Pointer[U8] tag, data: Pointer[None] tag)

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
use @xmlRegExecPushString2[I32](exec: NullablePointer[XmlRegExecCtxt] tag, value: Pointer[U8] tag, value2: Pointer[U8] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:85
  Original Name: xmlRegFreeExecCtxt/usr/include/libxml2/libxml/xmlregexp.h:85

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
use @xmlRegFreeExecCtxt[None](exec: NullablePointer[XmlRegExecCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:53
  Original Name: xmlRegFreeRegexp/usr/include/libxml2/libxml/xmlregexp.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
use @xmlRegFreeRegexp[None](regexp: NullablePointer[XmlRegexp] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:81
  Original Name: xmlRegNewExecCtxt/usr/include/libxml2/libxml/xmlregexp.h:81

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlRegNewExecCtxt[NullablePointer[XmlRegExecCtxt]](comp: NullablePointer[XmlRegexp] tag, callback: Pointer[None] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:52
  Original Name: xmlRegexpCompile/usr/include/libxml2/libxml/xmlregexp.h:52

  Return Value: [PointerType size=64]->[Struct size=,fid: f19]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlRegexpCompile[NullablePointer[XmlRegexp]](regexp: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:55
  Original Name: xmlRegexpExec/usr/include/libxml2/libxml/xmlregexp.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlRegexpExec[I32](comp: NullablePointer[XmlRegexp] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:61
  Original Name: xmlRegexpIsDeterminist/usr/include/libxml2/libxml/xmlregexp.h:61

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f19]
*/
use @xmlRegexpIsDeterminist[I32](comp: NullablePointer[XmlRegexp] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlregexp.h:58
  Original Name: xmlRegexpPrint/usr/include/libxml2/libxml/xmlregexp.h:58

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f19]
*/
use @xmlRegexpPrint[None](output: NullablePointer[IOFILE] tag, regexp: NullablePointer[XmlRegexp] tag)

/*
  Source: /usr/include/libxml2/libxml/encoding.h:176
  Original Name: xmlRegisterCharEncodingHandler/usr/include/libxml2/libxml/encoding.h:176

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlRegisterCharEncodingHandler[None](handler: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:165
  Original Name: xmlRegisterDefaultInputCallbacks/usr/include/libxml2/libxml/xmlIO.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlRegisterDefaultInputCallbacks[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:223
  Original Name: xmlRegisterDefaultOutputCallbacks/usr/include/libxml2/libxml/xmlIO.h:223

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlRegisterDefaultOutputCallbacks[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlIO.h:287
  Original Name: xmlRegisterHTTPPostCallbacks/usr/include/libxml2/libxml/xmlIO.h:287

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlRegisterHTTPPostCallbacks[None]()

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
use @xmlRegisterInputCallbacks[I32](matchFunc: Pointer[None] tag, openFunc: Pointer[None] tag, readFunc: Pointer[None] tag, closeFunc: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:183
  Original Name: xmlRegisterNodeDefault/usr/include/libxml2/libxml/globals.h:183

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlRegisterNodeDefault[Pointer[None]](func: Pointer[None] tag)

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
use @xmlRegisterOutputCallbacks[I32](matchFunc: Pointer[None] tag, openFunc: Pointer[None] tag, writeFunc: Pointer[None] tag, closeFunc: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:122
  Original Name: xmlRelaxNGCleanupTypes/usr/include/libxml2/libxml/relaxng.h:122

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlRelaxNGCleanupTypes[None]()

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:162
  Original Name: xmlRelaxNGDump/usr/include/libxml2/libxml/relaxng.h:162

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGDump[None](output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlRelaxNG] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:165
  Original Name: xmlRelaxNGDumpTree/usr/include/libxml2/libxml/relaxng.h:165

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGDumpTree[None](output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlRelaxNG] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:159
  Original Name: xmlRelaxNGFree/usr/include/libxml2/libxml/relaxng.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGFree[None](schema: NullablePointer[XmlRelaxNG] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:140
  Original Name: xmlRelaxNGFreeParserCtxt/usr/include/libxml2/libxml/relaxng.h:140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGFreeParserCtxt[None](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:187
  Original Name: xmlRelaxNGFreeValidCtxt/usr/include/libxml2/libxml/relaxng.h:187

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGFreeValidCtxt[None](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag)

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
use @xmlRelaxNGGetParserErrors[I32](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag)

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
use @xmlRelaxNGGetValidErrors[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:120
  Original Name: xmlRelaxNGInitTypes/usr/include/libxml2/libxml/relaxng.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @xmlRelaxNGInitTypes[I32]()

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:133
  Original Name: xmlRelaxNGNewDocParserCtxt/usr/include/libxml2/libxml/relaxng.h:133

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlRelaxNGNewDocParserCtxt[NullablePointer[XmlRelaxNGParserCtxt]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:130
  Original Name: xmlRelaxNGNewMemParserCtxt/usr/include/libxml2/libxml/relaxng.h:130

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlRelaxNGNewMemParserCtxt[NullablePointer[XmlRelaxNGParserCtxt]](buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:128
  Original Name: xmlRelaxNGNewParserCtxt/usr/include/libxml2/libxml/relaxng.h:128

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlRelaxNGNewParserCtxt[NullablePointer[XmlRelaxNGParserCtxt]](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:185
  Original Name: xmlRelaxNGNewValidCtxt/usr/include/libxml2/libxml/relaxng.h:185

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGNewValidCtxt[NullablePointer[XmlRelaxNGValidCtxt]](schema: NullablePointer[XmlRelaxNG] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:157
  Original Name: xmlRelaxNGParse/usr/include/libxml2/libxml/relaxng.h:157

  Return Value: [PointerType size=64]->[Struct size=,fid: f76]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlRelaxNGParse[NullablePointer[XmlRelaxNG]](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag)

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
use @xmlRelaxNGSetParserErrors[None](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:152
  Original Name: xmlRelaxNGSetParserStructuredErrors/usr/include/libxml2/libxml/relaxng.h:152

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlRelaxNGSetParserStructuredErrors[None](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag)

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
use @xmlRelaxNGSetValidErrors[None](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:182
  Original Name: xmlRelaxNGSetValidStructuredErrors/usr/include/libxml2/libxml/relaxng.h:182

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlRelaxNGSetValidStructuredErrors[None](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:189
  Original Name: xmlRelaxNGValidateDoc/usr/include/libxml2/libxml/relaxng.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlRelaxNGValidateDoc[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:207
  Original Name: xmlRelaxNGValidateFullElement/usr/include/libxml2/libxml/relaxng.h:207

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlRelaxNGValidateFullElement[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:203
  Original Name: xmlRelaxNGValidatePopElement/usr/include/libxml2/libxml/relaxng.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlRelaxNGValidatePopElement[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:199
  Original Name: xmlRelaxNGValidatePushCData/usr/include/libxml2/libxml/relaxng.h:199

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlRelaxNGValidatePushCData[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, data: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:195
  Original Name: xmlRelaxNGValidatePushElement/usr/include/libxml2/libxml/relaxng.h:195

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlRelaxNGValidatePushElement[I32](ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/relaxng.h:136
  Original Name: xmlRelaxParserSetFlag/usr/include/libxml2/libxml/relaxng.h:136

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f76]
    [FundamentalType(int) size=32]
*/
use @xmlRelaxParserSetFlag[I32](ctxt: NullablePointer[XmlRelaxNGParserCtxt] tag, flag: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:282
  Original Name: xmlRemoveID/usr/include/libxml2/libxml/valid.h:282

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlRemoveID[I32](doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1122
  Original Name: xmlRemoveProp/usr/include/libxml2/libxml/tree.h:1122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlRemoveProp[I32](cur: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:298
  Original Name: xmlRemoveRef/usr/include/libxml2/libxml/valid.h:298

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=768,fid: f16]
*/
use @xmlRemoveRef[I32](doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttr] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:961
  Original Name: xmlReplaceNode/usr/include/libxml2/libxml/tree.h:961

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlReplaceNode[NullablePointer[XmlNode]](old: NullablePointer[XmlNode] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:908
  Original Name: xmlResetError/usr/include/libxml2/libxml/xmlerror.h:908

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f25]
*/
use @xmlResetError[None](err: NullablePointer[XmlError] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:902
  Original Name: xmlResetLastError/usr/include/libxml2/libxml/xmlerror.h:902

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlResetLastError[None]()

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
use @xmlSAX2AttributeDecl[None](ctx: Pointer[None] tag, elem: Pointer[U8] tag, fullname: Pointer[U8] tag, xmltype: I32, def: I32, defaultValue: Pointer[U8] tag, tree: NullablePointer[XmlEnumeration] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:146
  Original Name: xmlSAX2CDataBlock/usr/include/libxml2/libxml/SAX2.h:146

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSAX2CDataBlock[None](ctx: Pointer[None] tag, value: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:131
  Original Name: xmlSAX2Characters/usr/include/libxml2/libxml/SAX2.h:131

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSAX2Characters[None](ctx: Pointer[None] tag, ch: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:143
  Original Name: xmlSAX2Comment/usr/include/libxml2/libxml/SAX2.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2Comment[None](ctx: Pointer[None] tag, value: Pointer[U8] tag)

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
use @xmlSAX2ElementDecl[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, xmltype: I32, content: NullablePointer[XmlElementContent] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:100
  Original Name: xmlSAX2EndDocument/usr/include/libxml2/libxml/SAX2.h:100

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2EndDocument[None](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:109
  Original Name: xmlSAX2EndElement/usr/include/libxml2/libxml/SAX2.h:109

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2EndElement[None](ctx: Pointer[None] tag, name: Pointer[U8] tag)

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
use @xmlSAX2EndElementNs[None](ctx: Pointer[None] tag, localname: Pointer[U8] tag, prefix: Pointer[U8] tag, uRI: Pointer[U8] tag)

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
use @xmlSAX2EntityDecl[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, xmltype: I32, publicId: Pointer[U8] tag, systemId: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlSAX2ExternalSubset[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:35
  Original Name: xmlSAX2GetColumnNumber/usr/include/libxml2/libxml/SAX2.h:35

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2GetColumnNumber[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:55
  Original Name: xmlSAX2GetEntity/usr/include/libxml2/libxml/SAX2.h:55

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2GetEntity[NullablePointer[XmlEntity]](ctx: Pointer[None] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:33
  Original Name: xmlSAX2GetLineNumber/usr/include/libxml2/libxml/SAX2.h:33

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2GetLineNumber[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:58
  Original Name: xmlSAX2GetParameterEntity/usr/include/libxml2/libxml/SAX2.h:58

  Return Value: [PointerType size=64]->[Struct size=1088,fid: f18]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2GetParameterEntity[NullablePointer[XmlEntity]](ctx: Pointer[None] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:25
  Original Name: xmlSAX2GetPublicId/usr/include/libxml2/libxml/SAX2.h:25

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2GetPublicId[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:27
  Original Name: xmlSAX2GetSystemId/usr/include/libxml2/libxml/SAX2.h:27

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2GetSystemId[Pointer[U8]](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:42
  Original Name: xmlSAX2HasExternalSubset/usr/include/libxml2/libxml/SAX2.h:42

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2HasExternalSubset[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:40
  Original Name: xmlSAX2HasInternalSubset/usr/include/libxml2/libxml/SAX2.h:40

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2HasInternalSubset[I32](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:135
  Original Name: xmlSAX2IgnorableWhitespace/usr/include/libxml2/libxml/SAX2.h:135

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSAX2IgnorableWhitespace[None](ctx: Pointer[None] tag, ch: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:159
  Original Name: xmlSAX2InitDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:159

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlSAX2InitDefaultSAXHandler[None](hdlr: NullablePointer[XmlSAXHandler] tag, warning: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:169
  Original Name: xmlSAX2InitDocbDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:169

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
*/
use @xmlSAX2InitDocbDefaultSAXHandler[None](hdlr: NullablePointer[XmlSAXHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:163
  Original Name: xmlSAX2InitHtmlDefaultSAXHandler/usr/include/libxml2/libxml/SAX2.h:163

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
*/
use @xmlSAX2InitHtmlDefaultSAXHandler[None](hdlr: NullablePointer[XmlSAXHandler] tag)

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
use @xmlSAX2InternalSubset[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:38
  Original Name: xmlSAX2IsStandalone/usr/include/libxml2/libxml/SAX2.h:38

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2IsStandalone[I32](ctx: Pointer[None] tag)

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
use @xmlSAX2NotationDecl[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, publicId: Pointer[U8] tag, systemId: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:139
  Original Name: xmlSAX2ProcessingInstruction/usr/include/libxml2/libxml/SAX2.h:139

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2ProcessingInstruction[None](ctx: Pointer[None] tag, target: Pointer[U8] tag, data: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:128
  Original Name: xmlSAX2Reference/usr/include/libxml2/libxml/SAX2.h:128

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2Reference[None](ctx: Pointer[None] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:61
  Original Name: xmlSAX2ResolveEntity/usr/include/libxml2/libxml/SAX2.h:61

  Return Value: [PointerType size=64]->[Struct size=832,fid: f17]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2ResolveEntity[NullablePointer[XmlParserInput]](ctx: Pointer[None] tag, publicId: Pointer[U8] tag, systemId: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:29
  Original Name: xmlSAX2SetDocumentLocator/usr/include/libxml2/libxml/SAX2.h:29

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[Struct size=256,fid: f17]
*/
use @xmlSAX2SetDocumentLocator[None](ctx: Pointer[None] tag, loc: NullablePointer[XmlSAXLocator] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:98
  Original Name: xmlSAX2StartDocument/usr/include/libxml2/libxml/SAX2.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSAX2StartDocument[None](ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:105
  Original Name: xmlSAX2StartElement/usr/include/libxml2/libxml/SAX2.h:105

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2StartElement[None](ctx: Pointer[None] tag, fullname: Pointer[U8] tag, atts: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:113
  Original Name: xmlSAX2StartElementNs/usr/include/libxml2/libxml/SAX2.h:113

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAX2StartElementNs[None](ctx: Pointer[None] tag, localname: Pointer[U8] tag, prefix: Pointer[U8] tag, uRI: Pointer[U8] tag, nbnamespaces: I32, namespaces: Pointer[Pointer[U8]] tag, nbattributes: I32, nbdefaulted: I32, attributes: Pointer[Pointer[U8]] tag)

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
use @xmlSAX2UnparsedEntityDecl[None](ctx: Pointer[None] tag, name: Pointer[U8] tag, publicId: Pointer[U8] tag, systemId: Pointer[U8] tag, notationName: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:152
  Original Name: xmlSAXDefaultVersion/usr/include/libxml2/libxml/SAX2.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlSAXDefaultVersion[I32](version: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:925
  Original Name: xmlSAXParseDTD/usr/include/libxml2/libxml/parser.h:925

  Return Value: [PointerType size=64]->[Struct size=1024,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSAXParseDTD[NullablePointer[XmlDtd]](sax: NullablePointer[XmlSAXHandler] tag, externalID: Pointer[U8] tag, systemID: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:893
  Original Name: xmlSAXParseDoc/usr/include/libxml2/libxml/parser.h:893

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSAXParseDoc[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, cur: Pointer[U8] tag, recovery: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:917
  Original Name: xmlSAXParseEntity/usr/include/libxml2/libxml/parser.h:917

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSAXParseEntity[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:908
  Original Name: xmlSAXParseFile/usr/include/libxml2/libxml/parser.h:908

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSAXParseFile[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, filename: Pointer[U8] tag, recovery: I32)

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
use @xmlSAXParseFileWithData[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, filename: Pointer[U8] tag, recovery: I32, data: Pointer[None] tag)

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
use @xmlSAXParseMemory[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, buffer: Pointer[U8] tag, size: I32, recovery: I32)

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
use @xmlSAXParseMemoryWithData[NullablePointer[XmlDoc]](sax: NullablePointer[XmlSAXHandler] tag, buffer: Pointer[U8] tag, size: I32, recovery: I32, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:884
  Original Name: xmlSAXUserParseFile/usr/include/libxml2/libxml/parser.h:884

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSAXUserParseFile[I32](sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, filename: Pointer[U8] tag)

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
use @xmlSAXUserParseMemory[I32](sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag, buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/SAX2.h:156
  Original Name: xmlSAXVersion/usr/include/libxml2/libxml/SAX2.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=2048,fid: f17]
    [FundamentalType(int) size=32]
*/
use @xmlSAXVersion[I32](hdlr: NullablePointer[XmlSAXHandler] tag, version: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:75
  Original Name: xmlSaveClose/usr/include/libxml2/libxml/xmlsave.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
*/
use @xmlSaveClose[I32](ctxt: NullablePointer[XmlSaveCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:66
  Original Name: xmlSaveDoc/usr/include/libxml2/libxml/xmlsave.h:66

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSaveDoc[I64](ctxt: NullablePointer[XmlSaveCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1198
  Original Name: xmlSaveFile/usr/include/libxml2/libxml/tree.h:1198

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSaveFile[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1241
  Original Name: xmlSaveFileEnc/usr/include/libxml2/libxml/tree.h:1241

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSaveFileEnc[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1218
  Original Name: xmlSaveFileTo/usr/include/libxml2/libxml/tree.h:1218

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f15]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSaveFileTo[I32](buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:73
  Original Name: xmlSaveFlush/usr/include/libxml2/libxml/xmlsave.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
*/
use @xmlSaveFlush[I32](ctxt: NullablePointer[XmlSaveCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1201
  Original Name: xmlSaveFormatFile/usr/include/libxml2/libxml/tree.h:1201

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlSaveFormatFile[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag, format: I32)

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
use @xmlSaveFormatFileEnc[I32](filename: Pointer[U8] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag, format: I32)

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
use @xmlSaveFormatFileTo[I32](buf: NullablePointer[XmlOutputBuffer] tag, cur: NullablePointer[XmlDoc] tag, encoding: Pointer[U8] tag, format: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:80
  Original Name: xmlSaveSetAttrEscape/usr/include/libxml2/libxml/xmlsave.h:80

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSaveSetAttrEscape[I32](ctxt: NullablePointer[XmlSaveCtxt] tag, escape: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:77
  Original Name: xmlSaveSetEscape/usr/include/libxml2/libxml/xmlsave.h:77

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSaveSetEscape[I32](ctxt: NullablePointer[XmlSaveCtxt] tag, escape: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:54
  Original Name: xmlSaveToBuffer/usr/include/libxml2/libxml/xmlsave.h:54

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSaveToBuffer[NullablePointer[XmlSaveCtxt]](buffer: NullablePointer[XmlBuffer] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:45
  Original Name: xmlSaveToFd/usr/include/libxml2/libxml/xmlsave.h:45

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSaveToFd[NullablePointer[XmlSaveCtxt]](fd: I32, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:49
  Original Name: xmlSaveToFilename/usr/include/libxml2/libxml/xmlsave.h:49

  Return Value: [PointerType size=64]->[Struct size=,fid: f84]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSaveToFilename[NullablePointer[XmlSaveCtxt]](filename: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

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
use @xmlSaveToIO[NullablePointer[XmlSaveCtxt]](iowrite: Pointer[None] tag, ioclose: Pointer[None] tag, ioctx: Pointer[None] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlsave.h:69
  Original Name: xmlSaveTree/usr/include/libxml2/libxml/xmlsave.h:69

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f84]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlSaveTree[I64](ctxt: NullablePointer[XmlSaveCtxt] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:69
  Original Name: xmlSaveUri/usr/include/libxml2/libxml/uri.h:69

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f79]
*/
use @xmlSaveUri[Pointer[U8]](uri: NullablePointer[XmlURI] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:609
  Original Name: xmlScanName/usr/include/libxml2/libxml/parserInternals.h:609

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlScanName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @xmlSchemaCheckFacet[I32](facet: NullablePointer[XmlSchemaFacet] tag, typeDecl: NullablePointer[XmlSchemaType] tag, ctxt: NullablePointer[XmlSchemaParserCtxt] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:36
  Original Name: xmlSchemaCleanupTypes/usr/include/libxml2/libxml/xmlschemastypes.h:36

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlSchemaCleanupTypes[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:88
  Original Name: xmlSchemaCollapseString/usr/include/libxml2/libxml/xmlschemastypes.h:88

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaCollapseString[Pointer[U8]](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:73
  Original Name: xmlSchemaCompareValues/usr/include/libxml2/libxml/xmlschemastypes.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaCompareValues[I32](x: NullablePointer[XmlSchemaVal] tag, y: NullablePointer[XmlSchemaVal] tag)

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
use @xmlSchemaCompareValuesWhtsp[I32](x: NullablePointer[XmlSchemaVal] tag, xws: I32, y: NullablePointer[XmlSchemaVal] tag, yws: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:142
  Original Name: xmlSchemaCopyValue/usr/include/libxml2/libxml/xmlschemastypes.h:142

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaCopyValue[NullablePointer[XmlSchemaVal]](xmlval: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:169
  Original Name: xmlSchemaDump/usr/include/libxml2/libxml/xmlschemas.h:169

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
use @xmlSchemaDump[None](output: NullablePointer[IOFILE] tag, schema: NullablePointer[XmlSchema] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:166
  Original Name: xmlSchemaFree/usr/include/libxml2/libxml/xmlschemas.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
use @xmlSchemaFree[None](schema: NullablePointer[XmlSchema] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:71
  Original Name: xmlSchemaFreeFacet/usr/include/libxml2/libxml/xmlschemastypes.h:71

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
use @xmlSchemaFreeFacet[None](facet: NullablePointer[XmlSchemaFacet] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:145
  Original Name: xmlSchemaFreeParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:145

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaFreeParserCtxt[None](ctxt: NullablePointer[XmlSchemaParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/schemasInternals.h:950
  Original Name: xmlSchemaFreeType/usr/include/libxml2/libxml/schemasInternals.h:950

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
*/
use @xmlSchemaFreeType[None](xmltype: NullablePointer[XmlSchemaType] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:201
  Original Name: xmlSchemaFreeValidCtxt/usr/include/libxml2/libxml/xmlschemas.h:201

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaFreeValidCtxt[None](ctxt: NullablePointer[XmlSchemaValidCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:62
  Original Name: xmlSchemaFreeValue/usr/include/libxml2/libxml/xmlschemastypes.h:62

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaFreeValue[None](xmlval: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/schemasInternals.h:951
  Original Name: xmlSchemaFreeWildcard/usr/include/libxml2/libxml/schemasInternals.h:951

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
use @xmlSchemaFreeWildcard[None](wildcard: NullablePointer[XmlSchemaWildcard] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:76
  Original Name: xmlSchemaGetBuiltInListSimpleTypeItemType/usr/include/libxml2/libxml/xmlschemastypes.h:76

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
*/
use @xmlSchemaGetBuiltInListSimpleTypeItemType[NullablePointer[XmlSchemaType]](xmltype: NullablePointer[XmlSchemaType] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:83
  Original Name: xmlSchemaGetBuiltInType/usr/include/libxml2/libxml/xmlschemastypes.h:83

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [Enumeration size=32,fid: f77]
*/
use @xmlSchemaGetBuiltInType[NullablePointer[XmlSchemaType]](xmltype: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:112
  Original Name: xmlSchemaGetCanonValue/usr/include/libxml2/libxml/xmlschemastypes.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaGetCanonValue[I32](xmlval: NullablePointer[XmlSchemaVal] tag, retValue: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:115
  Original Name: xmlSchemaGetCanonValueWhtsp/usr/include/libxml2/libxml/xmlschemastypes.h:115

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [Enumeration size=32,fid: f85]
*/
use @xmlSchemaGetCanonValueWhtsp[I32](xmlval: NullablePointer[XmlSchemaVal] tag, retValue: Pointer[Pointer[U8]] tag, ws: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:92
  Original Name: xmlSchemaGetFacetValueAsULong/usr/include/libxml2/libxml/xmlschemastypes.h:92

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f77]
*/
use @xmlSchemaGetFacetValueAsULong[U64](facet: NullablePointer[XmlSchemaFacet] tag)

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
use @xmlSchemaGetParserErrors[I32](ctxt: NullablePointer[XmlSchemaParserCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:38
  Original Name: xmlSchemaGetPredefinedType/usr/include/libxml2/libxml/xmlschemastypes.h:38

  Return Value: [PointerType size=64]->[Struct size=1792,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaGetPredefinedType[NullablePointer[XmlSchemaType]](name: Pointer[U8] tag, ns: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:144
  Original Name: xmlSchemaGetValType/usr/include/libxml2/libxml/xmlschemastypes.h:144

  Return Value: [Enumeration size=32,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaGetValType[I32](xmlval: NullablePointer[XmlSchemaVal] tag)

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
use @xmlSchemaGetValidErrors[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, err: NullablePointer[Pointer[None]] tag, warn: NullablePointer[Pointer[None]] tag, ctx: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:34
  Original Name: xmlSchemaInitTypes/usr/include/libxml2/libxml/xmlschemastypes.h:34

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlSchemaInitTypes[None]()

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:85
  Original Name: xmlSchemaIsBuiltInTypeFacet/usr/include/libxml2/libxml/xmlschemastypes.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [FundamentalType(int) size=32]
*/
use @xmlSchemaIsBuiltInTypeFacet[I32](xmltype: NullablePointer[XmlSchemaType] tag, facetType: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:161
  Original Name: xmlSchemaIsValid/usr/include/libxml2/libxml/xmlschemas.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaIsValid[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:143
  Original Name: xmlSchemaNewDocParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:143

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSchemaNewDocParserCtxt[NullablePointer[XmlSchemaParserCtxt]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:64
  Original Name: xmlSchemaNewFacet/usr/include/libxml2/libxml/xmlschemastypes.h:64

  Return Value: [PointerType size=64]->[Struct size=576,fid: f77]

  Arguments:
*/
use @xmlSchemaNewFacet[NullablePointer[XmlSchemaFacet]]()

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:140
  Original Name: xmlSchemaNewMemParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:140

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSchemaNewMemParserCtxt[NullablePointer[XmlSchemaParserCtxt]](buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:131
  Original Name: xmlSchemaNewNOTATIONValue/usr/include/libxml2/libxml/xmlschemastypes.h:131

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaNewNOTATIONValue[NullablePointer[XmlSchemaVal]](name: Pointer[U8] tag, ns: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:138
  Original Name: xmlSchemaNewParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:138

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSchemaNewParserCtxt[NullablePointer[XmlSchemaParserCtxt]](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:134
  Original Name: xmlSchemaNewQNameValue/usr/include/libxml2/libxml/xmlschemastypes.h:134

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaNewQNameValue[NullablePointer[XmlSchemaVal]](namespaceName: Pointer[U8] tag, localName: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:128
  Original Name: xmlSchemaNewStringValue/usr/include/libxml2/libxml/xmlschemastypes.h:128

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [Enumeration size=32,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaNewStringValue[NullablePointer[XmlSchemaVal]](xmltype: I32, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:199
  Original Name: xmlSchemaNewValidCtxt/usr/include/libxml2/libxml/xmlschemas.h:199

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
use @xmlSchemaNewValidCtxt[NullablePointer[XmlSchemaValidCtxt]](schema: NullablePointer[XmlSchema] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:164
  Original Name: xmlSchemaParse/usr/include/libxml2/libxml/xmlschemas.h:164

  Return Value: [PointerType size=64]->[Struct size=1280,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaParse[NullablePointer[XmlSchema]](ctxt: NullablePointer[XmlSchemaParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:229
  Original Name: xmlSchemaSAXPlug/usr/include/libxml2/libxml/xmlschemas.h:229

  Return Value: [PointerType size=64]->[Struct size=,fid: f82]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[PointerType size=64]->[Struct size=2048,fid: f17]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSchemaSAXPlug[NullablePointer[XmlSchemaSAXPlug]](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, sax: Pointer[NullablePointer[XmlSAXHandler]] tag, userdata: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:233
  Original Name: xmlSchemaSAXUnplug/usr/include/libxml2/libxml/xmlschemas.h:233

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaSAXUnplug[I32](plug: NullablePointer[XmlSchemaSAXPlug] tag)

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
use @xmlSchemaSetParserErrors[None](ctxt: NullablePointer[XmlSchemaParserCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:152
  Original Name: xmlSchemaSetParserStructuredErrors/usr/include/libxml2/libxml/xmlschemas.h:152

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSchemaSetParserStructuredErrors[None](ctxt: NullablePointer[XmlSchemaParserCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag)

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
use @xmlSchemaSetValidErrors[None](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, err: Pointer[None] tag, warn: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:190
  Original Name: xmlSchemaSetValidOptions/usr/include/libxml2/libxml/xmlschemas.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [FundamentalType(int) size=32]
*/
use @xmlSchemaSetValidOptions[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:181
  Original Name: xmlSchemaSetValidStructuredErrors/usr/include/libxml2/libxml/xmlschemas.h:181

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSchemaSetValidStructuredErrors[None](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag)

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
use @xmlSchemaValPredefTypeNode[I32](xmltype: NullablePointer[XmlSchemaType] tag, value: Pointer[U8] tag, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag, node: NullablePointer[XmlNode] tag)

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
use @xmlSchemaValPredefTypeNodeNoNorm[I32](xmltype: NullablePointer[XmlSchemaType] tag, value: Pointer[U8] tag, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:196
  Original Name: xmlSchemaValidCtxtGetOptions/usr/include/libxml2/libxml/xmlschemas.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaValidCtxtGetOptions[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:220
  Original Name: xmlSchemaValidCtxtGetParserCtxt/usr/include/libxml2/libxml/xmlschemas.h:220

  Return Value: [PointerType size=64]->[Struct size=6016,fid: f17]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
*/
use @xmlSchemaValidCtxtGetParserCtxt[NullablePointer[XmlParserCtxt]](ctxt: NullablePointer[XmlSchemaValidCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:203
  Original Name: xmlSchemaValidateDoc/usr/include/libxml2/libxml/xmlschemas.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSchemaValidateDoc[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, instance: NullablePointer[XmlDoc] tag)

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
use @xmlSchemaValidateFacet[I32](base: NullablePointer[XmlSchemaType] tag, facet: NullablePointer[XmlSchemaFacet] tag, value: Pointer[U8] tag, xmlval: NullablePointer[XmlSchemaVal] tag)

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
use @xmlSchemaValidateFacetWhtsp[I32](facet: NullablePointer[XmlSchemaFacet] tag, fws: I32, valType: I32, value: Pointer[U8] tag, xmlval: NullablePointer[XmlSchemaVal] tag, ws: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:215
  Original Name: xmlSchemaValidateFile/usr/include/libxml2/libxml/xmlschemas.h:215

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSchemaValidateFile[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, filename: Pointer[U8] tag, options: I32)

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
use @xmlSchemaValidateLengthFacet[I32](xmltype: NullablePointer[XmlSchemaType] tag, facet: NullablePointer[XmlSchemaFacet] tag, value: Pointer[U8] tag, xmlval: NullablePointer[XmlSchemaVal] tag, length: Pointer[U64] tag)

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
use @xmlSchemaValidateLengthFacetWhtsp[I32](facet: NullablePointer[XmlSchemaFacet] tag, valType: I32, value: Pointer[U8] tag, xmlval: NullablePointer[XmlSchemaVal] tag, length: Pointer[U64] tag, ws: I32)

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
use @xmlSchemaValidateListSimpleTypeFacet[I32](facet: NullablePointer[XmlSchemaFacet] tag, value: Pointer[U8] tag, actualLen: U64, expectedLen: Pointer[U64] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:206
  Original Name: xmlSchemaValidateOneElement/usr/include/libxml2/libxml/xmlschemas.h:206

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlSchemaValidateOneElement[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:41
  Original Name: xmlSchemaValidatePredefinedType/usr/include/libxml2/libxml/xmlschemastypes.h:41

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1792,fid: f77]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaValidatePredefinedType[I32](xmltype: NullablePointer[XmlSchemaType] tag, value: Pointer[U8] tag, xmlval: Pointer[NullablePointer[XmlSchemaVal]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:193
  Original Name: xmlSchemaValidateSetFilename/usr/include/libxml2/libxml/xmlschemas.h:193

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSchemaValidateSetFilename[None](vctxt: NullablePointer[XmlSchemaValidCtxt] tag, filename: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemas.h:237
  Original Name: xmlSchemaValidateSetLocator/usr/include/libxml2/libxml/xmlschemas.h:237

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f82]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSchemaValidateSetLocator[None](vctxt: NullablePointer[XmlSchemaValidCtxt] tag, f: Pointer[None] tag, ctxt: Pointer[None] tag)

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
use @xmlSchemaValidateStream[I32](ctxt: NullablePointer[XmlSchemaValidCtxt] tag, input: NullablePointer[XmlParserInputBuffer] tag, enc: I32, sax: NullablePointer[XmlSAXHandler] tag, userdata: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:119
  Original Name: xmlSchemaValueAppend/usr/include/libxml2/libxml/xmlschemastypes.h:119

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaValueAppend[I32](prev: NullablePointer[XmlSchemaVal] tag, cur: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:126
  Original Name: xmlSchemaValueGetAsBoolean/usr/include/libxml2/libxml/xmlschemastypes.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaValueGetAsBoolean[I32](xmlval: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:124
  Original Name: xmlSchemaValueGetAsString/usr/include/libxml2/libxml/xmlschemastypes.h:124

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaValueGetAsString[Pointer[U8]](xmlval: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:122
  Original Name: xmlSchemaValueGetNext/usr/include/libxml2/libxml/xmlschemastypes.h:122

  Return Value: [PointerType size=64]->[Struct size=,fid: f77]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f77]
*/
use @xmlSchemaValueGetNext[NullablePointer[XmlSchemaVal]](cur: NullablePointer[XmlSchemaVal] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlschemastypes.h:90
  Original Name: xmlSchemaWhiteSpaceReplace/usr/include/libxml2/libxml/xmlschemastypes.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSchemaWhiteSpaceReplace[Pointer[U8]](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:98
  Original Name: xmlSchematronFree/usr/include/libxml2/libxml/schematron.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
use @xmlSchematronFree[None](schema: NullablePointer[XmlSchematron] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:80
  Original Name: xmlSchematronFreeParserCtxt/usr/include/libxml2/libxml/schematron.h:80

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
use @xmlSchematronFreeParserCtxt[None](ctxt: NullablePointer[XmlSchematronParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:132
  Original Name: xmlSchematronFreeValidCtxt/usr/include/libxml2/libxml/schematron.h:132

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
use @xmlSchematronFreeValidCtxt[None](ctxt: NullablePointer[XmlSchematronValidCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:78
  Original Name: xmlSchematronNewDocParserCtxt/usr/include/libxml2/libxml/schematron.h:78

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSchematronNewDocParserCtxt[NullablePointer[XmlSchematronParserCtxt]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:75
  Original Name: xmlSchematronNewMemParserCtxt/usr/include/libxml2/libxml/schematron.h:75

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlSchematronNewMemParserCtxt[NullablePointer[XmlSchematronParserCtxt]](buffer: Pointer[U8] tag, size: I32)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:73
  Original Name: xmlSchematronNewParserCtxt/usr/include/libxml2/libxml/schematron.h:73

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSchematronNewParserCtxt[NullablePointer[XmlSchematronParserCtxt]](uRL: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:129
  Original Name: xmlSchematronNewValidCtxt/usr/include/libxml2/libxml/schematron.h:129

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [FundamentalType(int) size=32]
*/
use @xmlSchematronNewValidCtxt[NullablePointer[XmlSchematronValidCtxt]](schema: NullablePointer[XmlSchematron] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:96
  Original Name: xmlSchematronParse/usr/include/libxml2/libxml/schematron.h:96

  Return Value: [PointerType size=64]->[Struct size=,fid: f78]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
*/
use @xmlSchematronParse[NullablePointer[XmlSchematron]](ctxt: NullablePointer[XmlSchematronParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:103
  Original Name: xmlSchematronSetValidStructuredErrors/usr/include/libxml2/libxml/schematron.h:103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSchematronSetValidStructuredErrors[None](ctxt: NullablePointer[XmlSchematronValidCtxt] tag, serror: Pointer[None] tag, ctx: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/schematron.h:134
  Original Name: xmlSchematronValidateDoc/usr/include/libxml2/libxml/schematron.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f78]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSchematronValidateDoc[I32](ctxt: NullablePointer[XmlSchematronValidCtxt] tag, instance: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:999
  Original Name: xmlSearchNs/usr/include/libxml2/libxml/tree.h:999

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSearchNs[NullablePointer[XmlNs]](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, nameSpace: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1003
  Original Name: xmlSearchNsByHref/usr/include/libxml2/libxml/tree.h:1003

  Return Value: [PointerType size=64]->[Struct size=384,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSearchNsByHref[NullablePointer[XmlNs]](doc: NullablePointer[XmlDoc] tag, node: NullablePointer[XmlNode] tag, href: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:709
  Original Name: xmlSetBufferAllocationScheme/usr/include/libxml2/libxml/tree.h:709

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [Enumeration size=32,fid: f16]
*/
use @xmlSetBufferAllocationScheme[None](scheme: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1264
  Original Name: xmlSetCompressMode/usr/include/libxml2/libxml/tree.h:1264

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlSetCompressMode[None](mode: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1259
  Original Name: xmlSetDocCompressMode/usr/include/libxml2/libxml/tree.h:1259

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlSetDocCompressMode[None](doc: NullablePointer[XmlDoc] tag, mode: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:600
  Original Name: xmlSetEntityReferenceFunc/usr/include/libxml2/libxml/parserInternals.h:600

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSetEntityReferenceFunc[None](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1068
  Original Name: xmlSetExternalEntityLoader/usr/include/libxml2/libxml/parser.h:1068

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSetExternalEntityLoader[None](f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:1007
  Original Name: xmlSetFeature/usr/include/libxml2/libxml/parser.h:1007

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlSetFeature[I32](ctxt: NullablePointer[XmlParserCtxt] tag, name: Pointer[U8] tag, value: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:863
  Original Name: xmlSetGenericErrorFunc/usr/include/libxml2/libxml/xmlerror.h:863

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSetGenericErrorFunc[None](ctx: Pointer[None] tag, handler: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:993
  Original Name: xmlSetListDoc/usr/include/libxml2/libxml/tree.h:993

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSetListDoc[None](list: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1014
  Original Name: xmlSetNs/usr/include/libxml2/libxml/tree.h:1014

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlSetNs[None](node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag)

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
use @xmlSetNsProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1027
  Original Name: xmlSetProp/usr/include/libxml2/libxml/tree.h:1027

  Return Value: [PointerType size=64]->[Struct size=768,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSetProp[NullablePointer[XmlAttr]](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlerror.h:869
  Original Name: xmlSetStructuredErrorFunc/usr/include/libxml2/libxml/xmlerror.h:869

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlSetStructuredErrorFunc[None](ctx: Pointer[None] tag, handler: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:990
  Original Name: xmlSetTreeDoc/usr/include/libxml2/libxml/tree.h:990

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlSetTreeDoc[None](tree: NullablePointer[XmlNode] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/parser.h:988
  Original Name: xmlSetupParserForBuffer/usr/include/libxml2/libxml/parser.h:988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlSetupParserForBuffer[None](ctxt: NullablePointer[XmlParserCtxt] tag, buffer: Pointer[U8] tag, filename: Pointer[U8] tag)

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
use @xmlShell[None](doc: NullablePointer[XmlDoc] tag, filename: Pointer[U8] tag, input: Pointer[None] tag, output: NullablePointer[IOFILE] tag)

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
use @xmlShellBase[I32](ctxt: NullablePointer[XmlShellCtxt] tag, arg: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellCat[I32](ctxt: NullablePointer[XmlShellCtxt] tag, arg: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellDir[I32](ctxt: NullablePointer[XmlShellCtxt] tag, arg: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellDu[I32](ctxt: NullablePointer[XmlShellCtxt] tag, arg: Pointer[U8] tag, tree: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellList[I32](ctxt: NullablePointer[XmlShellCtxt] tag, arg: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellLoad[I32](ctxt: NullablePointer[XmlShellCtxt] tag, filename: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:166
  Original Name: xmlShellPrintNode/usr/include/libxml2/libxml/debugXML.h:166

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlShellPrintNode[None](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:140
  Original Name: xmlShellPrintXPathError/usr/include/libxml2/libxml/debugXML.h:140

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlShellPrintXPathError[None](errorType: I32, arg: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/debugXML.h:143
  Original Name: xmlShellPrintXPathResult/usr/include/libxml2/libxml/debugXML.h:143

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlShellPrintXPathResult[None](list: NullablePointer[XmlXPathObject] tag)

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
use @xmlShellPwd[I32](ctxt: NullablePointer[XmlShellCtxt] tag, buffer: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellSave[I32](ctxt: NullablePointer[XmlShellCtxt] tag, filename: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellValidate[I32](ctxt: NullablePointer[XmlShellCtxt] tag, dtd: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

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
use @xmlShellWrite[I32](ctxt: NullablePointer[XmlShellCtxt] tag, filename: Pointer[U8] tag, node: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:553
  Original Name: xmlSkipBlankChars/usr/include/libxml2/libxml/parserInternals.h:553

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlSkipBlankChars[I32](ctxt: NullablePointer[XmlParserCtxt] tag)

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
use @xmlSnprintfElementContent[None](buf: Pointer[U8] tag, size: I32, content: NullablePointer[XmlElementContent] tag, englob: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:383
  Original Name: xmlSplitQName/usr/include/libxml2/libxml/parserInternals.h:383

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSplitQName[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, name: Pointer[U8] tag, prefix: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:698
  Original Name: xmlSplitQName2/usr/include/libxml2/libxml/tree.h:698

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlSplitQName2[Pointer[U8]](name: Pointer[U8] tag, prefix: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:701
  Original Name: xmlSplitQName3/usr/include/libxml2/libxml/tree.h:701

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlSplitQName3[Pointer[U8]](name: Pointer[U8] tag, len: Pointer[I32] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:202
  Original Name: xmlSprintfElementContent/usr/include/libxml2/libxml/valid.h:202

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlSprintfElementContent[None](buf: Pointer[U8] tag, content: NullablePointer[XmlElementContent] tag, englob: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:856
  Original Name: xmlStopParser/usr/include/libxml2/libxml/parser.h:856

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
*/
use @xmlStopParser[None](ctxt: NullablePointer[XmlParserCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:78
  Original Name: xmlStrEqual/usr/include/libxml2/libxml/xmlstring.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrEqual[I32](str1: Pointer[U8] tag, str2: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:98
  Original Name: xmlStrPrintf/usr/include/libxml2/libxml/xmlstring.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlStrPrintf[I32](buf: Pointer[U8] tag, len: I32, msg: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:81
  Original Name: xmlStrQEqual/usr/include/libxml2/libxml/xmlstring.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrQEqual[I32](pref: Pointer[U8] tag, name: Pointer[U8] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:71
  Original Name: xmlStrcasecmp/usr/include/libxml2/libxml/xmlstring.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrcasecmp[I32](str1: Pointer[U8] tag, str2: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:61
  Original Name: xmlStrcasestr/usr/include/libxml2/libxml/xmlstring.h:61

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrcasestr[Pointer[U8]](str: Pointer[U8] tag, xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:87
  Original Name: xmlStrcat/usr/include/libxml2/libxml/xmlstring.h:87

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrcat[Pointer[U8]](cur: Pointer[U8] tag, add: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:55
  Original Name: xmlStrchr/usr/include/libxml2/libxml/xmlstring.h:55

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned char) size=8]
*/
use @xmlStrchr[Pointer[U8]](str: Pointer[U8] tag, xmlval: U8)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:64
  Original Name: xmlStrcmp/usr/include/libxml2/libxml/xmlstring.h:64

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrcmp[I32](str1: Pointer[U8] tag, str2: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:41
  Original Name: xmlStrdup/usr/include/libxml2/libxml/xmlstring.h:41

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrdup[Pointer[U8]](cur: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:91
  Original Name: xmlStreamPop/usr/include/libxml2/libxml/pattern.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlStreamPop[I32](stream: NullablePointer[XmlStreamCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:83
  Original Name: xmlStreamPush/usr/include/libxml2/libxml/pattern.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStreamPush[I32](stream: NullablePointer[XmlStreamCtxt] tag, name: Pointer[U8] tag, ns: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:87
  Original Name: xmlStreamPushAttr/usr/include/libxml2/libxml/pattern.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStreamPushAttr[I32](stream: NullablePointer[XmlStreamCtxt] tag, name: Pointer[U8] tag, ns: Pointer[U8] tag)

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
use @xmlStreamPushNode[I32](stream: NullablePointer[XmlStreamCtxt] tag, name: Pointer[U8] tag, ns: Pointer[U8] tag, nodeType: I32)

/*
  Source: /usr/include/libxml2/libxml/pattern.h:93
  Original Name: xmlStreamWantsAnyNode/usr/include/libxml2/libxml/pattern.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f75]
*/
use @xmlStreamWantsAnyNode[I32](stream: NullablePointer[XmlStreamCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:554
  Original Name: xmlStringCurrentChar/usr/include/libxml2/libxml/parserInternals.h:554

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @xmlStringCurrentChar[I32](ctxt: NullablePointer[XmlParserCtxt] tag, cur: Pointer[U8] tag, len: Pointer[I32] tag)

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
use @xmlStringDecodeEntities[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, str: Pointer[U8] tag, what: I32, xmlend: U8, end2: U8, end3: U8)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1055
  Original Name: xmlStringGetNodeList/usr/include/libxml2/libxml/tree.h:1055

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStringGetNodeList[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, value: Pointer[U8] tag)

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
use @xmlStringLenDecodeEntities[Pointer[U8]](ctxt: NullablePointer[XmlParserCtxt] tag, str: Pointer[U8] tag, len: I32, what: I32, xmlend: U8, end2: U8, end3: U8)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1058
  Original Name: xmlStringLenGetNodeList/usr/include/libxml2/libxml/tree.h:1058

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStringLenGetNodeList[NullablePointer[XmlNode]](doc: NullablePointer[XmlDoc] tag, value: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:85
  Original Name: xmlStrlen/usr/include/libxml2/libxml/xmlstring.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrlen[I32](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:74
  Original Name: xmlStrncasecmp/usr/include/libxml2/libxml/xmlstring.h:74

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStrncasecmp[I32](str1: Pointer[U8] tag, str2: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:90
  Original Name: xmlStrncat/usr/include/libxml2/libxml/xmlstring.h:90

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStrncat[Pointer[U8]](cur: Pointer[U8] tag, add: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:94
  Original Name: xmlStrncatNew/usr/include/libxml2/libxml/xmlstring.h:94

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStrncatNew[Pointer[U8]](str1: Pointer[U8] tag, str2: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:67
  Original Name: xmlStrncmp/usr/include/libxml2/libxml/xmlstring.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStrncmp[I32](str1: Pointer[U8] tag, str2: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:43
  Original Name: xmlStrndup/usr/include/libxml2/libxml/xmlstring.h:43

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlStrndup[Pointer[U8]](cur: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:58
  Original Name: xmlStrstr/usr/include/libxml2/libxml/xmlstring.h:58

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlStrstr[Pointer[U8]](str: Pointer[U8] tag, xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:51
  Original Name: xmlStrsub/usr/include/libxml2/libxml/xmlstring.h:51

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlStrsub[Pointer[U8]](str: Pointer[U8] tag, start: I32, len: I32)

/*
  Source: /usr/include/libxml2/libxml/parser.h:852
  Original Name: xmlSubstituteEntitiesDefault/usr/include/libxml2/libxml/parser.h:852

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlSubstituteEntitiesDefault[I32](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:337
  Original Name: xmlSwitchEncoding/usr/include/libxml2/libxml/parserInternals.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [Enumeration size=32,fid: f42]
*/
use @xmlSwitchEncoding[I32](ctxt: NullablePointer[XmlParserCtxt] tag, enc: I32)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:343
  Original Name: xmlSwitchInputEncoding/usr/include/libxml2/libxml/parserInternals.h:343

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=832,fid: f17]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlSwitchInputEncoding[I32](ctxt: NullablePointer[XmlParserCtxt] tag, input: NullablePointer[XmlParserInput] tag, handler: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/parserInternals.h:340
  Original Name: xmlSwitchToEncoding/usr/include/libxml2/libxml/parserInternals.h:340

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=6016,fid: f17]
    [PointerType size=64]->[Struct size=448,fid: f42]
*/
use @xmlSwitchToEncoding[I32](ctxt: NullablePointer[XmlParserCtxt] tag, handler: NullablePointer[XmlCharEncodingHandler] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:982
  Original Name: xmlTextConcat/usr/include/libxml2/libxml/tree.h:982

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlTextConcat[I32](node: NullablePointer[XmlNode] tag, content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:979
  Original Name: xmlTextMerge/usr/include/libxml2/libxml/tree.h:979

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlTextMerge[NullablePointer[XmlNode]](first: NullablePointer[XmlNode] tag, second: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:148
  Original Name: xmlTextReaderAttributeCount/usr/include/libxml2/libxml/xmlreader.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderAttributeCount[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:191
  Original Name: xmlTextReaderBaseUri/usr/include/libxml2/libxml/xmlreader.h:191

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderBaseUri[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:316
  Original Name: xmlTextReaderByteConsumed/usr/include/libxml2/libxml/xmlreader.h:316

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderByteConsumed[I64](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:209
  Original Name: xmlTextReaderClose/usr/include/libxml2/libxml/xmlreader.h:209

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderClose[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:169
  Original Name: xmlTextReaderConstBaseUri/usr/include/libxml2/libxml/xmlreader.h:169

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstBaseUri[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:244
  Original Name: xmlTextReaderConstEncoding/usr/include/libxml2/libxml/xmlreader.h:244

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstEncoding[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:171
  Original Name: xmlTextReaderConstLocalName/usr/include/libxml2/libxml/xmlreader.h:171

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstLocalName[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:173
  Original Name: xmlTextReaderConstName/usr/include/libxml2/libxml/xmlreader.h:173

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstName[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:175
  Original Name: xmlTextReaderConstNamespaceUri/usr/include/libxml2/libxml/xmlreader.h:175

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstNamespaceUri[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:177
  Original Name: xmlTextReaderConstPrefix/usr/include/libxml2/libxml/xmlreader.h:177

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstPrefix[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:181
  Original Name: xmlTextReaderConstString/usr/include/libxml2/libxml/xmlreader.h:181

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderConstString[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:184
  Original Name: xmlTextReaderConstValue/usr/include/libxml2/libxml/xmlreader.h:184

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstValue[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:179
  Original Name: xmlTextReaderConstXmlLang/usr/include/libxml2/libxml/xmlreader.h:179

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstXmlLang[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:307
  Original Name: xmlTextReaderConstXmlVersion/usr/include/libxml2/libxml/xmlreader.h:307

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderConstXmlVersion[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:274
  Original Name: xmlTextReaderCurrentDoc/usr/include/libxml2/libxml/xmlreader.h:274

  Return Value: [PointerType size=64]->[Struct size=1408,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderCurrentDoc[NullablePointer[XmlDoc]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:257
  Original Name: xmlTextReaderCurrentNode/usr/include/libxml2/libxml/xmlreader.h:257

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderCurrentNode[NullablePointer[XmlNode]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:150
  Original Name: xmlTextReaderDepth/usr/include/libxml2/libxml/xmlreader.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderDepth[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:276
  Original Name: xmlTextReaderExpand/usr/include/libxml2/libxml/xmlreader.h:276

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderExpand[NullablePointer[XmlNode]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:214
  Original Name: xmlTextReaderGetAttribute/usr/include/libxml2/libxml/xmlreader.h:214

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderGetAttribute[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:211
  Original Name: xmlTextReaderGetAttributeNo/usr/include/libxml2/libxml/xmlreader.h:211

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderGetAttributeNo[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag, no: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:217
  Original Name: xmlTextReaderGetAttributeNs/usr/include/libxml2/libxml/xmlreader.h:217

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderGetAttributeNs[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag, localName: Pointer[U8] tag, namespaceURI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:417
  Original Name: xmlTextReaderGetErrorHandler/usr/include/libxml2/libxml/xmlreader.h:417

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlTextReaderGetErrorHandler[None](reader: NullablePointer[XmlTextReader] tag, f: NullablePointer[Pointer[None]] tag, arg: NullablePointer[Pointer[None]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:263
  Original Name: xmlTextReaderGetParserColumnNumber/usr/include/libxml2/libxml/xmlreader.h:263

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderGetParserColumnNumber[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:260
  Original Name: xmlTextReaderGetParserLineNumber/usr/include/libxml2/libxml/xmlreader.h:260

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderGetParserLineNumber[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:254
  Original Name: xmlTextReaderGetParserProp/usr/include/libxml2/libxml/xmlreader.h:254

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderGetParserProp[I32](reader: NullablePointer[XmlTextReader] tag, prop: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:221
  Original Name: xmlTextReaderGetRemainder/usr/include/libxml2/libxml/xmlreader.h:221

  Return Value: [PointerType size=64]->[Struct size=512,fid: f15]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderGetRemainder[NullablePointer[XmlParserInputBuffer]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:152
  Original Name: xmlTextReaderHasAttributes/usr/include/libxml2/libxml/xmlreader.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderHasAttributes[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:154
  Original Name: xmlTextReaderHasValue/usr/include/libxml2/libxml/xmlreader.h:154

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderHasValue[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:156
  Original Name: xmlTextReaderIsDefault/usr/include/libxml2/libxml/xmlreader.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderIsDefault[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:158
  Original Name: xmlTextReaderIsEmptyElement/usr/include/libxml2/libxml/xmlreader.h:158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderIsEmptyElement[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:166
  Original Name: xmlTextReaderIsNamespaceDecl/usr/include/libxml2/libxml/xmlreader.h:166

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderIsNamespaceDecl[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:282
  Original Name: xmlTextReaderIsValid/usr/include/libxml2/libxml/xmlreader.h:282

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderIsValid[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:193
  Original Name: xmlTextReaderLocalName/usr/include/libxml2/libxml/xmlreader.h:193

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderLocalName[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:407
  Original Name: xmlTextReaderLocatorBaseURI/usr/include/libxml2/libxml/xmlreader.h:407

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlTextReaderLocatorBaseURI[Pointer[U8]](locator: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:405
  Original Name: xmlTextReaderLocatorLineNumber/usr/include/libxml2/libxml/xmlreader.h:405

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlTextReaderLocatorLineNumber[I32](locator: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:223
  Original Name: xmlTextReaderLookupNamespace/usr/include/libxml2/libxml/xmlreader.h:223

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderLookupNamespace[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag, prefix: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:229
  Original Name: xmlTextReaderMoveToAttribute/usr/include/libxml2/libxml/xmlreader.h:229

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderMoveToAttribute[I32](reader: NullablePointer[XmlTextReader] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:226
  Original Name: xmlTextReaderMoveToAttributeNo/usr/include/libxml2/libxml/xmlreader.h:226

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderMoveToAttributeNo[I32](reader: NullablePointer[XmlTextReader] tag, no: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:232
  Original Name: xmlTextReaderMoveToAttributeNs/usr/include/libxml2/libxml/xmlreader.h:232

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderMoveToAttributeNs[I32](reader: NullablePointer[XmlTextReader] tag, localName: Pointer[U8] tag, namespaceURI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:240
  Original Name: xmlTextReaderMoveToElement/usr/include/libxml2/libxml/xmlreader.h:240

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderMoveToElement[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:236
  Original Name: xmlTextReaderMoveToFirstAttribute/usr/include/libxml2/libxml/xmlreader.h:236

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderMoveToFirstAttribute[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:238
  Original Name: xmlTextReaderMoveToNextAttribute/usr/include/libxml2/libxml/xmlreader.h:238

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderMoveToNextAttribute[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:195
  Original Name: xmlTextReaderName/usr/include/libxml2/libxml/xmlreader.h:195

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderName[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:197
  Original Name: xmlTextReaderNamespaceUri/usr/include/libxml2/libxml/xmlreader.h:197

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderNamespaceUri[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:278
  Original Name: xmlTextReaderNext/usr/include/libxml2/libxml/xmlreader.h:278

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderNext[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:280
  Original Name: xmlTextReaderNextSibling/usr/include/libxml2/libxml/xmlreader.h:280

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderNextSibling[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:160
  Original Name: xmlTextReaderNodeType/usr/include/libxml2/libxml/xmlreader.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderNodeType[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:242
  Original Name: xmlTextReaderNormalization/usr/include/libxml2/libxml/xmlreader.h:242

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderNormalization[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:199
  Original Name: xmlTextReaderPrefix/usr/include/libxml2/libxml/xmlreader.h:199

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderPrefix[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:266
  Original Name: xmlTextReaderPreserve/usr/include/libxml2/libxml/xmlreader.h:266

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderPreserve[NullablePointer[XmlNode]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:269
  Original Name: xmlTextReaderPreservePattern/usr/include/libxml2/libxml/xmlreader.h:269

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextReaderPreservePattern[I32](reader: NullablePointer[XmlTextReader] tag, pattern: Pointer[U8] tag, namespaces: Pointer[Pointer[U8]] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:162
  Original Name: xmlTextReaderQuoteChar/usr/include/libxml2/libxml/xmlreader.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderQuoteChar[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:129
  Original Name: xmlTextReaderRead/usr/include/libxml2/libxml/xmlreader.h:129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderRead[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:142
  Original Name: xmlTextReaderReadAttributeValue/usr/include/libxml2/libxml/xmlreader.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderReadAttributeValue[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:133
  Original Name: xmlTextReaderReadInnerXml/usr/include/libxml2/libxml/xmlreader.h:133

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderReadInnerXml[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:136
  Original Name: xmlTextReaderReadOuterXml/usr/include/libxml2/libxml/xmlreader.h:136

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderReadOuterXml[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:164
  Original Name: xmlTextReaderReadState/usr/include/libxml2/libxml/xmlreader.h:164

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderReadState[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:140
  Original Name: xmlTextReaderReadString/usr/include/libxml2/libxml/xmlreader.h:140

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderReadString[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:293
  Original Name: xmlTextReaderRelaxNGSetSchema/usr/include/libxml2/libxml/xmlreader.h:293

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f76]
*/
use @xmlTextReaderRelaxNGSetSchema[I32](reader: NullablePointer[XmlTextReader] tag, schema: NullablePointer[XmlRelaxNG] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:285
  Original Name: xmlTextReaderRelaxNGValidate/usr/include/libxml2/libxml/xmlreader.h:285

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextReaderRelaxNGValidate[I32](reader: NullablePointer[XmlTextReader] tag, rng: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:288
  Original Name: xmlTextReaderRelaxNGValidateCtxt/usr/include/libxml2/libxml/xmlreader.h:288

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f76]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderRelaxNGValidateCtxt[I32](reader: NullablePointer[XmlTextReader] tag, ctxt: NullablePointer[XmlRelaxNGValidCtxt] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:296
  Original Name: xmlTextReaderSchemaValidate/usr/include/libxml2/libxml/xmlreader.h:296

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextReaderSchemaValidate[I32](reader: NullablePointer[XmlTextReader] tag, xsd: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:299
  Original Name: xmlTextReaderSchemaValidateCtxt/usr/include/libxml2/libxml/xmlreader.h:299

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=,fid: f82]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderSchemaValidateCtxt[I32](reader: NullablePointer[XmlTextReader] tag, ctxt: NullablePointer[XmlSchemaValidCtxt] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:409
  Original Name: xmlTextReaderSetErrorHandler/usr/include/libxml2/libxml/xmlreader.h:409

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlTextReaderSetErrorHandler[None](reader: NullablePointer[XmlTextReader] tag, f: Pointer[None] tag, arg: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:250
  Original Name: xmlTextReaderSetParserProp/usr/include/libxml2/libxml/xmlreader.h:250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlTextReaderSetParserProp[I32](reader: NullablePointer[XmlTextReader] tag, prop: I32, value: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:303
  Original Name: xmlTextReaderSetSchema/usr/include/libxml2/libxml/xmlreader.h:303

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[Struct size=1280,fid: f77]
*/
use @xmlTextReaderSetSchema[I32](reader: NullablePointer[XmlTextReader] tag, schema: NullablePointer[XmlSchema] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:413
  Original Name: xmlTextReaderSetStructuredErrorHandler/usr/include/libxml2/libxml/xmlreader.h:413

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlTextReaderSetStructuredErrorHandler[None](reader: NullablePointer[XmlTextReader] tag, f: Pointer[None] tag, arg: Pointer[None] tag)

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
use @xmlTextReaderSetup[I32](reader: NullablePointer[XmlTextReader] tag, input: NullablePointer[XmlParserInputBuffer] tag, uRL: Pointer[U8] tag, encoding: Pointer[U8] tag, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:309
  Original Name: xmlTextReaderStandalone/usr/include/libxml2/libxml/xmlreader.h:309

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderStandalone[I32](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:203
  Original Name: xmlTextReaderValue/usr/include/libxml2/libxml/xmlreader.h:203

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderValue[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlreader.h:201
  Original Name: xmlTextReaderXmlLang/usr/include/libxml2/libxml/xmlreader.h:201

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f83]
*/
use @xmlTextReaderXmlLang[Pointer[U8]](reader: NullablePointer[XmlTextReader] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:196
  Original Name: xmlTextWriterEndAttribute/usr/include/libxml2/libxml/xmlwriter.h:196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndAttribute[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:281
  Original Name: xmlTextWriterEndCDATA/usr/include/libxml2/libxml/xmlwriter.h:281

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndCDATA[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:68
  Original Name: xmlTextWriterEndComment/usr/include/libxml2/libxml/xmlwriter.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndComment[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:306
  Original Name: xmlTextWriterEndDTD/usr/include/libxml2/libxml/xmlwriter.h:306

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndDTD[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:375
  Original Name: xmlTextWriterEndDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndDTDAttlist[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:345
  Original Name: xmlTextWriterEndDTDElement/usr/include/libxml2/libxml/xmlwriter.h:345

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndDTDElement[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:405
  Original Name: xmlTextWriterEndDTDEntity/usr/include/libxml2/libxml/xmlwriter.h:405

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndDTDEntity[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:60
  Original Name: xmlTextWriterEndDocument/usr/include/libxml2/libxml/xmlwriter.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndDocument[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:96
  Original Name: xmlTextWriterEndElement/usr/include/libxml2/libxml/xmlwriter.h:96

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndElement[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:250
  Original Name: xmlTextWriterEndPI/usr/include/libxml2/libxml/xmlwriter.h:250

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterEndPI[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:480
  Original Name: xmlTextWriterFlush/usr/include/libxml2/libxml/xmlwriter.h:480

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterFlush[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:97
  Original Name: xmlTextWriterFullEndElement/usr/include/libxml2/libxml/xmlwriter.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterFullEndElement[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:468
  Original Name: xmlTextWriterSetIndent/usr/include/libxml2/libxml/xmlwriter.h:468

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
*/
use @xmlTextWriterSetIndent[I32](writer: NullablePointer[XmlTextWriter] tag, indent: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:470
  Original Name: xmlTextWriterSetIndentString/usr/include/libxml2/libxml/xmlwriter.h:470

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterSetIndentString[I32](writer: NullablePointer[XmlTextWriter] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:474
  Original Name: xmlTextWriterSetQuoteChar/usr/include/libxml2/libxml/xmlwriter.h:474

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterSetQuoteChar[I32](writer: NullablePointer[XmlTextWriter] tag, quotechar: U8)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:186
  Original Name: xmlTextWriterStartAttribute/usr/include/libxml2/libxml/xmlwriter.h:186

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartAttribute[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag)

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
use @xmlTextWriterStartAttributeNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:280
  Original Name: xmlTextWriterStartCDATA/usr/include/libxml2/libxml/xmlwriter.h:280

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterStartCDATA[I32](writer: NullablePointer[XmlTextWriter] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:66
  Original Name: xmlTextWriterStartComment/usr/include/libxml2/libxml/xmlwriter.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
*/
use @xmlTextWriterStartComment[I32](writer: NullablePointer[XmlTextWriter] tag)

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
use @xmlTextWriterStartDTD[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:373
  Original Name: xmlTextWriterStartDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:373

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartDTDAttlist[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:343
  Original Name: xmlTextWriterStartDTDElement/usr/include/libxml2/libxml/xmlwriter.h:343

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartDTDElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:403
  Original Name: xmlTextWriterStartDTDEntity/usr/include/libxml2/libxml/xmlwriter.h:403

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartDTDEntity[I32](writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: Pointer[U8] tag)

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
use @xmlTextWriterStartDocument[I32](writer: NullablePointer[XmlTextWriter] tag, version: Pointer[U8] tag, encoding: Pointer[U8] tag, standalone: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:87
  Original Name: xmlTextWriterStartElement/usr/include/libxml2/libxml/xmlwriter.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag)

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
use @xmlTextWriterStartElementNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:248
  Original Name: xmlTextWriterStartPI/usr/include/libxml2/libxml/xmlwriter.h:248

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterStartPI[I32](writer: NullablePointer[XmlTextWriter] tag, target: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:213
  Original Name: xmlTextWriterWriteAttribute/usr/include/libxml2/libxml/xmlwriter.h:213

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteAttribute[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteAttributeNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteBase64[I32](writer: NullablePointer[XmlTextWriter] tag, data: Pointer[U8] tag, start: I32, len: I32)

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
use @xmlTextWriterWriteBinHex[I32](writer: NullablePointer[XmlTextWriter] tag, data: Pointer[U8] tag, start: I32, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:295
  Original Name: xmlTextWriterWriteCDATA/usr/include/libxml2/libxml/xmlwriter.h:295

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteCDATA[I32](writer: NullablePointer[XmlTextWriter] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:78
  Original Name: xmlTextWriterWriteComment/usr/include/libxml2/libxml/xmlwriter.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteComment[I32](writer: NullablePointer[XmlTextWriter] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTD[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag, subset: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:392
  Original Name: xmlTextWriterWriteDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:392

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteDTDAttlist[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:362
  Original Name: xmlTextWriterWriteDTDElement/usr/include/libxml2/libxml/xmlwriter.h:362

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteDTDElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTDEntity[I32](writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag, ndataid: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTDExternalEntity[I32](writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag, ndataid: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTDExternalEntityContents[I32](writer: NullablePointer[XmlTextWriter] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag, ndataid: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTDInternalEntity[I32](writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteDTDNotation[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:114
  Original Name: xmlTextWriterWriteElement/usr/include/libxml2/libxml/xmlwriter.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, content: Pointer[U8] tag)

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
use @xmlTextWriterWriteElementNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:203
  Original Name: xmlTextWriterWriteFormatAttribute/usr/include/libxml2/libxml/xmlwriter.h:203

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatAttribute[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, format: Pointer[U8] tag, ...)

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
use @xmlTextWriterWriteFormatAttributeNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:287
  Original Name: xmlTextWriterWriteFormatCDATA/usr/include/libxml2/libxml/xmlwriter.h:287

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatCDATA[I32](writer: NullablePointer[XmlTextWriter] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:70
  Original Name: xmlTextWriterWriteFormatComment/usr/include/libxml2/libxml/xmlwriter.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatComment[I32](writer: NullablePointer[XmlTextWriter] tag, format: Pointer[U8] tag, ...)

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
use @xmlTextWriterWriteFormatDTD[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, pubid: Pointer[U8] tag, sysid: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:382
  Original Name: xmlTextWriterWriteFormatDTDAttlist/usr/include/libxml2/libxml/xmlwriter.h:382

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatDTDAttlist[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:352
  Original Name: xmlTextWriterWriteFormatDTDElement/usr/include/libxml2/libxml/xmlwriter.h:352

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatDTDElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, format: Pointer[U8] tag, ...)

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
use @xmlTextWriterWriteFormatDTDInternalEntity[I32](writer: NullablePointer[XmlTextWriter] tag, pe: I32, name: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:104
  Original Name: xmlTextWriterWriteFormatElement/usr/include/libxml2/libxml/xmlwriter.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatElement[I32](writer: NullablePointer[XmlTextWriter] tag, name: Pointer[U8] tag, format: Pointer[U8] tag, ...)

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
use @xmlTextWriterWriteFormatElementNS[I32](writer: NullablePointer[XmlTextWriter] tag, prefix: Pointer[U8] tag, name: Pointer[U8] tag, namespaceURI: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:256
  Original Name: xmlTextWriterWriteFormatPI/usr/include/libxml2/libxml/xmlwriter.h:256

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatPI[I32](writer: NullablePointer[XmlTextWriter] tag, target: Pointer[U8] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:148
  Original Name: xmlTextWriterWriteFormatRaw/usr/include/libxml2/libxml/xmlwriter.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatRaw[I32](writer: NullablePointer[XmlTextWriter] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:161
  Original Name: xmlTextWriterWriteFormatString/usr/include/libxml2/libxml/xmlwriter.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlTextWriterWriteFormatString[I32](writer: NullablePointer[XmlTextWriter] tag, format: Pointer[U8] tag, ...)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:266
  Original Name: xmlTextWriterWritePI/usr/include/libxml2/libxml/xmlwriter.h:266

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWritePI[I32](writer: NullablePointer[XmlTextWriter] tag, target: Pointer[U8] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:159
  Original Name: xmlTextWriterWriteRaw/usr/include/libxml2/libxml/xmlwriter.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteRaw[I32](writer: NullablePointer[XmlTextWriter] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:156
  Original Name: xmlTextWriterWriteRawLen/usr/include/libxml2/libxml/xmlwriter.h:156

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlTextWriterWriteRawLen[I32](writer: NullablePointer[XmlTextWriter] tag, content: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlwriter.h:172
  Original Name: xmlTextWriterWriteString/usr/include/libxml2/libxml/xmlwriter.h:172

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f87]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlTextWriterWriteString[I32](writer: NullablePointer[XmlTextWriter] tag, content: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:305
  Original Name: xmlThrDefBufferAllocScheme/usr/include/libxml2/libxml/globals.h:305

  Return Value: [Enumeration size=32,fid: f16]

  Arguments:
    [Enumeration size=32,fid: f16]
*/
use @xmlThrDefBufferAllocScheme[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:314
  Original Name: xmlThrDefDefaultBufferSize/usr/include/libxml2/libxml/globals.h:314

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefDefaultBufferSize[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:186
  Original Name: xmlThrDefDeregisterNodeDefault/usr/include/libxml2/libxml/globals.h:186

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefDeregisterNodeDefault[Pointer[None]](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:339
  Original Name: xmlThrDefDoValidityCheckingDefaultValue/usr/include/libxml2/libxml/globals.h:339

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefDoValidityCheckingDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:380
  Original Name: xmlThrDefGetWarningsDefaultValue/usr/include/libxml2/libxml/globals.h:380

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefGetWarningsDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:389
  Original Name: xmlThrDefIndentTreeOutput/usr/include/libxml2/libxml/globals.h:389

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefIndentTreeOutput[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:407
  Original Name: xmlThrDefKeepBlanksDefaultValue/usr/include/libxml2/libxml/globals.h:407

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefKeepBlanksDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:416
  Original Name: xmlThrDefLineNumbersDefaultValue/usr/include/libxml2/libxml/globals.h:416

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefLineNumbersDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:425
  Original Name: xmlThrDefLoadExtDtdDefaultValue/usr/include/libxml2/libxml/globals.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefLoadExtDtdDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:189
  Original Name: xmlThrDefOutputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:189

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefOutputBufferCreateFilenameDefault[Pointer[None]](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:434
  Original Name: xmlThrDefParserDebugEntities/usr/include/libxml2/libxml/globals.h:434

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefParserDebugEntities[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:191
  Original Name: xmlThrDefParserInputBufferCreateFilenameDefault/usr/include/libxml2/libxml/globals.h:191

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefParserInputBufferCreateFilenameDefault[Pointer[None]](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:451
  Original Name: xmlThrDefPedanticParserDefaultValue/usr/include/libxml2/libxml/globals.h:451

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefPedanticParserDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:184
  Original Name: xmlThrDefRegisterNodeDefault/usr/include/libxml2/libxml/globals.h:184

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefRegisterNodeDefault[Pointer[None]](func: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:460
  Original Name: xmlThrDefSaveNoEmptyTags/usr/include/libxml2/libxml/globals.h:460

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefSaveNoEmptyTags[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:179
  Original Name: xmlThrDefSetGenericErrorFunc/usr/include/libxml2/libxml/globals.h:179

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefSetGenericErrorFunc[None](ctx: Pointer[None] tag, handler: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:181
  Original Name: xmlThrDefSetStructuredErrorFunc/usr/include/libxml2/libxml/globals.h:181

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlThrDefSetStructuredErrorFunc[None](ctx: Pointer[None] tag, handler: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/globals.h:469
  Original Name: xmlThrDefSubstituteEntitiesDefaultValue/usr/include/libxml2/libxml/globals.h:469

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlThrDefSubstituteEntitiesDefaultValue[I32](v: I32)

/*
  Source: /usr/include/libxml2/libxml/globals.h:398
  Original Name: xmlThrDefTreeIndentString/usr/include/libxml2/libxml/globals.h:398

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlThrDefTreeIndentString[Pointer[U8]](v: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:26
  Original Name: xmlUCSIsAegeanNumbers/usr/include/libxml2/libxml/xmlunicode.h:26

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsAegeanNumbers[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:27
  Original Name: xmlUCSIsAlphabeticPresentationForms/usr/include/libxml2/libxml/xmlunicode.h:27

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsAlphabeticPresentationForms[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:28
  Original Name: xmlUCSIsArabic/usr/include/libxml2/libxml/xmlunicode.h:28

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsArabic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:29
  Original Name: xmlUCSIsArabicPresentationFormsA/usr/include/libxml2/libxml/xmlunicode.h:29

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsArabicPresentationFormsA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:30
  Original Name: xmlUCSIsArabicPresentationFormsB/usr/include/libxml2/libxml/xmlunicode.h:30

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsArabicPresentationFormsB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:31
  Original Name: xmlUCSIsArmenian/usr/include/libxml2/libxml/xmlunicode.h:31

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsArmenian[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:32
  Original Name: xmlUCSIsArrows/usr/include/libxml2/libxml/xmlunicode.h:32

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsArrows[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:33
  Original Name: xmlUCSIsBasicLatin/usr/include/libxml2/libxml/xmlunicode.h:33

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBasicLatin[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:34
  Original Name: xmlUCSIsBengali/usr/include/libxml2/libxml/xmlunicode.h:34

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBengali[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:155
  Original Name: xmlUCSIsBlock/usr/include/libxml2/libxml/xmlunicode.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlUCSIsBlock[I32](code: I32, block: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:35
  Original Name: xmlUCSIsBlockElements/usr/include/libxml2/libxml/xmlunicode.h:35

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBlockElements[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:36
  Original Name: xmlUCSIsBopomofo/usr/include/libxml2/libxml/xmlunicode.h:36

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBopomofo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:37
  Original Name: xmlUCSIsBopomofoExtended/usr/include/libxml2/libxml/xmlunicode.h:37

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBopomofoExtended[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:38
  Original Name: xmlUCSIsBoxDrawing/usr/include/libxml2/libxml/xmlunicode.h:38

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBoxDrawing[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:39
  Original Name: xmlUCSIsBraillePatterns/usr/include/libxml2/libxml/xmlunicode.h:39

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBraillePatterns[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:40
  Original Name: xmlUCSIsBuhid/usr/include/libxml2/libxml/xmlunicode.h:40

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsBuhid[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:41
  Original Name: xmlUCSIsByzantineMusicalSymbols/usr/include/libxml2/libxml/xmlunicode.h:41

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsByzantineMusicalSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:42
  Original Name: xmlUCSIsCJKCompatibility/usr/include/libxml2/libxml/xmlunicode.h:42

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKCompatibility[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:43
  Original Name: xmlUCSIsCJKCompatibilityForms/usr/include/libxml2/libxml/xmlunicode.h:43

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKCompatibilityForms[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:44
  Original Name: xmlUCSIsCJKCompatibilityIdeographs/usr/include/libxml2/libxml/xmlunicode.h:44

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKCompatibilityIdeographs[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:45
  Original Name: xmlUCSIsCJKCompatibilityIdeographsSupplement/usr/include/libxml2/libxml/xmlunicode.h:45

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKCompatibilityIdeographsSupplement[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:46
  Original Name: xmlUCSIsCJKRadicalsSupplement/usr/include/libxml2/libxml/xmlunicode.h:46

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKRadicalsSupplement[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:47
  Original Name: xmlUCSIsCJKSymbolsandPunctuation/usr/include/libxml2/libxml/xmlunicode.h:47

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKSymbolsandPunctuation[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:48
  Original Name: xmlUCSIsCJKUnifiedIdeographs/usr/include/libxml2/libxml/xmlunicode.h:48

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKUnifiedIdeographs[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:49
  Original Name: xmlUCSIsCJKUnifiedIdeographsExtensionA/usr/include/libxml2/libxml/xmlunicode.h:49

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKUnifiedIdeographsExtensionA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:50
  Original Name: xmlUCSIsCJKUnifiedIdeographsExtensionB/usr/include/libxml2/libxml/xmlunicode.h:50

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCJKUnifiedIdeographsExtensionB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:194
  Original Name: xmlUCSIsCat/usr/include/libxml2/libxml/xmlunicode.h:194

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlUCSIsCat[I32](code: I32, cat: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:157
  Original Name: xmlUCSIsCatC/usr/include/libxml2/libxml/xmlunicode.h:157

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatC[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:158
  Original Name: xmlUCSIsCatCc/usr/include/libxml2/libxml/xmlunicode.h:158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatCc[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:159
  Original Name: xmlUCSIsCatCf/usr/include/libxml2/libxml/xmlunicode.h:159

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatCf[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:160
  Original Name: xmlUCSIsCatCo/usr/include/libxml2/libxml/xmlunicode.h:160

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatCo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:161
  Original Name: xmlUCSIsCatCs/usr/include/libxml2/libxml/xmlunicode.h:161

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatCs[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:162
  Original Name: xmlUCSIsCatL/usr/include/libxml2/libxml/xmlunicode.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatL[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:163
  Original Name: xmlUCSIsCatLl/usr/include/libxml2/libxml/xmlunicode.h:163

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatLl[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:164
  Original Name: xmlUCSIsCatLm/usr/include/libxml2/libxml/xmlunicode.h:164

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatLm[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:165
  Original Name: xmlUCSIsCatLo/usr/include/libxml2/libxml/xmlunicode.h:165

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatLo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:166
  Original Name: xmlUCSIsCatLt/usr/include/libxml2/libxml/xmlunicode.h:166

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatLt[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:167
  Original Name: xmlUCSIsCatLu/usr/include/libxml2/libxml/xmlunicode.h:167

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatLu[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:168
  Original Name: xmlUCSIsCatM/usr/include/libxml2/libxml/xmlunicode.h:168

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatM[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:169
  Original Name: xmlUCSIsCatMc/usr/include/libxml2/libxml/xmlunicode.h:169

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatMc[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:170
  Original Name: xmlUCSIsCatMe/usr/include/libxml2/libxml/xmlunicode.h:170

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatMe[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:171
  Original Name: xmlUCSIsCatMn/usr/include/libxml2/libxml/xmlunicode.h:171

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatMn[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:172
  Original Name: xmlUCSIsCatN/usr/include/libxml2/libxml/xmlunicode.h:172

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatN[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:173
  Original Name: xmlUCSIsCatNd/usr/include/libxml2/libxml/xmlunicode.h:173

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatNd[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:174
  Original Name: xmlUCSIsCatNl/usr/include/libxml2/libxml/xmlunicode.h:174

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatNl[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:175
  Original Name: xmlUCSIsCatNo/usr/include/libxml2/libxml/xmlunicode.h:175

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatNo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:176
  Original Name: xmlUCSIsCatP/usr/include/libxml2/libxml/xmlunicode.h:176

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatP[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:177
  Original Name: xmlUCSIsCatPc/usr/include/libxml2/libxml/xmlunicode.h:177

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPc[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:178
  Original Name: xmlUCSIsCatPd/usr/include/libxml2/libxml/xmlunicode.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPd[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:179
  Original Name: xmlUCSIsCatPe/usr/include/libxml2/libxml/xmlunicode.h:179

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPe[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:180
  Original Name: xmlUCSIsCatPf/usr/include/libxml2/libxml/xmlunicode.h:180

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPf[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:181
  Original Name: xmlUCSIsCatPi/usr/include/libxml2/libxml/xmlunicode.h:181

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPi[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:182
  Original Name: xmlUCSIsCatPo/usr/include/libxml2/libxml/xmlunicode.h:182

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:183
  Original Name: xmlUCSIsCatPs/usr/include/libxml2/libxml/xmlunicode.h:183

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatPs[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:184
  Original Name: xmlUCSIsCatS/usr/include/libxml2/libxml/xmlunicode.h:184

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatS[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:185
  Original Name: xmlUCSIsCatSc/usr/include/libxml2/libxml/xmlunicode.h:185

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatSc[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:186
  Original Name: xmlUCSIsCatSk/usr/include/libxml2/libxml/xmlunicode.h:186

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatSk[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:187
  Original Name: xmlUCSIsCatSm/usr/include/libxml2/libxml/xmlunicode.h:187

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatSm[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:188
  Original Name: xmlUCSIsCatSo/usr/include/libxml2/libxml/xmlunicode.h:188

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatSo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:189
  Original Name: xmlUCSIsCatZ/usr/include/libxml2/libxml/xmlunicode.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatZ[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:190
  Original Name: xmlUCSIsCatZl/usr/include/libxml2/libxml/xmlunicode.h:190

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatZl[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:191
  Original Name: xmlUCSIsCatZp/usr/include/libxml2/libxml/xmlunicode.h:191

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatZp[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:192
  Original Name: xmlUCSIsCatZs/usr/include/libxml2/libxml/xmlunicode.h:192

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCatZs[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:51
  Original Name: xmlUCSIsCherokee/usr/include/libxml2/libxml/xmlunicode.h:51

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCherokee[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:52
  Original Name: xmlUCSIsCombiningDiacriticalMarks/usr/include/libxml2/libxml/xmlunicode.h:52

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCombiningDiacriticalMarks[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:53
  Original Name: xmlUCSIsCombiningDiacriticalMarksforSymbols/usr/include/libxml2/libxml/xmlunicode.h:53

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCombiningDiacriticalMarksforSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:54
  Original Name: xmlUCSIsCombiningHalfMarks/usr/include/libxml2/libxml/xmlunicode.h:54

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCombiningHalfMarks[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:55
  Original Name: xmlUCSIsCombiningMarksforSymbols/usr/include/libxml2/libxml/xmlunicode.h:55

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCombiningMarksforSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:56
  Original Name: xmlUCSIsControlPictures/usr/include/libxml2/libxml/xmlunicode.h:56

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsControlPictures[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:57
  Original Name: xmlUCSIsCurrencySymbols/usr/include/libxml2/libxml/xmlunicode.h:57

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCurrencySymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:58
  Original Name: xmlUCSIsCypriotSyllabary/usr/include/libxml2/libxml/xmlunicode.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCypriotSyllabary[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:59
  Original Name: xmlUCSIsCyrillic/usr/include/libxml2/libxml/xmlunicode.h:59

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCyrillic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:60
  Original Name: xmlUCSIsCyrillicSupplement/usr/include/libxml2/libxml/xmlunicode.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsCyrillicSupplement[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:61
  Original Name: xmlUCSIsDeseret/usr/include/libxml2/libxml/xmlunicode.h:61

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsDeseret[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:62
  Original Name: xmlUCSIsDevanagari/usr/include/libxml2/libxml/xmlunicode.h:62

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsDevanagari[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:63
  Original Name: xmlUCSIsDingbats/usr/include/libxml2/libxml/xmlunicode.h:63

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsDingbats[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:64
  Original Name: xmlUCSIsEnclosedAlphanumerics/usr/include/libxml2/libxml/xmlunicode.h:64

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsEnclosedAlphanumerics[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:65
  Original Name: xmlUCSIsEnclosedCJKLettersandMonths/usr/include/libxml2/libxml/xmlunicode.h:65

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsEnclosedCJKLettersandMonths[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:66
  Original Name: xmlUCSIsEthiopic/usr/include/libxml2/libxml/xmlunicode.h:66

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsEthiopic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:67
  Original Name: xmlUCSIsGeneralPunctuation/usr/include/libxml2/libxml/xmlunicode.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGeneralPunctuation[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:68
  Original Name: xmlUCSIsGeometricShapes/usr/include/libxml2/libxml/xmlunicode.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGeometricShapes[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:69
  Original Name: xmlUCSIsGeorgian/usr/include/libxml2/libxml/xmlunicode.h:69

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGeorgian[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:70
  Original Name: xmlUCSIsGothic/usr/include/libxml2/libxml/xmlunicode.h:70

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGothic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:71
  Original Name: xmlUCSIsGreek/usr/include/libxml2/libxml/xmlunicode.h:71

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGreek[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:72
  Original Name: xmlUCSIsGreekExtended/usr/include/libxml2/libxml/xmlunicode.h:72

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGreekExtended[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:73
  Original Name: xmlUCSIsGreekandCoptic/usr/include/libxml2/libxml/xmlunicode.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGreekandCoptic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:74
  Original Name: xmlUCSIsGujarati/usr/include/libxml2/libxml/xmlunicode.h:74

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGujarati[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:75
  Original Name: xmlUCSIsGurmukhi/usr/include/libxml2/libxml/xmlunicode.h:75

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsGurmukhi[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:76
  Original Name: xmlUCSIsHalfwidthandFullwidthForms/usr/include/libxml2/libxml/xmlunicode.h:76

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHalfwidthandFullwidthForms[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:77
  Original Name: xmlUCSIsHangulCompatibilityJamo/usr/include/libxml2/libxml/xmlunicode.h:77

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHangulCompatibilityJamo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:78
  Original Name: xmlUCSIsHangulJamo/usr/include/libxml2/libxml/xmlunicode.h:78

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHangulJamo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:79
  Original Name: xmlUCSIsHangulSyllables/usr/include/libxml2/libxml/xmlunicode.h:79

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHangulSyllables[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:80
  Original Name: xmlUCSIsHanunoo/usr/include/libxml2/libxml/xmlunicode.h:80

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHanunoo[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:81
  Original Name: xmlUCSIsHebrew/usr/include/libxml2/libxml/xmlunicode.h:81

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHebrew[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:82
  Original Name: xmlUCSIsHighPrivateUseSurrogates/usr/include/libxml2/libxml/xmlunicode.h:82

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHighPrivateUseSurrogates[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:83
  Original Name: xmlUCSIsHighSurrogates/usr/include/libxml2/libxml/xmlunicode.h:83

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHighSurrogates[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:84
  Original Name: xmlUCSIsHiragana/usr/include/libxml2/libxml/xmlunicode.h:84

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsHiragana[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:85
  Original Name: xmlUCSIsIPAExtensions/usr/include/libxml2/libxml/xmlunicode.h:85

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsIPAExtensions[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:86
  Original Name: xmlUCSIsIdeographicDescriptionCharacters/usr/include/libxml2/libxml/xmlunicode.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsIdeographicDescriptionCharacters[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:87
  Original Name: xmlUCSIsKanbun/usr/include/libxml2/libxml/xmlunicode.h:87

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKanbun[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:88
  Original Name: xmlUCSIsKangxiRadicals/usr/include/libxml2/libxml/xmlunicode.h:88

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKangxiRadicals[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:89
  Original Name: xmlUCSIsKannada/usr/include/libxml2/libxml/xmlunicode.h:89

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKannada[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:90
  Original Name: xmlUCSIsKatakana/usr/include/libxml2/libxml/xmlunicode.h:90

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKatakana[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:91
  Original Name: xmlUCSIsKatakanaPhoneticExtensions/usr/include/libxml2/libxml/xmlunicode.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKatakanaPhoneticExtensions[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:92
  Original Name: xmlUCSIsKhmer/usr/include/libxml2/libxml/xmlunicode.h:92

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKhmer[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:93
  Original Name: xmlUCSIsKhmerSymbols/usr/include/libxml2/libxml/xmlunicode.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsKhmerSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:94
  Original Name: xmlUCSIsLao/usr/include/libxml2/libxml/xmlunicode.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLao[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:95
  Original Name: xmlUCSIsLatin1Supplement/usr/include/libxml2/libxml/xmlunicode.h:95

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLatin1Supplement[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:96
  Original Name: xmlUCSIsLatinExtendedA/usr/include/libxml2/libxml/xmlunicode.h:96

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLatinExtendedA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:98
  Original Name: xmlUCSIsLatinExtendedAdditional/usr/include/libxml2/libxml/xmlunicode.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLatinExtendedAdditional[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:97
  Original Name: xmlUCSIsLatinExtendedB/usr/include/libxml2/libxml/xmlunicode.h:97

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLatinExtendedB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:99
  Original Name: xmlUCSIsLetterlikeSymbols/usr/include/libxml2/libxml/xmlunicode.h:99

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLetterlikeSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:100
  Original Name: xmlUCSIsLimbu/usr/include/libxml2/libxml/xmlunicode.h:100

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLimbu[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:101
  Original Name: xmlUCSIsLinearBIdeograms/usr/include/libxml2/libxml/xmlunicode.h:101

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLinearBIdeograms[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:102
  Original Name: xmlUCSIsLinearBSyllabary/usr/include/libxml2/libxml/xmlunicode.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLinearBSyllabary[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:103
  Original Name: xmlUCSIsLowSurrogates/usr/include/libxml2/libxml/xmlunicode.h:103

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsLowSurrogates[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:104
  Original Name: xmlUCSIsMalayalam/usr/include/libxml2/libxml/xmlunicode.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMalayalam[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:105
  Original Name: xmlUCSIsMathematicalAlphanumericSymbols/usr/include/libxml2/libxml/xmlunicode.h:105

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMathematicalAlphanumericSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:106
  Original Name: xmlUCSIsMathematicalOperators/usr/include/libxml2/libxml/xmlunicode.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMathematicalOperators[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:107
  Original Name: xmlUCSIsMiscellaneousMathematicalSymbolsA/usr/include/libxml2/libxml/xmlunicode.h:107

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMiscellaneousMathematicalSymbolsA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:108
  Original Name: xmlUCSIsMiscellaneousMathematicalSymbolsB/usr/include/libxml2/libxml/xmlunicode.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMiscellaneousMathematicalSymbolsB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:109
  Original Name: xmlUCSIsMiscellaneousSymbols/usr/include/libxml2/libxml/xmlunicode.h:109

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMiscellaneousSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:110
  Original Name: xmlUCSIsMiscellaneousSymbolsandArrows/usr/include/libxml2/libxml/xmlunicode.h:110

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMiscellaneousSymbolsandArrows[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:111
  Original Name: xmlUCSIsMiscellaneousTechnical/usr/include/libxml2/libxml/xmlunicode.h:111

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMiscellaneousTechnical[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:112
  Original Name: xmlUCSIsMongolian/usr/include/libxml2/libxml/xmlunicode.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMongolian[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:113
  Original Name: xmlUCSIsMusicalSymbols/usr/include/libxml2/libxml/xmlunicode.h:113

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMusicalSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:114
  Original Name: xmlUCSIsMyanmar/usr/include/libxml2/libxml/xmlunicode.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsMyanmar[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:115
  Original Name: xmlUCSIsNumberForms/usr/include/libxml2/libxml/xmlunicode.h:115

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsNumberForms[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:116
  Original Name: xmlUCSIsOgham/usr/include/libxml2/libxml/xmlunicode.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsOgham[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:117
  Original Name: xmlUCSIsOldItalic/usr/include/libxml2/libxml/xmlunicode.h:117

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsOldItalic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:118
  Original Name: xmlUCSIsOpticalCharacterRecognition/usr/include/libxml2/libxml/xmlunicode.h:118

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsOpticalCharacterRecognition[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:119
  Original Name: xmlUCSIsOriya/usr/include/libxml2/libxml/xmlunicode.h:119

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsOriya[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:120
  Original Name: xmlUCSIsOsmanya/usr/include/libxml2/libxml/xmlunicode.h:120

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsOsmanya[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:121
  Original Name: xmlUCSIsPhoneticExtensions/usr/include/libxml2/libxml/xmlunicode.h:121

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsPhoneticExtensions[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:122
  Original Name: xmlUCSIsPrivateUse/usr/include/libxml2/libxml/xmlunicode.h:122

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsPrivateUse[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:123
  Original Name: xmlUCSIsPrivateUseArea/usr/include/libxml2/libxml/xmlunicode.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsPrivateUseArea[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:124
  Original Name: xmlUCSIsRunic/usr/include/libxml2/libxml/xmlunicode.h:124

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsRunic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:125
  Original Name: xmlUCSIsShavian/usr/include/libxml2/libxml/xmlunicode.h:125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsShavian[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:126
  Original Name: xmlUCSIsSinhala/usr/include/libxml2/libxml/xmlunicode.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSinhala[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:127
  Original Name: xmlUCSIsSmallFormVariants/usr/include/libxml2/libxml/xmlunicode.h:127

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSmallFormVariants[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:128
  Original Name: xmlUCSIsSpacingModifierLetters/usr/include/libxml2/libxml/xmlunicode.h:128

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSpacingModifierLetters[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:129
  Original Name: xmlUCSIsSpecials/usr/include/libxml2/libxml/xmlunicode.h:129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSpecials[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:130
  Original Name: xmlUCSIsSuperscriptsandSubscripts/usr/include/libxml2/libxml/xmlunicode.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSuperscriptsandSubscripts[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:131
  Original Name: xmlUCSIsSupplementalArrowsA/usr/include/libxml2/libxml/xmlunicode.h:131

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSupplementalArrowsA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:132
  Original Name: xmlUCSIsSupplementalArrowsB/usr/include/libxml2/libxml/xmlunicode.h:132

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSupplementalArrowsB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:133
  Original Name: xmlUCSIsSupplementalMathematicalOperators/usr/include/libxml2/libxml/xmlunicode.h:133

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSupplementalMathematicalOperators[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:134
  Original Name: xmlUCSIsSupplementaryPrivateUseAreaA/usr/include/libxml2/libxml/xmlunicode.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSupplementaryPrivateUseAreaA[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:135
  Original Name: xmlUCSIsSupplementaryPrivateUseAreaB/usr/include/libxml2/libxml/xmlunicode.h:135

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSupplementaryPrivateUseAreaB[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:136
  Original Name: xmlUCSIsSyriac/usr/include/libxml2/libxml/xmlunicode.h:136

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsSyriac[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:137
  Original Name: xmlUCSIsTagalog/usr/include/libxml2/libxml/xmlunicode.h:137

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTagalog[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:138
  Original Name: xmlUCSIsTagbanwa/usr/include/libxml2/libxml/xmlunicode.h:138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTagbanwa[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:139
  Original Name: xmlUCSIsTags/usr/include/libxml2/libxml/xmlunicode.h:139

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTags[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:140
  Original Name: xmlUCSIsTaiLe/usr/include/libxml2/libxml/xmlunicode.h:140

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTaiLe[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:141
  Original Name: xmlUCSIsTaiXuanJingSymbols/usr/include/libxml2/libxml/xmlunicode.h:141

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTaiXuanJingSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:142
  Original Name: xmlUCSIsTamil/usr/include/libxml2/libxml/xmlunicode.h:142

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTamil[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:143
  Original Name: xmlUCSIsTelugu/usr/include/libxml2/libxml/xmlunicode.h:143

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTelugu[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:144
  Original Name: xmlUCSIsThaana/usr/include/libxml2/libxml/xmlunicode.h:144

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsThaana[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:145
  Original Name: xmlUCSIsThai/usr/include/libxml2/libxml/xmlunicode.h:145

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsThai[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:146
  Original Name: xmlUCSIsTibetan/usr/include/libxml2/libxml/xmlunicode.h:146

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsTibetan[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:147
  Original Name: xmlUCSIsUgaritic/usr/include/libxml2/libxml/xmlunicode.h:147

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsUgaritic[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:148
  Original Name: xmlUCSIsUnifiedCanadianAboriginalSyllabics/usr/include/libxml2/libxml/xmlunicode.h:148

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsUnifiedCanadianAboriginalSyllabics[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:149
  Original Name: xmlUCSIsVariationSelectors/usr/include/libxml2/libxml/xmlunicode.h:149

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsVariationSelectors[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:150
  Original Name: xmlUCSIsVariationSelectorsSupplement/usr/include/libxml2/libxml/xmlunicode.h:150

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsVariationSelectorsSupplement[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:151
  Original Name: xmlUCSIsYiRadicals/usr/include/libxml2/libxml/xmlunicode.h:151

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsYiRadicals[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:152
  Original Name: xmlUCSIsYiSyllables/usr/include/libxml2/libxml/xmlunicode.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsYiSyllables[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlunicode.h:153
  Original Name: xmlUCSIsYijingHexagramSymbols/usr/include/libxml2/libxml/xmlunicode.h:153

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlUCSIsYijingHexagramSymbols[I32](code: I32)

/*
  Source: /usr/include/libxml2/libxml/uri.h:83
  Original Name: xmlURIEscape/usr/include/libxml2/libxml/uri.h:83

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlURIEscape[Pointer[U8]](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:74
  Original Name: xmlURIEscapeStr/usr/include/libxml2/libxml/uri.h:74

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlURIEscapeStr[Pointer[U8]](str: Pointer[U8] tag, list: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/uri.h:77
  Original Name: xmlURIUnescapeString/usr/include/libxml2/libxml/uri.h:77

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlURIUnescapeString[Pointer[U8]](str: Pointer[U8] tag, len: I32, target: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:134
  Original Name: xmlUTF8Charcmp/usr/include/libxml2/libxml/xmlstring.h:134

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUTF8Charcmp[I32](utf1: Pointer[U8] tag, utf2: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:132
  Original Name: xmlUTF8Size/usr/include/libxml2/libxml/xmlstring.h:132

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUTF8Size[I32](utf: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:130
  Original Name: xmlUTF8Strlen/usr/include/libxml2/libxml/xmlstring.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUTF8Strlen[I32](utf: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:123
  Original Name: xmlUTF8Strloc/usr/include/libxml2/libxml/xmlstring.h:123

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUTF8Strloc[I32](utf: Pointer[U8] tag, utfchar: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:117
  Original Name: xmlUTF8Strndup/usr/include/libxml2/libxml/xmlstring.h:117

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlUTF8Strndup[Pointer[U8]](utf: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:120
  Original Name: xmlUTF8Strpos/usr/include/libxml2/libxml/xmlstring.h:120

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlUTF8Strpos[Pointer[U8]](utf: Pointer[U8] tag, pos: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:114
  Original Name: xmlUTF8Strsize/usr/include/libxml2/libxml/xmlstring.h:114

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlUTF8Strsize[I32](utf: Pointer[U8] tag, len: I32)

/*
  Source: /usr/include/libxml2/libxml/xmlstring.h:126
  Original Name: xmlUTF8Strsub/usr/include/libxml2/libxml/xmlstring.h:126

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlUTF8Strsub[Pointer[U8]](utf: Pointer[U8] tag, start: I32, len: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:977
  Original Name: xmlUnlinkNode/usr/include/libxml2/libxml/tree.h:977

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlUnlinkNode[None](cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/threads.h:65
  Original Name: xmlUnlockLibrary/usr/include/libxml2/libxml/threads.h:65

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlUnlockLibrary[None]()

/*
  Source: /usr/include/libxml2/libxml/tree.h:1125
  Original Name: xmlUnsetNsProp/usr/include/libxml2/libxml/tree.h:1125

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUnsetNsProp[I32](node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:1129
  Original Name: xmlUnsetProp/usr/include/libxml2/libxml/tree.h:1129

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlUnsetProp[I32](node: NullablePointer[XmlNode] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:436
  Original Name: xmlValidBuildContentModel/usr/include/libxml2/libxml/valid.h:436

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
use @xmlValidBuildContentModel[I32](ctxt: NullablePointer[XmlValidCtxt] tag, elem: NullablePointer[XmlElement] tag)

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
use @xmlValidCtxtNormalizeAttributeValue[Pointer[U8]](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:412
  Original Name: xmlValidGetPotentialChildren/usr/include/libxml2/libxml/valid.h:412

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlValidGetPotentialChildren[I32](ctree: NullablePointer[XmlElementContent] tag, names: Pointer[Pointer[U8]] tag, len: Pointer[I32] tag, max: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:418
  Original Name: xmlValidGetValidElements/usr/include/libxml2/libxml/valid.h:418

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidGetValidElements[I32](prev: NullablePointer[XmlNode] tag, next: NullablePointer[XmlNode] tag, names: Pointer[Pointer[U8]] tag, max: I32)

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
use @xmlValidNormalizeAttributeValue[Pointer[U8]](doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, name: Pointer[U8] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:333
  Original Name: xmlValidateAttributeDecl/usr/include/libxml2/libxml/valid.h:333

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlValidateAttributeDecl[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, attr: NullablePointer[XmlAttribute] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:337
  Original Name: xmlValidateAttributeValue/usr/include/libxml2/libxml/valid.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [Enumeration size=32,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateAttributeValue[I32](xmltype: I32, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:351
  Original Name: xmlValidateDocument/usr/include/libxml2/libxml/valid.h:351

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlValidateDocument[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:375
  Original Name: xmlValidateDocumentFinal/usr/include/libxml2/libxml/valid.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlValidateDocumentFinal[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:344
  Original Name: xmlValidateDtd/usr/include/libxml2/libxml/valid.h:344

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=1024,fid: f16]
*/
use @xmlValidateDtd[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, dtd: NullablePointer[XmlDtd] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:348
  Original Name: xmlValidateDtdFinal/usr/include/libxml2/libxml/valid.h:348

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlValidateDtdFinal[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:354
  Original Name: xmlValidateElement/usr/include/libxml2/libxml/valid.h:354

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlValidateElement[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:318
  Original Name: xmlValidateElementDecl/usr/include/libxml2/libxml/valid.h:318

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=896,fid: f16]
*/
use @xmlValidateElementDecl[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlElement] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:676
  Original Name: xmlValidateNCName/usr/include/libxml2/libxml/tree.h:676

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidateNCName[I32](value: Pointer[U8] tag, space: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:688
  Original Name: xmlValidateNMToken/usr/include/libxml2/libxml/tree.h:688

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidateNMToken[I32](value: Pointer[U8] tag, space: I32)

/*
  Source: /usr/include/libxml2/libxml/tree.h:685
  Original Name: xmlValidateName/usr/include/libxml2/libxml/tree.h:685

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidateName[I32](value: Pointer[U8] tag, space: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:423
  Original Name: xmlValidateNameValue/usr/include/libxml2/libxml/valid.h:423

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateNameValue[I32](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:425
  Original Name: xmlValidateNamesValue/usr/include/libxml2/libxml/valid.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateNamesValue[I32](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:427
  Original Name: xmlValidateNmtokenValue/usr/include/libxml2/libxml/valid.h:427

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateNmtokenValue[I32](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:429
  Original Name: xmlValidateNmtokensValue/usr/include/libxml2/libxml/valid.h:429

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateNmtokensValue[I32](value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:340
  Original Name: xmlValidateNotationDecl/usr/include/libxml2/libxml/valid.h:340

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=192,fid: f16]
*/
use @xmlValidateNotationDecl[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, nota: NullablePointer[XmlNotation] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:381
  Original Name: xmlValidateNotationUse/usr/include/libxml2/libxml/valid.h:381

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlValidateNotationUse[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, notationName: Pointer[U8] tag)

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
use @xmlValidateOneAttribute[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, attr: NullablePointer[XmlAttr] tag, value: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:358
  Original Name: xmlValidateOneElement/usr/include/libxml2/libxml/valid.h:358

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlValidateOneElement[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag)

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
use @xmlValidateOneNamespace[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, prefix: Pointer[U8] tag, ns: NullablePointer[XmlNs] tag, value: Pointer[U8] tag)

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
use @xmlValidatePopElement[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, qname: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/valid.h:445
  Original Name: xmlValidatePushCData/usr/include/libxml2/libxml/valid.h:445

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidatePushCData[I32](ctxt: NullablePointer[XmlValidCtxt] tag, data: Pointer[U8] tag, len: I32)

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
use @xmlValidatePushElement[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag, elem: NullablePointer[XmlNode] tag, qname: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/tree.h:682
  Original Name: xmlValidateQName/usr/include/libxml2/libxml/tree.h:682

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @xmlValidateQName[I32](value: Pointer[U8] tag, space: I32)

/*
  Source: /usr/include/libxml2/libxml/valid.h:315
  Original Name: xmlValidateRoot/usr/include/libxml2/libxml/valid.h:315

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=896,fid: f28]
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlValidateRoot[I32](ctxt: NullablePointer[XmlValidCtxt] tag, doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:119
  Original Name: xmlXIncludeFreeContext/usr/include/libxml2/libxml/xinclude.h:119

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
*/
use @xmlXIncludeFreeContext[None](ctxt: NullablePointer[XmlXIncludeCtxt] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:114
  Original Name: xmlXIncludeNewContext/usr/include/libxml2/libxml/xinclude.h:114

  Return Value: [PointerType size=64]->[Struct size=,fid: f80]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlXIncludeNewContext[NullablePointer[XmlXIncludeCtxt]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:93
  Original Name: xmlXIncludeProcess/usr/include/libxml2/libxml/xinclude.h:93

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlXIncludeProcess[I32](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:95
  Original Name: xmlXIncludeProcessFlags/usr/include/libxml2/libxml/xinclude.h:95

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlXIncludeProcessFlags[I32](doc: NullablePointer[XmlDoc] tag, flags: I32)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:98
  Original Name: xmlXIncludeProcessFlagsData/usr/include/libxml2/libxml/xinclude.h:98

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlXIncludeProcessFlagsData[I32](doc: NullablePointer[XmlDoc] tag, flags: I32, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:121
  Original Name: xmlXIncludeProcessNode/usr/include/libxml2/libxml/xinclude.h:121

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXIncludeProcessNode[I32](ctxt: NullablePointer[XmlXIncludeCtxt] tag, tree: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:106
  Original Name: xmlXIncludeProcessTree/usr/include/libxml2/libxml/xinclude.h:106

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXIncludeProcessTree[I32](tree: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:108
  Original Name: xmlXIncludeProcessTreeFlags/usr/include/libxml2/libxml/xinclude.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
*/
use @xmlXIncludeProcessTreeFlags[I32](tree: NullablePointer[XmlNode] tag, flags: I32)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:102
  Original Name: xmlXIncludeProcessTreeFlagsData/usr/include/libxml2/libxml/xinclude.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlXIncludeProcessTreeFlagsData[I32](tree: NullablePointer[XmlNode] tag, flags: I32, data: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xinclude.h:116
  Original Name: xmlXIncludeSetFlags/usr/include/libxml2/libxml/xinclude.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f80]
    [FundamentalType(int) size=32]
*/
use @xmlXIncludeSetFlags[I32](ctxt: NullablePointer[XmlXIncludeCtxt] tag, flags: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:555
  Original Name: xmlXPathAddValues/usr/include/libxml2/libxml/xpathInternals.h:555

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathAddValues[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:620
  Original Name: xmlXPathBooleanFunction/usr/include/libxml2/libxml/xpathInternals.h:620

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathBooleanFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:473
  Original Name: xmlXPathCastBooleanToNumber/usr/include/libxml2/libxml/xpath.h:473

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlXPathCastBooleanToNumber[F64](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:484
  Original Name: xmlXPathCastBooleanToString/usr/include/libxml2/libxml/xpath.h:484

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlXPathCastBooleanToString[Pointer[U8]](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:468
  Original Name: xmlXPathCastNodeSetToBoolean/usr/include/libxml2/libxml/xpath.h:468

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathCastNodeSetToBoolean[I32](ns: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:479
  Original Name: xmlXPathCastNodeSetToNumber/usr/include/libxml2/libxml/xpath.h:479

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathCastNodeSetToNumber[F64](ns: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:490
  Original Name: xmlXPathCastNodeSetToString/usr/include/libxml2/libxml/xpath.h:490

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathCastNodeSetToString[Pointer[U8]](ns: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:477
  Original Name: xmlXPathCastNodeToNumber/usr/include/libxml2/libxml/xpath.h:477

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathCastNodeToNumber[F64](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:488
  Original Name: xmlXPathCastNodeToString/usr/include/libxml2/libxml/xpath.h:488

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathCastNodeToString[Pointer[U8]](node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:464
  Original Name: xmlXPathCastNumberToBoolean/usr/include/libxml2/libxml/xpath.h:464

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @xmlXPathCastNumberToBoolean[I32](xmlval: F64)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:486
  Original Name: xmlXPathCastNumberToString/usr/include/libxml2/libxml/xpath.h:486

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @xmlXPathCastNumberToString[Pointer[U8]](xmlval: F64)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:466
  Original Name: xmlXPathCastStringToBoolean/usr/include/libxml2/libxml/xpath.h:466

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathCastStringToBoolean[I32](xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:475
  Original Name: xmlXPathCastStringToNumber/usr/include/libxml2/libxml/xpath.h:475

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathCastStringToNumber[F64](xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:470
  Original Name: xmlXPathCastToBoolean/usr/include/libxml2/libxml/xpath.h:470

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathCastToBoolean[I32](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:481
  Original Name: xmlXPathCastToNumber/usr/include/libxml2/libxml/xpath.h:481

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathCastToNumber[F64](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:492
  Original Name: xmlXPathCastToString/usr/include/libxml2/libxml/xpath.h:492

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathCastToString[Pointer[U8]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:618
  Original Name: xmlXPathCeilingFunction/usr/include/libxml2/libxml/xpathInternals.h:618

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathCeilingFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:458
  Original Name: xmlXPathCmpNodes/usr/include/libxml2/libxml/xpath.h:458

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathCmpNodes[I32](node1: NullablePointer[XmlNode] tag, node2: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:553
  Original Name: xmlXPathCompareValues/usr/include/libxml2/libxml/xpathInternals.h:553

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @xmlXPathCompareValues[I32](ctxt: NullablePointer[XmlXPathParserContext] tag, inf: I32, strict: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:538
  Original Name: xmlXPathCompile/usr/include/libxml2/libxml/xpath.h:538

  Return Value: [PointerType size=64]->[Struct size=,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathCompile[NullablePointer[XmlXPathCompExpr]](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:543
  Original Name: xmlXPathCompiledEval/usr/include/libxml2/libxml/xpath.h:543

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathCompiledEval[NullablePointer[XmlXPathObject]](comp: NullablePointer[XmlXPathCompExpr] tag, ctx: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:546
  Original Name: xmlXPathCompiledEvalToBoolean/usr/include/libxml2/libxml/xpath.h:546

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathCompiledEvalToBoolean[I32](comp: NullablePointer[XmlXPathCompExpr] tag, ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:603
  Original Name: xmlXPathConcatFunction/usr/include/libxml2/libxml/xpathInternals.h:603

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathConcatFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:604
  Original Name: xmlXPathContainsFunction/usr/include/libxml2/libxml/xpathInternals.h:604

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathContainsFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

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
use @xmlXPathContextSetCache[I32](ctxt: NullablePointer[XmlXPathContext] tag, active: I32, value: I32, options: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:495
  Original Name: xmlXPathConvertBoolean/usr/include/libxml2/libxml/xpath.h:495

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathConvertBoolean[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:497
  Original Name: xmlXPathConvertNumber/usr/include/libxml2/libxml/xpath.h:497

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathConvertNumber[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:499
  Original Name: xmlXPathConvertString/usr/include/libxml2/libxml/xpath.h:499

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathConvertString[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:597
  Original Name: xmlXPathCountFunction/usr/include/libxml2/libxml/xpathInternals.h:597

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathCountFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:540
  Original Name: xmlXPathCtxtCompile/usr/include/libxml2/libxml/xpath.h:540

  Return Value: [PointerType size=64]->[Struct size=,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathCtxtCompile[NullablePointer[XmlXPathCompExpr]](ctxt: NullablePointer[XmlXPathContext] tag, str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:367
  Original Name: xmlXPathDebugDumpCompExpr/usr/include/libxml2/libxml/xpathInternals.h:367

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathDebugDumpCompExpr[None](output: NullablePointer[IOFILE] tag, comp: NullablePointer[XmlXPathCompExpr] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:363
  Original Name: xmlXPathDebugDumpObject/usr/include/libxml2/libxml/xpathInternals.h:363

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f8]
    [PointerType size=64]->[Struct size=576,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathDebugDumpObject[None](output: NullablePointer[IOFILE] tag, cur: NullablePointer[XmlXPathObject] tag, depth: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:378
  Original Name: xmlXPathDifference/usr/include/libxml2/libxml/xpathInternals.h:378

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathDifference[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:387
  Original Name: xmlXPathDistinct/usr/include/libxml2/libxml/xpathInternals.h:387

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathDistinct[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:385
  Original Name: xmlXPathDistinctSorted/usr/include/libxml2/libxml/xpathInternals.h:385

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathDistinctSorted[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:558
  Original Name: xmlXPathDivValues/usr/include/libxml2/libxml/xpathInternals.h:558

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathDivValues[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:551
  Original Name: xmlXPathEqualValues/usr/include/libxml2/libxml/xpathInternals.h:551

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathEqualValues[I32](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:358
  Original Name: xmlXPathErr/usr/include/libxml2/libxml/xpathInternals.h:358

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathErr[None](ctxt: NullablePointer[XmlXPathParserContext] tag, xmlerror: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:526
  Original Name: xmlXPathEval/usr/include/libxml2/libxml/xpath.h:526

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathEval[NullablePointer[XmlXPathObject]](str: Pointer[U8] tag, ctx: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:519
  Original Name: xmlXPathEvalExpr/usr/include/libxml2/libxml/xpathInternals.h:519

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathEvalExpr[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:529
  Original Name: xmlXPathEvalExpression/usr/include/libxml2/libxml/xpath.h:529

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathEvalExpression[NullablePointer[XmlXPathObject]](str: Pointer[U8] tag, ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:532
  Original Name: xmlXPathEvalPredicate/usr/include/libxml2/libxml/xpath.h:532

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathEvalPredicate[I32](ctxt: NullablePointer[XmlXPathContext] tag, res: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:531
  Original Name: xmlXPathEvaluatePredicateResult/usr/include/libxml2/libxml/xpathInternals.h:531

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathEvaluatePredicateResult[I32](ctxt: NullablePointer[XmlXPathParserContext] tag, res: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:613
  Original Name: xmlXPathFalseFunction/usr/include/libxml2/libxml/xpathInternals.h:613

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathFalseFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:617
  Original Name: xmlXPathFloorFunction/usr/include/libxml2/libxml/xpathInternals.h:617

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathFloorFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:549
  Original Name: xmlXPathFreeCompExpr/usr/include/libxml2/libxml/xpath.h:549

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f65]
*/
use @xmlXPathFreeCompExpr[None](comp: NullablePointer[XmlXPathCompExpr] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:507
  Original Name: xmlXPathFreeContext/usr/include/libxml2/libxml/xpath.h:507

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathFreeContext[None](ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:454
  Original Name: xmlXPathFreeNodeSet/usr/include/libxml2/libxml/xpath.h:454

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathFreeNodeSet[None](obj: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:452
  Original Name: xmlXPathFreeNodeSetList/usr/include/libxml2/libxml/xpath.h:452

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathFreeNodeSetList[None](obj: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:448
  Original Name: xmlXPathFreeObject/usr/include/libxml2/libxml/xpath.h:448

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathFreeObject[None](obj: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:478
  Original Name: xmlXPathFreeParserContext/usr/include/libxml2/libxml/xpathInternals.h:478

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathFreeParserContext[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:453
  Original Name: xmlXPathFunctionLookup/usr/include/libxml2/libxml/xpathInternals.h:453

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathFunctionLookup[Pointer[None]](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:456
  Original Name: xmlXPathFunctionLookupNS/usr/include/libxml2/libxml/xpathInternals.h:456

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathFunctionLookupNS[Pointer[None]](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, nsuri: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:390
  Original Name: xmlXPathHasSameNodes/usr/include/libxml2/libxml/xpathInternals.h:390

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathHasSameNodes[I32](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:598
  Original Name: xmlXPathIdFunction/usr/include/libxml2/libxml/xpathInternals.h:598

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathIdFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:553
  Original Name: xmlXPathInit/usr/include/libxml2/libxml/xpath.h:553

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @xmlXPathInit[None]()

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:381
  Original Name: xmlXPathIntersection/usr/include/libxml2/libxml/xpathInternals.h:381

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathIntersection[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:557
  Original Name: xmlXPathIsInf/usr/include/libxml2/libxml/xpath.h:557

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @xmlXPathIsInf[I32](xmlval: F64)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:555
  Original Name: xmlXPathIsNaN/usr/include/libxml2/libxml/xpath.h:555

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @xmlXPathIsNaN[I32](xmlval: F64)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:561
  Original Name: xmlXPathIsNodeType/usr/include/libxml2/libxml/xpathInternals.h:561

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathIsNodeType[I32](name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:614
  Original Name: xmlXPathLangFunction/usr/include/libxml2/libxml/xpathInternals.h:614

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathLangFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:595
  Original Name: xmlXPathLastFunction/usr/include/libxml2/libxml/xpathInternals.h:595

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathLastFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:403
  Original Name: xmlXPathLeading/usr/include/libxml2/libxml/xpathInternals.h:403

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathLeading[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:397
  Original Name: xmlXPathLeadingSorted/usr/include/libxml2/libxml/xpathInternals.h:397

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathLeadingSorted[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:599
  Original Name: xmlXPathLocalNameFunction/usr/include/libxml2/libxml/xpathInternals.h:599

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathLocalNameFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:559
  Original Name: xmlXPathModValues/usr/include/libxml2/libxml/xpathInternals.h:559

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathModValues[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:557
  Original Name: xmlXPathMultValues/usr/include/libxml2/libxml/xpathInternals.h:557

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathMultValues[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:600
  Original Name: xmlXPathNamespaceURIFunction/usr/include/libxml2/libxml/xpathInternals.h:600

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathNamespaceURIFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:498
  Original Name: xmlXPathNewBoolean/usr/include/libxml2/libxml/xpathInternals.h:498

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @xmlXPathNewBoolean[NullablePointer[XmlXPathObject]](xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:490
  Original Name: xmlXPathNewCString/usr/include/libxml2/libxml/xpathInternals.h:490

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlXPathNewCString[NullablePointer[XmlXPathObject]](xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:505
  Original Name: xmlXPathNewContext/usr/include/libxml2/libxml/xpath.h:505

  Return Value: [PointerType size=64]->[Struct size=3008,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlXPathNewContext[NullablePointer[XmlXPathContext]](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:496
  Original Name: xmlXPathNewFloat/usr/include/libxml2/libxml/xpathInternals.h:496

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @xmlXPathNewFloat[NullablePointer[XmlXPathObject]](xmlval: F64)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:500
  Original Name: xmlXPathNewNodeSet/usr/include/libxml2/libxml/xpathInternals.h:500

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNewNodeSet[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:545
  Original Name: xmlXPathNewNodeSetList/usr/include/libxml2/libxml/xpathInternals.h:545

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathNewNodeSetList[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:475
  Original Name: xmlXPathNewParserContext/usr/include/libxml2/libxml/xpathInternals.h:475

  Return Value: [PointerType size=64]->[Struct size=704,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathNewParserContext[NullablePointer[XmlXPathParserContext]](str: Pointer[U8] tag, ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:488
  Original Name: xmlXPathNewString/usr/include/libxml2/libxml/xpathInternals.h:488

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathNewString[NullablePointer[XmlXPathObject]](xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:502
  Original Name: xmlXPathNewValueTree/usr/include/libxml2/libxml/xpathInternals.h:502

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNewValueTree[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:588
  Original Name: xmlXPathNextAncestor/usr/include/libxml2/libxml/xpathInternals.h:588

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextAncestor[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:576
  Original Name: xmlXPathNextAncestorOrSelf/usr/include/libxml2/libxml/xpathInternals.h:576

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextAncestorOrSelf[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:584
  Original Name: xmlXPathNextAttribute/usr/include/libxml2/libxml/xpathInternals.h:584

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextAttribute[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:568
  Original Name: xmlXPathNextChild/usr/include/libxml2/libxml/xpathInternals.h:568

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextChild[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:570
  Original Name: xmlXPathNextDescendant/usr/include/libxml2/libxml/xpathInternals.h:570

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextDescendant[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:572
  Original Name: xmlXPathNextDescendantOrSelf/usr/include/libxml2/libxml/xpathInternals.h:572

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextDescendantOrSelf[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:580
  Original Name: xmlXPathNextFollowing/usr/include/libxml2/libxml/xpathInternals.h:580

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextFollowing[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:578
  Original Name: xmlXPathNextFollowingSibling/usr/include/libxml2/libxml/xpathInternals.h:578

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextFollowingSibling[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:582
  Original Name: xmlXPathNextNamespace/usr/include/libxml2/libxml/xpathInternals.h:582

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextNamespace[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:574
  Original Name: xmlXPathNextParent/usr/include/libxml2/libxml/xpathInternals.h:574

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextParent[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:586
  Original Name: xmlXPathNextPreceding/usr/include/libxml2/libxml/xpathInternals.h:586

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextPreceding[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:590
  Original Name: xmlXPathNextPrecedingSibling/usr/include/libxml2/libxml/xpathInternals.h:590

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextPrecedingSibling[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:566
  Original Name: xmlXPathNextSelf/usr/include/libxml2/libxml/xpathInternals.h:566

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNextSelf[NullablePointer[XmlNode]](ctxt: NullablePointer[XmlXPathParserContext] tag, cur: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:522
  Original Name: xmlXPathNodeEval/usr/include/libxml2/libxml/xpath.h:522

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathNodeEval[NullablePointer[XmlXPathObject]](node: NullablePointer[XmlNode] tag, str: Pointer[U8] tag, ctx: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:400
  Original Name: xmlXPathNodeLeading/usr/include/libxml2/libxml/xpathInternals.h:400

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeLeading[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:394
  Original Name: xmlXPathNodeLeadingSorted/usr/include/libxml2/libxml/xpathInternals.h:394

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeLeadingSorted[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:504
  Original Name: xmlXPathNodeSetAdd/usr/include/libxml2/libxml/xpathInternals.h:504

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeSetAdd[I32](cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:510
  Original Name: xmlXPathNodeSetAddNs/usr/include/libxml2/libxml/xpathInternals.h:510

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlXPathNodeSetAddNs[I32](cur: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag, ns: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:507
  Original Name: xmlXPathNodeSetAddUnique/usr/include/libxml2/libxml/xpathInternals.h:507

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeSetAddUnique[I32](cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:375
  Original Name: xmlXPathNodeSetContains/usr/include/libxml2/libxml/xpathInternals.h:375

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeSetContains[I32](cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:450
  Original Name: xmlXPathNodeSetCreate/usr/include/libxml2/libxml/xpath.h:450

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeSetCreate[NullablePointer[XmlNodeSet]](xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:539
  Original Name: xmlXPathNodeSetDel/usr/include/libxml2/libxml/xpathInternals.h:539

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeSetDel[None](cur: NullablePointer[XmlNodeSet] tag, xmlval: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:625
  Original Name: xmlXPathNodeSetFreeNs/usr/include/libxml2/libxml/xpathInternals.h:625

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f16]
*/
use @xmlXPathNodeSetFreeNs[None](ns: NullablePointer[XmlNs] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:536
  Original Name: xmlXPathNodeSetMerge/usr/include/libxml2/libxml/xpathInternals.h:536

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathNodeSetMerge[NullablePointer[XmlNodeSet]](val1: NullablePointer[XmlNodeSet] tag, val2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:542
  Original Name: xmlXPathNodeSetRemove/usr/include/libxml2/libxml/xpathInternals.h:542

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathNodeSetRemove[None](cur: NullablePointer[XmlNodeSet] tag, xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:514
  Original Name: xmlXPathNodeSetSort/usr/include/libxml2/libxml/xpathInternals.h:514

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathNodeSetSort[None](set: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:413
  Original Name: xmlXPathNodeTrailing/usr/include/libxml2/libxml/xpathInternals.h:413

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeTrailing[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:407
  Original Name: xmlXPathNodeTrailingSorted/usr/include/libxml2/libxml/xpathInternals.h:407

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPathNodeTrailingSorted[NullablePointer[XmlNodeSet]](nodes: NullablePointer[XmlNodeSet] tag, node: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:609
  Original Name: xmlXPathNormalizeFunction/usr/include/libxml2/libxml/xpathInternals.h:609

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathNormalizeFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:552
  Original Name: xmlXPathNotEqualValues/usr/include/libxml2/libxml/xpathInternals.h:552

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathNotEqualValues[I32](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:611
  Original Name: xmlXPathNotFunction/usr/include/libxml2/libxml/xpathInternals.h:611

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathNotFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:429
  Original Name: xmlXPathNsLookup/usr/include/libxml2/libxml/xpathInternals.h:429

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathNsLookup[Pointer[U8]](ctxt: NullablePointer[XmlXPathContext] tag, prefix: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:615
  Original Name: xmlXPathNumberFunction/usr/include/libxml2/libxml/xpathInternals.h:615

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathNumberFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:456
  Original Name: xmlXPathObjectCopy/usr/include/libxml2/libxml/xpath.h:456

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathObjectCopy[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:517
  Original Name: xmlXPathOrderDocElems/usr/include/libxml2/libxml/xpath.h:517

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
*/
use @xmlXPathOrderDocElems[I64](doc: NullablePointer[XmlDoc] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:523
  Original Name: xmlXPathParseNCName/usr/include/libxml2/libxml/xpathInternals.h:523

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathParseNCName[Pointer[U8]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:521
  Original Name: xmlXPathParseName/usr/include/libxml2/libxml/xpathInternals.h:521

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathParseName[Pointer[U8]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:104
  Original Name: xmlXPathPopBoolean/usr/include/libxml2/libxml/xpathInternals.h:104

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathPopBoolean[I32](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:112
  Original Name: xmlXPathPopExternal/usr/include/libxml2/libxml/xpathInternals.h:112

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathPopExternal[Pointer[None]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:110
  Original Name: xmlXPathPopNodeSet/usr/include/libxml2/libxml/xpathInternals.h:110

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathPopNodeSet[NullablePointer[XmlNodeSet]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:106
  Original Name: xmlXPathPopNumber/usr/include/libxml2/libxml/xpathInternals.h:106

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathPopNumber[F64](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:108
  Original Name: xmlXPathPopString/usr/include/libxml2/libxml/xpathInternals.h:108

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathPopString[Pointer[U8]](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:596
  Original Name: xmlXPathPositionFunction/usr/include/libxml2/libxml/xpathInternals.h:596

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathPositionFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:534
  Original Name: xmlXPathRegisterAllFunctions/usr/include/libxml2/libxml/xpathInternals.h:534

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathRegisterAllFunctions[None](ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:435
  Original Name: xmlXPathRegisterFunc/usr/include/libxml2/libxml/xpathInternals.h:435

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @xmlXPathRegisterFunc[I32](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:344
  Original Name: xmlXPathRegisterFuncLookup/usr/include/libxml2/libxml/xpathInternals.h:344

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlXPathRegisterFuncLookup[None](ctxt: NullablePointer[XmlXPathContext] tag, f: Pointer[None] tag, funcCtxt: Pointer[None] tag)

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
use @xmlXPathRegisterFuncNS[I32](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, nsuri: Pointer[U8] tag, f: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:425
  Original Name: xmlXPathRegisterNs/usr/include/libxml2/libxml/xpathInternals.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathRegisterNs[I32](ctxt: NullablePointer[XmlXPathContext] tag, prefix: Pointer[U8] tag, nsuri: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:444
  Original Name: xmlXPathRegisterVariable/usr/include/libxml2/libxml/xpathInternals.h:444

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPathRegisterVariable[I32](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, value: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:335
  Original Name: xmlXPathRegisterVariableLookup/usr/include/libxml2/libxml/xpathInternals.h:335

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlXPathRegisterVariableLookup[None](ctxt: NullablePointer[XmlXPathContext] tag, f: Pointer[None] tag, data: Pointer[None] tag)

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
use @xmlXPathRegisterVariableNS[I32](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, nsuri: Pointer[U8] tag, value: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:460
  Original Name: xmlXPathRegisteredFuncsCleanup/usr/include/libxml2/libxml/xpathInternals.h:460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathRegisteredFuncsCleanup[None](ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:432
  Original Name: xmlXPathRegisteredNsCleanup/usr/include/libxml2/libxml/xpathInternals.h:432

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathRegisteredNsCleanup[None](ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:469
  Original Name: xmlXPathRegisteredVariablesCleanup/usr/include/libxml2/libxml/xpathInternals.h:469

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathRegisteredVariablesCleanup[None](ctxt: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:517
  Original Name: xmlXPathRoot/usr/include/libxml2/libxml/xpathInternals.h:517

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathRoot[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:619
  Original Name: xmlXPathRoundFunction/usr/include/libxml2/libxml/xpathInternals.h:619

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathRoundFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpath.h:519
  Original Name: xmlXPathSetContextNode/usr/include/libxml2/libxml/xpath.h:519

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPathSetContextNode[I32](node: NullablePointer[XmlNode] tag, ctx: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:605
  Original Name: xmlXPathStartsWithFunction/usr/include/libxml2/libxml/xpathInternals.h:605

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathStartsWithFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:529
  Original Name: xmlXPathStringEvalNumber/usr/include/libxml2/libxml/xpathInternals.h:529

  Return Value: [FundamentalType(double) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathStringEvalNumber[F64](str: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:601
  Original Name: xmlXPathStringFunction/usr/include/libxml2/libxml/xpathInternals.h:601

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathStringFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:602
  Original Name: xmlXPathStringLengthFunction/usr/include/libxml2/libxml/xpathInternals.h:602

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathStringLengthFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:556
  Original Name: xmlXPathSubValues/usr/include/libxml2/libxml/xpathInternals.h:556

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathSubValues[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:608
  Original Name: xmlXPathSubstringAfterFunction/usr/include/libxml2/libxml/xpathInternals.h:608

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathSubstringAfterFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:607
  Original Name: xmlXPathSubstringBeforeFunction/usr/include/libxml2/libxml/xpathInternals.h:607

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathSubstringBeforeFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:606
  Original Name: xmlXPathSubstringFunction/usr/include/libxml2/libxml/xpathInternals.h:606

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathSubstringFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:616
  Original Name: xmlXPathSumFunction/usr/include/libxml2/libxml/xpathInternals.h:616

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathSumFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:416
  Original Name: xmlXPathTrailing/usr/include/libxml2/libxml/xpathInternals.h:416

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathTrailing[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:410
  Original Name: xmlXPathTrailingSorted/usr/include/libxml2/libxml/xpathInternals.h:410

  Return Value: [PointerType size=64]->[Struct size=128,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathTrailingSorted[NullablePointer[XmlNodeSet]](nodes1: NullablePointer[XmlNodeSet] tag, nodes2: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:610
  Original Name: xmlXPathTranslateFunction/usr/include/libxml2/libxml/xpathInternals.h:610

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathTranslateFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:612
  Original Name: xmlXPathTrueFunction/usr/include/libxml2/libxml/xpathInternals.h:612

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPathTrueFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:554
  Original Name: xmlXPathValueFlipSign/usr/include/libxml2/libxml/xpathInternals.h:554

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPathValueFlipSign[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:462
  Original Name: xmlXPathVariableLookup/usr/include/libxml2/libxml/xpathInternals.h:462

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathVariableLookup[NullablePointer[XmlXPathObject]](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:465
  Original Name: xmlXPathVariableLookupNS/usr/include/libxml2/libxml/xpathInternals.h:465

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=3008,fid: f65]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathVariableLookupNS[NullablePointer[XmlXPathObject]](ctxt: NullablePointer[XmlXPathContext] tag, name: Pointer[U8] tag, nsuri: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:494
  Original Name: xmlXPathWrapCString/usr/include/libxml2/libxml/xpathInternals.h:494

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @xmlXPathWrapCString[NullablePointer[XmlXPathObject]](xmlval: Pointer[U8] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:549
  Original Name: xmlXPathWrapExternal/usr/include/libxml2/libxml/xpathInternals.h:549

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @xmlXPathWrapExternal[NullablePointer[XmlXPathObject]](xmlval: Pointer[None] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:547
  Original Name: xmlXPathWrapNodeSet/usr/include/libxml2/libxml/xpathInternals.h:547

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPathWrapNodeSet[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpathInternals.h:492
  Original Name: xmlXPathWrapString/usr/include/libxml2/libxml/xpathInternals.h:492

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @xmlXPathWrapString[NullablePointer[XmlXPathObject]](xmlval: Pointer[U8] tag)

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
use @xmlXPatherror[None](ctxt: NullablePointer[XmlXPathParserContext] tag, file: Pointer[U8] tag, line: I32, no: I32)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:106
  Original Name: xmlXPtrBuildNodeList/usr/include/libxml2/libxml/xpointer.h:106

  Return Value: [PointerType size=64]->[Struct size=960,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrBuildNodeList[NullablePointer[XmlNode]](obj: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:100
  Original Name: xmlXPtrEval/usr/include/libxml2/libxml/xpointer.h:100

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=3008,fid: f65]
*/
use @xmlXPtrEval[NullablePointer[XmlXPathObject]](str: Pointer[U8] tag, ctx: NullablePointer[XmlXPathContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:108
  Original Name: xmlXPtrEvalRangePredicate/usr/include/libxml2/libxml/xpointer.h:108

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
*/
use @xmlXPtrEvalRangePredicate[None](ctxt: NullablePointer[XmlXPathParserContext] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:49
  Original Name: xmlXPtrFreeLocationSet/usr/include/libxml2/libxml/xpointer.h:49

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
use @xmlXPtrFreeLocationSet[None](obj: NullablePointer[XmlLocationSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:81
  Original Name: xmlXPtrLocationSetAdd/usr/include/libxml2/libxml/xpointer.h:81

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrLocationSetAdd[None](cur: NullablePointer[XmlLocationSet] tag, xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:47
  Original Name: xmlXPtrLocationSetCreate/usr/include/libxml2/libxml/xpointer.h:47

  Return Value: [PointerType size=64]->[Struct size=128,fid: f89]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrLocationSetCreate[NullablePointer[XmlLocationSet]](xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:86
  Original Name: xmlXPtrLocationSetDel/usr/include/libxml2/libxml/xpointer.h:86

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrLocationSetDel[None](cur: NullablePointer[XmlLocationSet] tag, xmlval: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:51
  Original Name: xmlXPtrLocationSetMerge/usr/include/libxml2/libxml/xpointer.h:51

  Return Value: [PointerType size=64]->[Struct size=128,fid: f89]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
use @xmlXPtrLocationSetMerge[NullablePointer[XmlLocationSet]](val1: NullablePointer[XmlLocationSet] tag, val2: NullablePointer[XmlLocationSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:89
  Original Name: xmlXPtrLocationSetRemove/usr/include/libxml2/libxml/xpointer.h:89

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
    [FundamentalType(int) size=32]
*/
use @xmlXPtrLocationSetRemove[None](cur: NullablePointer[XmlLocationSet] tag, xmlval: I32)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:79
  Original Name: xmlXPtrNewCollapsedRange/usr/include/libxml2/libxml/xpointer.h:79

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPtrNewCollapsedRange[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:96
  Original Name: xmlXPtrNewContext/usr/include/libxml2/libxml/xpointer.h:96

  Return Value: [PointerType size=64]->[Struct size=3008,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=1408,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPtrNewContext[NullablePointer[XmlXPathContext]](doc: NullablePointer[XmlDoc] tag, here: NullablePointer[XmlNode] tag, origin: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:74
  Original Name: xmlXPtrNewLocationSetNodeSet/usr/include/libxml2/libxml/xpointer.h:74

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f65]
*/
use @xmlXPtrNewLocationSetNodeSet[NullablePointer[XmlXPathObject]](set: NullablePointer[XmlNodeSet] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:71
  Original Name: xmlXPtrNewLocationSetNodes/usr/include/libxml2/libxml/xpointer.h:71

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPtrNewLocationSetNodes[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlNode] tag)

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
use @xmlXPtrNewRange[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag, startindex: I32, xmlend: NullablePointer[XmlNode] tag, endindex: I32)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:76
  Original Name: xmlXPtrNewRangeNodeObject/usr/include/libxml2/libxml/xpointer.h:76

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrNewRangeNodeObject[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:62
  Original Name: xmlXPtrNewRangeNodePoint/usr/include/libxml2/libxml/xpointer.h:62

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrNewRangeNodePoint[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:68
  Original Name: xmlXPtrNewRangeNodes/usr/include/libxml2/libxml/xpointer.h:68

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=960,fid: f16]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPtrNewRangeNodes[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlNode] tag, xmlend: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:65
  Original Name: xmlXPtrNewRangePointNode/usr/include/libxml2/libxml/xpointer.h:65

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
    [PointerType size=64]->[Struct size=960,fid: f16]
*/
use @xmlXPtrNewRangePointNode[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlXPathObject] tag, xmlend: NullablePointer[XmlNode] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:59
  Original Name: xmlXPtrNewRangePoints/usr/include/libxml2/libxml/xpointer.h:59

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=576,fid: f65]
    [PointerType size=64]->[Struct size=576,fid: f65]
*/
use @xmlXPtrNewRangePoints[NullablePointer[XmlXPathObject]](start: NullablePointer[XmlXPathObject] tag, xmlend: NullablePointer[XmlXPathObject] tag)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:103
  Original Name: xmlXPtrRangeToFunction/usr/include/libxml2/libxml/xpointer.h:103

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=704,fid: f65]
    [FundamentalType(int) size=32]
*/
use @xmlXPtrRangeToFunction[None](ctxt: NullablePointer[XmlXPathParserContext] tag, nargs: I32)

/*
  Source: /usr/include/libxml2/libxml/xpointer.h:84
  Original Name: xmlXPtrWrapLocationSet/usr/include/libxml2/libxml/xpointer.h:84

  Return Value: [PointerType size=64]->[Struct size=576,fid: f65]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f89]
*/
use @xmlXPtrWrapLocationSet[NullablePointer[XmlXPathObject]](xmlval: NullablePointer[XmlLocationSet] tag)

