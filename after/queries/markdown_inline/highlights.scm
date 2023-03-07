;; extends

(emphasis
  (emphasis_delimiter) @text.emphasis
  (#set! "priority" 200))

(strong_emphasis
  (emphasis_delimiter) @text.strong
  (#set! "priority" 200))

(code_span
  (code_span_delimiter) @text.literal
  (#set! "priority" 200))
