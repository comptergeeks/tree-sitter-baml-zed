;; Redact sensitive string content
(quoted_string_literal) @redact
(raw_string_literal) @redact

;; Redact sensitive numeric values
(numeric_literal) @redact

;; Redact potentially sensitive values in maps
(map_entry
  key: (_)
  value: (_) @redact)

;; Redact values in key-value expressions
(value_expression
  name: (_)
  value: (_) @redact)
