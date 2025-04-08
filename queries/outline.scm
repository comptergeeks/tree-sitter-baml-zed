; Type blocks
(type_expression_block
  block_keyword: (identifier) @context
  name: (identifier) @name) @item

; Function definitions
(expr_fn
  name: (identifier) @name) @item

; Value blocks (functions, tests, clients, etc.)
(value_expression_block
  keyword: (value_expression_keyword) @context
  name: (identifier) @name) @item

; Template declarations
(template_declaration
  name: (identifier) @name) @item

; Type aliases
(type_alias
  name: (identifier) @name) @item
