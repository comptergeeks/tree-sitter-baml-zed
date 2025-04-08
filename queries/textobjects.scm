; Functions
(expr_fn) @function.around
(expr_fn (expr_block
  "{"
  (._)* @function.inside
  "}"))

(value_expression_block) @function.around
(value_expression_block
  _BLOCK_OPEN: "{"
  (._)* @function.inside
  _BLOCK_CLOSE: "}")

; Classes/Types
(type_expression_block) @class.around
(type_expression_block
  _BLOCK_OPEN: "{"
  (._)* @class.inside
  _BLOCK_CLOSE: "}")

; Comments
(comment) @comment.around
(doc_comment) @comment.around
(block_comment) @comment.around
