;; extends

(dollar
  (identifier) @variable.object
  (identifier))

(call
  function: (namespace_get
              namespace: (identifier)
              "::" @operator
              function: (identifier)))

((string
   "\"" @punctuation.string.delimeter))
