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
