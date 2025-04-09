;; Block indentation
(value_expression_block
  "{" @indent
  "}" @end) @indent

(type_expression_block
  "{" @indent
  "}" @end) @indent

(expr_block
  "{" @indent
  "}" @end) @indent

(type_builder_block
  "{" @indent
  "}" @end) @indent

;; Expression indentation
(map_expression
  "{" @indent
  "}" @end) @indent

(array_expression
  "[" @indent
  "]" @end) @indent

(class_constructor
  "{" @indent
  "}" @end) @indent

;; Argument lists
(arguments_list
  "(" @indent
  ")" @end)

(named_argument_list
  "(" @indent
  ")" @end)
