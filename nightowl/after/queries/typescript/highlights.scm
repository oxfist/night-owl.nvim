;; extends

(literal_type
   [(undefined) (null)] @type.builtin)

(type_annotation ":" @keyword.operator)

("class" name: (type_identifier) @type.class)

(extends_clause
  ("extends") @keyword.extends)
