;; extends

(dollar
  (identifier) @nowl.variable.object
  (identifier))

(call
  function: (namespace_get
              namespace: (identifier)
              "::" @operator
              function: (identifier)))

((string
   "\"" @nowl.punctuation.string.delimiter))

(left_assignment
  name: (identifier) @lsp.type.function
  value: (function_definition))

((na) @nowl.constant.builtin.na
      (#set! "priority" 200))
