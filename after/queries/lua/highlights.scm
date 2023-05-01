;; extends

((string
   start: "string_start" @punctuation.string.delimiter
     (#set! "priority" 200)
   content: "string_content"
   end: "string_end" @punctuation.string.delimiter
     (#set! "priority" 200)))

(dot_index_expression
  table: (identifier) @variable.builtin
    (#lua-match? @variable.builtin "self")
    (#set! "priority" 200)
  field: (identifier))

(method_index_expression
  table: (identifier) @variable.builtin
    (#lua-match? @variable.builtin "self")
    (#set! "priority" 200)
  method: (identifier))
