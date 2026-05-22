## Add namespace-aware accessors to Xml2Node

Adds four methods to `Xml2Node` for working with documents that use XML namespaces. `name()` continues to return the local name only.

- `namespaceUri()`: the node's namespace URI, or `""` if the node has no namespace.
- `namespacePrefix()`: the namespace prefix as written in the source document (e.g. `"glib"` for `<glib:signal>`), or `""` for the default namespace.
- `qname()`: the qualified name as a `(namespace_uri, local_name)` tuple, for matching on both at once.
- `getPropNs(uri, local)`: retrieves a namespace-qualified attribute by URI and local name, useful when a document binds the namespace under a non-conventional prefix.

```pony
let GLIB_NS: String = "http://www.gtk.org/introspection/glib/1.0"
for child in class_node.getChildren().values() do
  match child.qname()
  | ("", "method")      => // <method>
  | (GLIB_NS, "signal") => // <glib:signal>
  end
end
```

## Add parser options and safer parsing defaults

`Xml2Doc.parseDoc` and `Xml2Doc.parseFile` now accept an optional `Xml2ParserOptions` argument and route through libxml2's `xmlReadDoc` / `xmlReadFile` internally. Without an explicit `options` argument they parse with **safe-by-default** settings: no network access (`XML_PARSE_NONET`), no entity substitution, no external DTD loading. This closes the XXE / SSRF attack surface for code parsing untrusted XML without forcing every caller to know to opt in.

`Xml2ParserOptions` exposes typed boolean fields mapping 1:1 to libxml2's `XML_PARSE_*` flags: `error_recovery`, `substitute_entities`, `no_blanks`, `no_net`, `load_dtd`, `load_dtd_attrs`, `pedantic`, `huge`. Construct with `where` named arguments to override only the flags you need.

```pony
// Default: safe (no_net = true, substitute_entities = false)
let doc = Xml2Doc.parseDoc(xml)?

// Lenient parse that recovers from malformed input
let opts = Xml2ParserOptions.create(
  where error_recovery' = true, no_blanks' = true)
let doc = Xml2Doc.parseDoc(xml, opts)?
```

**Behaviour change**: existing `parseDoc` / `parseFile` callers now parse with `XML_PARSE_NONET` enabled by default. Code that relied on libxml2's previous permissive defaults — in particular, on the parser fetching remote entities or DTDs — must explicitly opt in by constructing `Xml2ParserOptions.create(where no_net' = false, substitute_entities' = true, load_dtd' = true)`.

## Errors are now returned as data, not raised

Parsing and XPath entry points no longer use Pony's partial-function `?` to signal failure. Instead they return a union of the success value and an `Xml2Error` value, so callers can inspect structured error information (domain, level, code, message, file, line, plus three context strings and two context integers).

```pony
match Xml2Parser.parseDoc(xml)
| let doc: Xml2Doc =>
    // use the document
| let err: Xml2Error =>
    env.err.print(err.string())
end
```

### What changed

- New `Xml2Parser.parseDoc(xml, options)` and `Xml2Parser.parseFile(auth, path, options)` entry points return `(Xml2Doc | Xml2Error)`.
- New `xpathEvalNodes` / `xpathEvalString` / `xpathEvalF64` / `xpathEvalBool` convenience methods on `Xml2Doc` and `Xml2Node` return `(T | Xml2Error)` instead of raising.
- `Xml2XPathResult` now includes `Xml2Error` as a variant; `xpathEval` populates it on evaluation failure. Empty nodesets now return an empty `Array[Xml2Node]` rather than `None`.
- `Xml2Error` is now `class val` with `let` fields throughout; it is safe to share across actors.
- `Xml2Error.domain` and `Xml2Error.level` are typed primitive unions (`Xml2ErrorDomain` and `Xml2ErrorLevel`) rather than free-form `String` values. Exhaustive `match` over these unions is supported.
- `Xml2Error.string()` produces a human-readable rendering suitable for logging.
- `Xml2Error.from_last_error()?` is the new (partial) constructor for reading libxml2's per-thread last-error directly; raises if there is no current error rather than silently fabricating one.

### Breaking changes

`Xml2Doc.parseDoc(...)?` and `Xml2Doc.parseFile(...)?` constructors have been removed. Migrate to `Xml2Parser.parseDoc(...)` / `Xml2Parser.parseFile(...)` and pattern-match the returned union:

Before:

```pony
try
  let doc = Xml2Doc.parseDoc(xml)?
  // ...
else
  env.err.print("parse failed")
end
```

After:

```pony
match Xml2Parser.parseDoc(xml)
| let doc: Xml2Doc =>
    // ...
| let err: Xml2Error =>
    env.err.print(err.string())
end
```

The convenience XPath methods change shape similarly. Before:

```pony
try
  let nodes = doc.xpathEvalNodes("//foo")?
  // ...
end
```

After:

```pony
match doc.xpathEvalNodes("//foo")
| let nodes: Array[Xml2Node] => // ...
| let err: Xml2Error          => // ...
end
```

Callers that previously relied on `Xml2Error.create()` reading thread-local last-error after a raise should instead receive the `Xml2Error` directly from the union return — this is reliable across Pony actor migration boundaries, which the previous mechanism was not.

