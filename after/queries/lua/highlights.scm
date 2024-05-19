;; extends

((string
   start: ["\"" "[["] @nowl.punctuation.string.delimiter (#set! "priority" 200)))

((string
   end: ["\"" "]]"] @nowl.punctuation.string.delimiter (#set! "priority" 200)))

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

(field
  name: (identifier) @lsp.type.function.lua
  value: (function_definition))

(function_call
  name: (identifier) @function.call.lua
    (#set! "priority" 200))

(break_statement) @nowl.keyword.break
