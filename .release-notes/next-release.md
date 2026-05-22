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

