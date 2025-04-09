;; Top-level expressions
(expr_fn
  name: (identifier) @name) @item

;; Block expressions
(value_expression_block
  keyword: (value_expression_keyword) @context
  name: (identifier) @name) @item

;; Type expressions
(type_expression_block
  block_keyword: (identifier) @context
  name: (identifier) @name) @item

;; Type aliases
(type_alias
  name: (identifier) @name) @item

;; Template declarations
(template_declaration
  name: (identifier) @name) @item

;; Value expressions in blocks (make them children of parent blocks)
(value_expression
  name: (identifier) @name) @item

;; Type expressions in blocks
(type_expression
  name: (identifier) @name) @item

;; Doc comments as annotations
(doc_comment) @annotation
