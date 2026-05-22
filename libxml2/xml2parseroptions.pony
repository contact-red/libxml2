class val Xml2ParserOptions
  """
  Options controlling XML document parsing. Each field maps 1:1 to a
  libxml2 `XML_PARSE_*` flag in the bitmask consumed by `xmlReadDoc` /
  `xmlReadFile`.

  The default-constructed instance is **safe-by-default**:

  - `no_net = true` — libxml2 must not perform any network access
    while parsing (no remote DTD fetch, no remote entity expansion).
    This is the primary mitigation against XXE / SSRF attacks on
    parsing untrusted input.
  - `substitute_entities = false` — internal and external entities
    are not expanded into the document. Entity references remain as
    `<xmlEntityRef>` nodes that the caller can choose to handle.
  - `load_dtd = false`, `load_dtd_attrs = false` — external DTD
    subset and default DTD attributes are not loaded.

  To restore libxml2's historic permissive behaviour explicitly, set
  `no_net = false` and `substitute_entities = true`.

  Example — strict pretty-printing-friendly parsing:

  ```pony
  let opts = Xml2ParserOptions.create(
    where no_blanks = true, pedantic = true)
  let doc = Xml2Doc.parseDoc(xml, opts)?
  ```
  """

  // Core (issue #12)
  let error_recovery: Bool
  let substitute_entities: Bool
  let no_blanks: Bool

  // Security
  let no_net: Bool
  let load_dtd: Bool
  let load_dtd_attrs: Bool

  // Mode
  let pedantic: Bool
  let huge: Bool

  new val create(
    error_recovery': Bool = false,
    substitute_entities': Bool = false,
    no_blanks': Bool = false,
    no_net': Bool = true,
    load_dtd': Bool = false,
    load_dtd_attrs': Bool = false,
    pedantic': Bool = false,
    huge': Bool = false)
  =>
    """
    Construct a parser options instance. All parameters default to the
    safe-by-default settings described in the class docstring; pass
    named arguments via `where` to opt into specific flags.

    - `error_recovery'`: attempt to recover from malformed input
      rather than failing the parse. Maps to `XML_PARSE_RECOVER`.
      Named with the `error_` prefix because `recover` is a Pony
      keyword.
    - `substitute_entities'`: expand internal and external entities
      into the document. Maps to `XML_PARSE_NOENT`. **Enabling this
      on untrusted input reintroduces XXE.**
    - `no_blanks'`: discard ignorable whitespace text nodes. Maps to
      `XML_PARSE_NOBLANKS`.
    - `no_net'`: forbid network access during parsing. Maps to
      `XML_PARSE_NONET`. Defaults to `true`.
    - `load_dtd'`: load the external DTD subset. Maps to
      `XML_PARSE_DTDLOAD`. **Enabling this with `no_net = false` and
      `substitute_entities = true` on untrusted input reintroduces
      XXE / SSRF.**
    - `load_dtd_attrs'`: apply default DTD attributes. Maps to
      `XML_PARSE_DTDATTR`. Implies the DTD is loaded.
    - `pedantic'`: enable strict (pedantic) error reporting. Maps to
      `XML_PARSE_PEDANTIC`.
    - `huge'`: relax libxml2's hard-coded size limits, allowing
      documents larger than ~10 MB. Maps to `XML_PARSE_HUGE`.
    """
    error_recovery = error_recovery'
    substitute_entities = substitute_entities'
    no_blanks = no_blanks'
    no_net = no_net'
    load_dtd = load_dtd'
    load_dtd_attrs = load_dtd_attrs'
    pedantic = pedantic'
    huge = huge'

  fun to_flags(): I32 =>
    """
    Return the OR'd libxml2 `XML_PARSE_*` bitmask corresponding to
    the enabled options. Consumed internally by `Xml2Doc.parseDoc` /
    `parseFile` when calling `xmlReadDoc` / `xmlReadFile`.
    """
    var f: I32 = 0
    if error_recovery      then f = f or 1 end       // XML_PARSE_RECOVER  = 1<<0
    if substitute_entities then f = f or 2 end       // XML_PARSE_NOENT    = 1<<1
    if load_dtd            then f = f or 4 end       // XML_PARSE_DTDLOAD  = 1<<2
    if load_dtd_attrs      then f = f or 8 end       // XML_PARSE_DTDATTR  = 1<<3
    if pedantic            then f = f or 128 end     // XML_PARSE_PEDANTIC = 1<<7
    if no_blanks           then f = f or 256 end     // XML_PARSE_NOBLANKS = 1<<8
    if no_net              then f = f or 2048 end    // XML_PARSE_NONET    = 1<<11
    if huge                then f = f or 524288 end  // XML_PARSE_HUGE     = 1<<19
    f
