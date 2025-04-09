;; Jinja expressions
((jinja_expression) @injection.content
 (#set! injection.language "jinja"))

;; Raw string templates with language markers
((raw_string_literal) @injection.content
 (#match? @injection.content "^(?:[a-zA-Z][a-zA-Z0-9_-]*)?#*\".*?\"#*$")
 (#set! injection.language "string"))

;; Possible SQL injections in strings marked with 'sql' prefix
((raw_string_literal) @injection.content
 (#match? @injection.content "^sql#*\".*?\"#*$")
 (#set! injection.language "sql"))

;; Possible JSON injections in strings marked with 'json' prefix
((raw_string_literal) @injection.content
 (#match? @injection.content "^json#*\".*?\"#*$")
 (#set! injection.language "json"))

;; Possible HTML/XML injections in strings marked with 'html' or 'xml' prefix
((raw_string_literal) @injection.content
 (#match? @injection.content "^(html|xml)#*\".*?\"#*$")
 (#set! injection.language "html"))
