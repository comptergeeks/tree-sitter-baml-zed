;; Keywords
(["function" "class" "client" "prompt"] @keyword)

;; Type declarations
(["string" "int" "float" "bool" "array" "map" "literal"] @type)

;; Operators
(["=>" "->" "|"] @operator)

;; Constants
(["true" "false"] @constant.builtin)

;; Special variables
((identifier) @variable.builtin
 (#match? @variable.builtin "^(ctx|_)\\.[a-zA-Z_]+$"))

;; Function declarations
(function_declaration
  name: (identifier) @function)

;; Class declarations
(class_declaration
  name: (identifier) @type)

;; Parameters
(parameter
  name: (identifier) @variable.parameter
  type: (type_reference) @type)

;; Properties
(property_declaration
  name: (identifier) @property
  type: (type_reference) @type)

;; Template variables and expressions
(template_expression) @variable.special

;; Directives
(template_directive) @keyword.control

;; Comments
(comment) @comment
(docstring) @comment.documentation

;; Strings
(quoted_string) @string
(unquoted_string) @string
(block_string) @string
(template_string) @string

;; Block string delimiters
["#\"" "\"#"] @punctuation.special

;; Numbers
(number) @number

;; Punctuation
["(" ")" "[" "]" "{" "}" "<" ">" "," ":"] @punctuation.delimiter

;; Errors
(ERROR) @error
