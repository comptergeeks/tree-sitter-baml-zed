; Keywords
[
  "let"
  "fn"
  "type"
  "function"
  "template_string"
  "string_template"
  "test"
  "type_builder"
  "client"
  "class"
  "client<llm>"
  "generator"
  "retry_policy"
  "dynamic"
  "map"
] @keyword

; Type-related keywords
(type_alias "type" @keyword)

; Function-related
(expr_fn "fn" @keyword)
(lambda "=>" @operator)

; Operators
[
  "="
  "->"
  "=>"
  "|"
  "?"
  ".."
] @operator

; Punctuation
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "{{"
  "}}"
  ","
  ";"
  ":"
  "::"
  "."
] @punctuation.delimiter

; Types
(field_type (identifier) @type)
(base_type (identifier) @type)
(type_expression_block name: (identifier) @type)
(class_constructor class_name: (identifier) @type)

; Functions
(fn_app function_name: (identifier) @function)
(expr_fn name: (identifier) @function)
(value_expression_block
  keyword: (value_expression_keyword) @keyword
  name: (identifier) @function)

; Variables
(let_expr name: (identifier) @variable)
(value_expression name: (identifier) @variable)
(named_argument name: (identifier) @variable)
(class_field_value_pair field_name: (identifier) @variable)

; Attributes
(block_attribute "@@" @attribute (identifier) @attribute)
(field_attribute "@" @attribute (identifier) @attribute)

; Strings
(quoted_string_literal) @string
(raw_string_literal) @string
(unquoted_string_literal) @string

; Numbers
(numeric_literal) @number

; Comments
(comment) @comment
(doc_comment) @comment.doc
(block_comment) @comment
(trailing_comment) @comment

; Jinja expressions
(jinja_expression) @embedded
