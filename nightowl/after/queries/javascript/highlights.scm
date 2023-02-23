;; extends

(class_declaration
  body: (class_body
          member: (field_definition
                    property: (property_identifier) @class.field.function
                    value: (arrow_function))))

("class" name: (identifier) @type.class)

(class_heritage
  ("extends") @keyword.extends)
