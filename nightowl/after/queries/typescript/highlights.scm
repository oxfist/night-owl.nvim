;; extends

(import_clause
  (identifier) @include.identifier)

(named_imports
  (import_specifier
    name: (identifier) @include.identifier))

(member_expression
  object: (identifier) @variable.object
  (#set! "priority" 200))

(new_expression
  constructor: (identifier) @class.constructor
  (#set! "priority" 200))

[ 
 "'"
 "`"
 "\""
] @punctuation.string.delimiter

operator: ("of") @operator.of

(member_expression 
    object: (member_expression
      property: (property_identifier) @object.property)
    property: (property_identifier))

(lexical_declaration
  "const"
  (variable_declarator
    [
     name: (array_pattern
              (identifier) @constant.identifier)
     name: (object_pattern
              (shorthand_property_identifier_pattern) @constant.identifier)
     name: (identifier) @constant.identifier
     (#set! "priority" 200)
    ]))

(null) @constant.builtin.null

(literal_type
   [(undefined) (null)] @type.builtin)

(export_statement
  "export" @keyword.export)

(export_statement
  "default" @keyword.default)
