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

((optional_chain) @operator
                  (#set! "priority" 200))

[ 
 "'"
 "`"
 "\""
] @punctuation.string.delimiter

(member_expression 
  "." @punctuation.accessor
  property: (property_identifier)
)

operator: ("of") @operator.of

(member_expression 
    object: (member_expression
      property: (property_identifier) @object.property)
    property: (property_identifier))

(pair (property_identifier) @object.key
      (#not-has-ancestor? @object.key field_definition)
      (#set! "priority" 200))

("const" [
          (variable_declarator
            [
             name: (array_pattern
                     (identifier) @constant.identifier)
             name: (object_pattern
                     (shorthand_property_identifier_pattern) @constant.identifier)
             name: (identifier) @constant.identifier
             (#set! "priority" 200)
            ])
          left: (identifier) @constant.identifier
         ])

((identifier) @constant
              (#lua-match? @constant "^[A-Z][A-Z_0-9]*$")
              (#set! "priority" 200))

(null) @constant.builtin.null

(export_statement
  "export" @keyword.export)

(export_statement
  "default" @keyword.default)

(("static") @keyword.static (property_identifier))

("extends" (identifier) @type.inheritedClass)
