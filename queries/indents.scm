; Blocks that should be indented
(type_expression_block
  "{" @indent
  "}" @outdent) @indent

(value_expression_block
  "{" @indent
  "}" @outdent) @indent

(expr_block
  "{" @indent
  "}" @outdent) @indent

(type_builder_block
  "{" @indent
  "}" @outdent) @indent

(map_expression
  "{" @indent
  "}" @outdent) @indent

(array_expression
  "[" @indent
  "]" @outdent) @indent

(class_constructor
  "{" @indent
  "}" @outdent) @indent
