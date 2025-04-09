;; Detect test blocks as runnable
(
  (value_expression_block
    keyword: (value_expression_keyword) @_kw
    name: (identifier) @run
    (#eq? @_kw "test"))
  (#set! tag "baml-test")
)

;; Detect function blocks as runnable
(
  (value_expression_block
    keyword: (value_expression_keyword) @_kw
    name: (identifier) @run
    (#eq? @_kw "function"))
  (#set! tag "baml-function")
)

;; Detect client blocks as runnable
(
  (value_expression_block
    keyword: (value_expression_keyword) @_kw
    name: (identifier) @run
    (#eq? @_kw "client"))
  (#set! tag "baml-client")
)
