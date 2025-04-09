;; Keywords
[
  "dynamic"
  "function"
  "test"
  "client"
  "generator"
  "retry_policy"
  "type_builder"
  "template_string"
  "string_template"
  "class"
  "enum"
  "type"
  "map"
  "fn"
  "let"
] @keyword

;; Identifier paths
(path_identifier) @variable
(namespaced_identifier) @namespace

;; String literals
(quoted_string_literal) @string
(raw_string_literal) @string
(unquoted_string_literal) @string.special

;; Numeric literals
(numeric_literal) @number

;; Comments
(comment) @comment
(doc_comment) @comment.doc
(block_comment) @comment

;; Types
(field_type (identifier) @type)
(array_notation) @type
(map_type) @type
(literal_type) @type
(field_type_with_attr) @type

;; Attributes
(field_attribute) @attribute
(block_attribute) @attribute

;; Operators
[
  "|"
  "="
  "?"
  "=>"
  "->"
  "::"
  "."
] @operator

;; Punctuation
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "<"
  ">"
  ","
  ";"
  ":"
  "@"
  "@@"
] @punctuation.bracket

;; Expression blocks
(expr_block) @expression

;; Functions
(expr_fn name: (identifier) @function)
(value_expression_block
  keyword: (value_expression_keyword) @keyword
  name: (identifier) @function)

;; Properties and fields
(value_expression name: (identifier) @property)
(type_expression name: (identifier) @property)
(class_field_value_pair field_name: (identifier) @property)

;; Template declarations
(template_declaration name: (identifier) @function)

;; Function applications
(fn_app function_name: (identifier) @function)

;; Named arguments
(named_argument name: (identifier) @variable.parameter)

;; Map expressions
(map_key) @property

;; Jinja expressions
(jinja_expression) @embedded
