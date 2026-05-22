type Xml2ErrorDomain is
  ( Xml2ErrorDomainNone
  | Xml2ErrorDomainParser
  | Xml2ErrorDomainTree
  | Xml2ErrorDomainNamespace
  | Xml2ErrorDomainDtd
  | Xml2ErrorDomainHtml
  | Xml2ErrorDomainMemory
  | Xml2ErrorDomainOutput
  | Xml2ErrorDomainIo
  | Xml2ErrorDomainFtp
  | Xml2ErrorDomainHttp
  | Xml2ErrorDomainXInclude
  | Xml2ErrorDomainXPath
  | Xml2ErrorDomainXPointer
  | Xml2ErrorDomainRegexp
  | Xml2ErrorDomainDatatype
  | Xml2ErrorDomainSchemasParser
  | Xml2ErrorDomainSchemasValid
  | Xml2ErrorDomainRelaxNgParser
  | Xml2ErrorDomainRelaxNgValid
  | Xml2ErrorDomainCatalog
  | Xml2ErrorDomainC14n
  | Xml2ErrorDomainXslt
  | Xml2ErrorDomainValid
  | Xml2ErrorDomainCheck
  | Xml2ErrorDomainWriter
  | Xml2ErrorDomainModule
  | Xml2ErrorDomainI18n
  | Xml2ErrorDomainSchematronValid
  | Xml2ErrorDomainBuffer
  | Xml2ErrorDomainUri
  | Xml2ErrorDomainUnknown )
  """
  Subsystem of libxml2 that produced an `Xml2Error`. Mirrors libxml2's
  `xmlErrorDomain` enum (values 0–30). `Xml2ErrorDomainUnknown` is the
  fall-through for values outside the documented range.
  """

primitive Xml2ErrorDomainNone
  fun string(): String iso^ => "None".clone()
primitive Xml2ErrorDomainParser
  fun string(): String iso^ => "Parser".clone()
primitive Xml2ErrorDomainTree
  fun string(): String iso^ => "Tree".clone()
primitive Xml2ErrorDomainNamespace
  fun string(): String iso^ => "Namespace".clone()
primitive Xml2ErrorDomainDtd
  fun string(): String iso^ => "Dtd".clone()
primitive Xml2ErrorDomainHtml
  fun string(): String iso^ => "Html".clone()
primitive Xml2ErrorDomainMemory
  fun string(): String iso^ => "Memory".clone()
primitive Xml2ErrorDomainOutput
  fun string(): String iso^ => "Output".clone()
primitive Xml2ErrorDomainIo
  fun string(): String iso^ => "Io".clone()
primitive Xml2ErrorDomainFtp
  fun string(): String iso^ => "Ftp".clone()
primitive Xml2ErrorDomainHttp
  fun string(): String iso^ => "Http".clone()
primitive Xml2ErrorDomainXInclude
  fun string(): String iso^ => "XInclude".clone()
primitive Xml2ErrorDomainXPath
  fun string(): String iso^ => "XPath".clone()
primitive Xml2ErrorDomainXPointer
  fun string(): String iso^ => "XPointer".clone()
primitive Xml2ErrorDomainRegexp
  fun string(): String iso^ => "Regexp".clone()
primitive Xml2ErrorDomainDatatype
  fun string(): String iso^ => "Datatype".clone()
primitive Xml2ErrorDomainSchemasParser
  fun string(): String iso^ => "SchemasParser".clone()
primitive Xml2ErrorDomainSchemasValid
  fun string(): String iso^ => "SchemasValid".clone()
primitive Xml2ErrorDomainRelaxNgParser
  fun string(): String iso^ => "RelaxNgParser".clone()
primitive Xml2ErrorDomainRelaxNgValid
  fun string(): String iso^ => "RelaxNgValid".clone()
primitive Xml2ErrorDomainCatalog
  fun string(): String iso^ => "Catalog".clone()
primitive Xml2ErrorDomainC14n
  fun string(): String iso^ => "C14n".clone()
primitive Xml2ErrorDomainXslt
  fun string(): String iso^ => "Xslt".clone()
primitive Xml2ErrorDomainValid
  fun string(): String iso^ => "Valid".clone()
primitive Xml2ErrorDomainCheck
  fun string(): String iso^ => "Check".clone()
primitive Xml2ErrorDomainWriter
  fun string(): String iso^ => "Writer".clone()
primitive Xml2ErrorDomainModule
  fun string(): String iso^ => "Module".clone()
primitive Xml2ErrorDomainI18n
  fun string(): String iso^ => "I18n".clone()
primitive Xml2ErrorDomainSchematronValid
  fun string(): String iso^ => "SchematronValid".clone()
primitive Xml2ErrorDomainBuffer
  fun string(): String iso^ => "Buffer".clone()
primitive Xml2ErrorDomainUri
  fun string(): String iso^ => "Uri".clone()
primitive Xml2ErrorDomainUnknown
  fun string(): String iso^ => "Unknown".clone()

primitive Xml2ErrorDomainFromI32
  """
  Convert a libxml2 `xmlErrorDomain` integer code to its corresponding
  `Xml2ErrorDomain` primitive. Out-of-range values map to
  `Xml2ErrorDomainUnknown`.
  """
  fun apply(domain: I32): Xml2ErrorDomain =>
    match domain
    | 0  => Xml2ErrorDomainNone
    | 1  => Xml2ErrorDomainParser
    | 2  => Xml2ErrorDomainTree
    | 3  => Xml2ErrorDomainNamespace
    | 4  => Xml2ErrorDomainDtd
    | 5  => Xml2ErrorDomainHtml
    | 6  => Xml2ErrorDomainMemory
    | 7  => Xml2ErrorDomainOutput
    | 8  => Xml2ErrorDomainIo
    | 9  => Xml2ErrorDomainFtp
    | 10 => Xml2ErrorDomainHttp
    | 11 => Xml2ErrorDomainXInclude
    | 12 => Xml2ErrorDomainXPath
    | 13 => Xml2ErrorDomainXPointer
    | 14 => Xml2ErrorDomainRegexp
    | 15 => Xml2ErrorDomainDatatype
    | 16 => Xml2ErrorDomainSchemasParser
    | 17 => Xml2ErrorDomainSchemasValid
    | 18 => Xml2ErrorDomainRelaxNgParser
    | 19 => Xml2ErrorDomainRelaxNgValid
    | 20 => Xml2ErrorDomainCatalog
    | 21 => Xml2ErrorDomainC14n
    | 22 => Xml2ErrorDomainXslt
    | 23 => Xml2ErrorDomainValid
    | 24 => Xml2ErrorDomainCheck
    | 25 => Xml2ErrorDomainWriter
    | 26 => Xml2ErrorDomainModule
    | 27 => Xml2ErrorDomainI18n
    | 28 => Xml2ErrorDomainSchematronValid
    | 29 => Xml2ErrorDomainBuffer
    | 30 => Xml2ErrorDomainUri
    else
      Xml2ErrorDomainUnknown
    end
