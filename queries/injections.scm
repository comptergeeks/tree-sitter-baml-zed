; Inject Jinja expressions
(jinja_expression
  (_jinja_body) @injection.content
  (#set! injection.language "jinja"))

; Handle raw string literals that might contain injected code
; This is a basic pattern - adjust based on your specific needs
(raw_string_literal) @injection.content
(#match? @injection.content "^#*\"(html|css|js|sql|python|json):")
(#set! injection.language (string-replace @injection.content "^#*\"([a-z]+):.*" "\\1"))
