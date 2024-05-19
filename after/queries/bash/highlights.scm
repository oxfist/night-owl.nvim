;; extends

(command
  argument: (word) @nowl.variable.parameter.option
  (#match? @nowl.variable.parameter.option "^-"))

((string
   "\"" @nowl.punctuation.string.delimiter (#set! "priority" 2000)
   [(string_content) (simple_expansion)]
   "\""  @nowl.punctuation.string.delimiter (#set! "priority" 2000)))
