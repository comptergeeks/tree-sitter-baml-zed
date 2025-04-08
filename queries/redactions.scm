; Redact sensitive data in strings
(quoted_string_literal) @redact
(raw_string_literal) @redact

; Redact numeric values that might be sensitive
(numeric_literal) @redact

; Redact values in maps that might contain sensitive info
(map_entry
  key: (map_key)
  value: (_) @redact)

; Redact class constructor fields that might be sensitive
(class_field_value_pair
  field_name: (identifier)
  value: (_) @redact)

; Optionally redact specific fields that are likely to contain sensitive data
(class_field_value_pair
  field_name: (identifier) @_name
  value: (_) @redact
  (#match? @_name "(password|secret|key|token|credential)"))
