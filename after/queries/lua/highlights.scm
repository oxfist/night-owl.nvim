;; extends

((string
   start: "string_start" @punctuation.string.delimiter
   (#set! "priority" 200)
   content: "string_content"
   end: "string_end" @punctuation.string.delimiter
   (#set! "priority" 200)))
