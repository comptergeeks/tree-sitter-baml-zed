;; Keywords
((identifier) @keyword
 (#match? @keyword "^(function|test|client|generator|retry_policy|type_builder|class|enum|type|map|fn|let|dynamic)$"))

;; Identifiers
(identifier) @variable

;; String literals
(quoted_string_literal) @string
(raw_string_literal) @string
(unquoted_string_literal) @string

;; Numeric literals
(numeric_literal) @number

;; Comments
(comment) @comment
(doc_comment) @comment.doc
(block_comment) @comment

;; Types
(field_type) @type

;; Functions
(expr_fn name: (identifier) @function)
(value_expression_block name: (identifier) @function)

;; Properties
(value_expression name: (identifier) @property)
(type_expression name: (identifier) @property)

;; Parameters
(named_argument name: (identifier) @variable.parameter)

;; Punctuation
["(" ")" "[" "]" "{" "}" "<" ">" "," ";" ":"] @punctuation.bracket
["|" "=" "?" "=>" "->"] @operator

;; Attributes
(field_attribute) @attribute
(block_attribute) @attribute
