;; extends

([
  (string_start)
  (string_end)
  ] @nowl.punctuation.string.delimiter)

((decorator) @lsp.type.decorator
             (#set! "priority" 200))
