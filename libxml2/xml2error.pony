use "raw/"

class Xml2Error
  var domain: String val
  var code: I32 = I32(0)
  var message: String val
  var level: String val
  var file: String val
  var line: I32 = I32(0)
  var str1: String val
  var str2: String val
  var str3: String val
  var int1: I32 = I32(0)
  var int2: I32 = I32(0)

  new create() =>
    let xmlerrp: NullablePointer[XmlError] = LibXML2.xmlGetLastError()
    try
      let xmlerr: XmlError = xmlerrp.apply()?
      domain = match xmlerr.domain
               | 0 => "NONE"
               | 1 => "PARSER"
               | 2 => "TREE"
               | 3 => "NAMESPACE"
               | 4 => "DTD"
               | 5 => "HTML"
               | 6 => "MEMORY"
               | 7 => "OUTPUT"
               | 8 => "IO"
               | 9 => "FTP"
               | 10 => "HTTP"
               | 11 => "XINCLUDE"
               | 12 => "XPATH"
               | 13 => "XPOINTER"
               | 14 => "REGEXP"
               | 15 => "DATATYPE"
               | 16 => "SCHEMASP"
               | 17 => "SCHEMASV"
               | 18 => "RELAXNGP"
               | 19 => "RELAXNGV"
               | 20 => "CATALOG"
               | 21 => "C14N"
               | 22 => "XSLT"
               | 23 => "VALID"
               | 24 => "CHECK"
               | 25 => "WRITER"
               | 26 => "MODULE"
               | 27 => "I18N"
               | 28 => "SCHEMATRONV"
               | 29 => "BUFFER"
               | 30 => "URI"
               else
                 "Unknown"
               end
                
      code = xmlerr.code
      message = String.from_cstring(xmlerr.message).clone()
      level = match xmlerr.level
              | 0 => "None"
              | 1 => "Warning"
              | 2 => "Error"
              | 3 => "Fatal"
              else
                "Unknown"
              end
      file = String.from_cstring(xmlerr.file).clone()
      line = xmlerr.line
      str1 = String.from_cstring(xmlerr.str1).clone()
      str2 = String.from_cstring(xmlerr.str2).clone()
      str3 = String.from_cstring(xmlerr.str3).clone()
      int1 = xmlerr.int1
      int2 = xmlerr.int2
    else
      message = "XmlError failed to get an error"
      domain = "XmlError failed to get an error"
      file = "XmlError failed to get an error"
      level = "XmlError failed to get an error"
      str1 = "XmlError failed to get an error"
      str2 = "XmlError failed to get an error"
      str3 = "XmlError failed to get an error"
    end
    LibXML2.xmlResetError(xmlerrp)

