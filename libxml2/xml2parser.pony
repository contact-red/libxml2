use "raw/"
use "files"

primitive Xml2Parser
  """
  Entry points for parsing XML documents that return errors as data
  rather than raising.

  Each factory routes through libxml2's options-aware `xmlRead*`
  family and returns a union of the parsed `Xml2Doc` and an
  `Xml2Error` capturing the failure. Errors are constructed
  immediately in the same Pony behaviour as the parse call, so the
  thread-locality contract documented on `Xml2Error` is satisfied by
  default for callers using these entry points.

  ## Example

  ```pony
  match Xml2Parser.parseDoc(xml)
  | let doc: Xml2Doc =>
      let root = doc.getRootElement()?
      // ...
  | let err: Xml2Error =>
      env.err.print("parse failed: " + err.string())
  end
  ```
  """

  fun parseDoc(
    xml: String val,
    options: Xml2ParserOptions val = Xml2ParserOptions.create())
    : (Xml2Doc | Xml2Error)
  =>
    """
    Parse `xml` as an XML document. Returns the parsed `Xml2Doc` on
    success, or an `Xml2Error` describing the failure.
    """
    let ptrx: NullablePointer[XmlDoc] =
      LibXML2.xmlReadDoc(xml, "", "", options.to_flags())
    if ptrx.is_none() then
      _capture_error("xmlReadDoc returned null")
    else
      Xml2Doc._from_ptr(ptrx)
    end

  fun parseFile(
    auth: FileAuth,
    path: String val,
    options: Xml2ParserOptions val = Xml2ParserOptions.create())
    : (Xml2Doc | Xml2Error)
  =>
    """
    Parse the XML document at `path` from the file system. Returns
    the parsed `Xml2Doc` on success, or an `Xml2Error` describing the
    failure.

    `auth` is the `FileAuth` capability indicating the caller is
    permitted to read files. The path is passed directly to libxml2's
    `xmlReadFile` without further sandboxing.
    """
    let ptrx: NullablePointer[XmlDoc] =
      LibXML2.xmlReadFile(path, "", options.to_flags())
    if ptrx.is_none() then
      _capture_error("xmlReadFile returned null")
    else
      Xml2Doc._from_ptr(ptrx)
    end

  fun tag _capture_error(synthetic_message: String): Xml2Error =>
    """
    Read libxml2's last-error and return an `Xml2Error`. If libxml2
    has no captured error despite the apparent parse failure
    (extremely rare; usually only on allocation failure inside the
    read path), return a synthetic error so the public return type
    stays a total `(Xml2Doc | Xml2Error)`.
    """
    try
      Xml2Error.from_last_error()?
    else
      Xml2Error._synthetic(
        Xml2ErrorDomainUnknown,
        Xml2ErrorLevelFatal,
        I32(-1),
        synthetic_message)
    end
