;; Function objects
(expr_fn
  body: (expr_block) @function.inside) @function.around

(value_expression_block
  keyword: (value_expression_keyword)
  body: (_) @function.inside) @function.around

;; Class/type objects
(type_expression_block
  body: (_) @class.inside) @class.around

;; Comment objects
(comment) @comment.around
(doc_comment) @comment.around
(block_comment) @comment.around

;; Join multiple consecutive comments as one text object
([(comment) (doc_comment)]+ @comment.around)
