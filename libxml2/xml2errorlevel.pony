type Xml2ErrorLevel is
  ( Xml2ErrorLevelNone
  | Xml2ErrorLevelWarning
  | Xml2ErrorLevelError
  | Xml2ErrorLevelFatal
  | Xml2ErrorLevelUnknown )
  """
  Severity level of an `Xml2Error`. Mirrors libxml2's
  `xmlErrorLevel` enum.

  - `Xml2ErrorLevelNone` (libxml2 value 0): not an error
  - `Xml2ErrorLevelWarning` (1): a simple warning, parsing can continue
  - `Xml2ErrorLevelError` (2): a recoverable error
  - `Xml2ErrorLevelFatal` (3): a fatal error, parsing cannot continue
  - `Xml2ErrorLevelUnknown`: libxml2 reported a level outside the
    documented enum range
  """

primitive Xml2ErrorLevelNone
  fun string(): String iso^ => "None".clone()
primitive Xml2ErrorLevelWarning
  fun string(): String iso^ => "Warning".clone()
primitive Xml2ErrorLevelError
  fun string(): String iso^ => "Error".clone()
primitive Xml2ErrorLevelFatal
  fun string(): String iso^ => "Fatal".clone()
primitive Xml2ErrorLevelUnknown
  fun string(): String iso^ => "Unknown".clone()

primitive Xml2ErrorLevelFromI32
  """
  Convert a libxml2 `xmlErrorLevel` integer code to its corresponding
  `Xml2ErrorLevel` primitive. Out-of-range values map to
  `Xml2ErrorLevelUnknown`.
  """
  fun apply(level: I32): Xml2ErrorLevel =>
    match level
    | 0 => Xml2ErrorLevelNone
    | 1 => Xml2ErrorLevelWarning
    | 2 => Xml2ErrorLevelError
    | 3 => Xml2ErrorLevelFatal
    else
      Xml2ErrorLevelUnknown
    end
