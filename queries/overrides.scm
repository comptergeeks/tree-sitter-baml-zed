;; String scopes
[
  (quoted_string_literal)
  (raw_string_literal)
] @string

;; Comment scopes (inclusive to include the entire comment)
[
  (comment)
  (doc_comment)
  (block_comment)
] @comment.inclusive

;; Code blocks
[
  (expr_block)
  (value_expression_block)
  (type_expression_block)
] @code_block

;; Jinja expressions
(jinja_expression) @jinja
