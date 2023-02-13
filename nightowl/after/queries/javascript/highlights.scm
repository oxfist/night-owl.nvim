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

[
 (jsx_element
   open_tag: (jsx_opening_element
               name: (identifier) @tag.component.jsx
               (#set! "priority" 200)
               (#match? @tag.component.jsx "^[A-Z]")))
 (jsx_element
   close_tag: (jsx_closing_element
               name: (identifier) @tag.component.jsx
               (#set! "priority" 200)
               (#match? @tag.component.jsx "^[A-Z]")))
 (jsx_self_closing_element
   name: (identifier) @tag.component.jsx
   (#set! "priority" 200)
   (#match? @tag.component.jsx "^[A-Z]"))
]

(class_declaration
  body: (class_body
          member: (field_definition
                    property: (property_identifier) @class.field.function
                    value: (arrow_function))))

(null) @constant.builtin.null

(export_statement
  "export" @keyword.export)

(export_statement
  "default" @keyword.default)
