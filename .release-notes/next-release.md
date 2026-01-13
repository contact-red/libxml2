## Adds functions to manipulate attributes.

- Added getProps(): Array[(String, String)]
- Added setProp(name: String val, value: String val)
- Added unsetProp(name: String val)

## Adds convenience methods for xpathEval()

Adds:
- xpathEvalNodes(xpath: String val, namespaces: Array[(String val, String val)] = []): Array[Xml2Node] ?
- xpathEvalString(xpath: String val, namespaces: Array[(String val, String val)] = []): String val ?
- xpathEvalF64(xpath: String val, namespaces: Array[(String val, String val)] = []): F64 ?
- xpathEvalBool(xpath: String val, namespaces: Array[(String val, String val)] = []): Bool ?

These functions are clearer in use at the call-site:

Compare:

```pony
  match doc.xpathEval("//child")
  | let nodes: Array[Xml2Node] => // etc…
  else
    h.fail("Expected nodeset result for //child")
  end
```
or
```pony
  let nodes: Array[Xml2Node] = (doc.xpathEval("//child") as Array[Xml2Node])
```

To:

```pony
  let nodes: Array[Xml2Node] = doc.xpathEvalNodes("//child")?
```

## Adds Xml2Doc.serialize() and Xml2Doc.saveToFile()

adds serialize() and saveToFile() methods to Xml2Doc, enabling
XML documents to be saved to strings or files with optional formatting
and encoding control.

Implementation:
- Added serialize() method using xmlDocDumpFormatMemoryEnc for in-memory
  serialization with format and encoding options
- Added saveToFile() method using xmlSaveFormatFileEnc for direct file
  output
- Both methods support pretty-printing and multiple character encodings
  (UTF-8, ISO-8859-1, UTF-16, etc.)

Testing:
- Added 6 comprehensive test cases covering round-trip serialization,
  formatting options, file I/O, encoding support, modified document
  serialization, and error handling
- All 33 tests pass successfully

This feature enables both modifying existing XML documents and provides
the foundation for creating new XML documents from scratch.

