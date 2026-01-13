type XPathType is
  ( XPathTypeUndefined
  | XPathTypeNodeset
  | XPathTypeBoolean
  | XPathTypeNumber
  | XPathTypeString
  | XPathTypePoint
  | XPathTypeRange
  | XPathTypeLocationSet
  | XPathTypeUsers
  | XPathTypeXsltTree )

primitive XPathTypeUndefined   fun apply(): I32 => 0
primitive XPathTypeNodeset     fun apply(): I32 => 1
primitive XPathTypeBoolean     fun apply(): I32 => 2
primitive XPathTypeNumber      fun apply(): I32 => 3
primitive XPathTypeString      fun apply(): I32 => 4
primitive XPathTypePoint       fun apply(): I32 => 5
primitive XPathTypeRange       fun apply(): I32 => 6
primitive XPathTypeLocationSet fun apply(): I32 => 7
primitive XPathTypeUsers       fun apply(): I32 => 8
primitive XPathTypeXsltTree    fun apply(): I32 => 9
