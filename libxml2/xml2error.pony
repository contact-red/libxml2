use "raw/"

class val Xml2Error
  """
  Immutable snapshot of an error reported by libxml2.

  An `Xml2Error` is normally constructed via
  `Xml2Error.from_last_error()?`, which reads libxml2's current
  per-thread last-error and returns an immutable value. The
  constructor is partial: it raises if libxml2 has no current error
  (e.g. no parse / XPath call has failed since the last reset).

  All fields are `let`, so an `Xml2Error` value can be safely shared
  across actors and stored without aliasing concerns.

  ## Thread-locality contract

  libxml2's last-error state is per-OS-thread. Pony actors can
  migrate between scheduler threads across behaviour boundaries.
  Construct `Xml2Error.from_last_error()?` in the **same behaviour**
  as the call that produced the error — typically immediately after
  catching an error from a parse / XPath operation. Stashing the
  failure condition and constructing the error later may read stale
  or unrelated error state.

  The `Xml2Parser.parseDoc` / `parseFile` factories capture errors
  internally before returning, so callers receiving an `Xml2Error`
  from those entry points don't need to worry about this contract.
  """

  // Core
  let domain: Xml2ErrorDomain
  let level: Xml2ErrorLevel
  let code: I32
  let message: String val
  let file: String val
  let line: I32

  // Context strings - libxml2 populates these per-domain (often
  // tag names, attribute names, file paths).
  let str1: String val
  let str2: String val
  let str3: String val

  // Context integers - libxml2 populates these per-domain (often
  // line / column numbers).
  let int1: I32
  let int2: I32

  new val from_last_error() ? =>
    """
    Construct from libxml2's current per-thread last-error. Raises if
    libxml2 has no current error (i.e. `xmlGetLastError` returned
    null). The last-error state is reset after a successful read, so
    a second call without an intervening failure raises.
    """
    let xmlerrp: NullablePointer[XmlError] = LibXML2.xmlGetLastError()
    let xmlerr: XmlError = xmlerrp.apply()?
    domain = Xml2ErrorDomainFromI32(xmlerr.domain)
    level = Xml2ErrorLevelFromI32(xmlerr.level)
    code = xmlerr.code
    message = _safe_from_cstring(xmlerr.message)
    file = _safe_from_cstring(xmlerr.file)
    line = xmlerr.line
    str1 = _safe_from_cstring(xmlerr.str1)
    str2 = _safe_from_cstring(xmlerr.str2)
    str3 = _safe_from_cstring(xmlerr.str3)
    int1 = xmlerr.int1
    int2 = xmlerr.int2
    LibXML2.xmlResetError(xmlerrp)

  new val _synthetic(
    domain': Xml2ErrorDomain,
    level': Xml2ErrorLevel,
    code': I32,
    message': String val)
  =>
    """
    Package-private constructor for synthetic errors that did not come
    from libxml2's last-error state. Used by `Xml2Parser` as a
    fallback for the impossible case where libxml2 returns a null
    doc pointer with no captured error.
    """
    domain = domain'
    level = level'
    code = code'
    message = message'
    file = ""
    line = -1
    str1 = ""
    str2 = ""
    str3 = ""
    int1 = 0
    int2 = 0

  fun tag _safe_from_cstring(p: Pointer[U8]): String val =>
    """
    Defensive `String.from_cstring` that returns an empty Pony string
    for a null pointer. libxml2 leaves several `xmlError` string
    fields NULL depending on the error domain.
    """
    String.from_cstring(p).clone()

  fun string(): String val =>
    """
    Human-readable rendering of the error, suitable for logging.
    Format: `"<level> <domain>[<code>] at <file>:<line>: <message>"`,
    with `<file>:<line>` omitted if no file is known.
    """
    let buf: String iso = recover iso String end
    buf.append(level.string())
    buf.append(" ")
    buf.append(domain.string())
    buf.append("[")
    buf.append(code.string())
    buf.append("]")
    if file.size() > 0 then
      buf.append(" at ")
      buf.append(file)
      buf.append(":")
      buf.append(line.string())
    end
    if message.size() > 0 then
      buf.append(": ")
      buf.append(message)
    end
    consume buf
