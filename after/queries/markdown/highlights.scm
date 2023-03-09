;; extends

(list_item
  (task_list_marker_checked) @text.todo.checked
  (#set! "priority" 200))

((atx_heading) @text.title
               (#set! "priority" 200))
