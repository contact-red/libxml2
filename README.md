# libxml2

libxml2 is the newer pony binding to the C-based libxml2 library, intended to replace pony-libxml2. It is incomplete and a work in progress.


## Status

The module currently has two APIs exposed:

* A pony-based API.
  * Designed to be safe from crashes. (If it crashes, it's a bug)
  * < 10% of the most common API calls. (But still enough to get most work done)
  * Pony ~~will~~endeavors to manage the memory on your behalf.
  * Both API and test suite is being actively extended.


* A direct 1:1 mapping with the C API. (If it crashes, it's a feature)
  * 95%+ coverage of the API.
  * You're responsible for memory management.
  * Changes to this API are extremely rare.


### Which should I use?

If you can get all your work done in the pony-API I recommend using that. If you're missing functions / functionality please open an issue and I'll try and get it added (or submit a PR!).  Right now it covers all my use-cases but I would like to extend it and knowing which functions other people want to use would be really useful for me.

If you're stuck, you can fall-back to the C API from the Pony API by using the C Pointer stored in the ptr' field of the Pony Object.

For example, if you need to call an as-yet unimplemented function which takes an xmlDocPtr as an argument, you can extract it like this:

```pony
match Xml2Parser.parseFile(FileAuth(env.root), "somefile.xml")
| let xmldoc: Xml2Doc =>
    let xmldocptr: NullablePointer[XmlDoc] = xmldoc.ptr'
    // ...
| let err: Xml2Error =>
    env.err.print("parse failed: " + err.string())
end
```

If you need to go from the C API back to the Pony API, if implemented you can reverse it as follows:

```pony
let s: NullablePointer[XmlNode] = LibXML2.(some API call)
let xmlnode: Xml2Node = Xml2Node.fromPTR(s)
```

### How do I start?

Take a look at the \_tests directory at all of the pony files. Those tests provide examples.

Documentation will follow.

If you need any help, feel free to reach out!
