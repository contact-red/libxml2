use "lib:xml2"

type XmlFreeFunc is @{(Pointer[None] tag): None}

primitive Xml2Free
  """
  Apply libxml2's configured free function to a heap-allocated
  `xmlChar*` / `void*` pointer. Used internally by the auto-generated
  `LibXML2` wrappers below to free pointers returned by libxml2
  functions like `xmlGetProp` / `xmlNodeGetContent` after the bytes
  have been cloned into Pony memory. Retrieves the allocator through
  `xmlMemGet` so application-installed allocators via `xmlMemSetup`
  are honoured. A null pointer is a no-op.
  """
  fun tag apply(p: Pointer[U8]) =>
    if p.is_null() then return end
    var free_func: XmlFreeFunc = @{(q: Pointer[None] tag) => None}
    var malloc_func: Pointer[None] = Pointer[None]
    var realloc_func: Pointer[None] = Pointer[None]
    var strdup_func: Pointer[None] = Pointer[None]
    if @xmlMemGet(
      addressof free_func, addressof malloc_func,
      addressof realloc_func, addressof strdup_func) == 0
    then
      free_func(p)
    end
    // If xmlMemGet fails (extremely rare; allocator-lookup failure),
    // free_func remains the no-op lambda. The leak in that
    // pathological case is acceptable; the alternative would be a
    // call through an uninitialised function pointer.

primitive LibXML2
