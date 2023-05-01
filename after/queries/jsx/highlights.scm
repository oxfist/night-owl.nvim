;; extends

[
 (jsx_element
   open_tag: (jsx_opening_element
               name: (identifier) @tag.component.jsx
               (#lua-match? @tag.component.jsx "^[A-Z]")
               (#set! "priority" 200)))
 (jsx_element
   close_tag: (jsx_closing_element
               name: (identifier) @tag.component.jsx
               (#lua-match? @tag.component.jsx "^[A-Z]")
               (#set! "priority" 200)))
 (jsx_self_closing_element
   name: (identifier) @tag.component.jsx
   (#lua-match? @tag.component.jsx "^[A-Z]")
   (#set! "priority" 200))
]
