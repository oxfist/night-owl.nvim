;; extends

[
 (string_start) @nowl.punctuation.string.delimeter
 (string_end) @nowl.punctuation.string.delimeter
]

((decorator) @lsp.type.decorator
             (#set! "priority" 200))
