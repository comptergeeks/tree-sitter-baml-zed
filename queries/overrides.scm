; Apply string scope to string literals
[
  (quoted_string_literal)
  (raw_string_literal)
] @string

; Apply comment scope to comments
[
  (comment)
  (doc_comment)
  (block_comment)
] @comment.inclusive

; Special handling for jinja expressions
(jinja_expression) @jinja
