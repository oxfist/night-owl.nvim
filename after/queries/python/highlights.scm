;; extends

[
 (string_start) @punctuation.string.delimeter
 (string_end) @punctuation.string.delimeter
]

((decorator) @lsp.type.decorator
             (#set! "priority" 200))
