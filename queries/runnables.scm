; Identify test functions as runnable
(value_expression_block
  keyword: (_TEST_KEYWORD) @_test
  name: (identifier) @run)
(#set! tag "baml-test")

; Identify other potentially runnable functions
(value_expression_block
  keyword: (_FUNCTION_KEYWORD) @_function
  name: (identifier) @run)
(#set! tag "baml-function")

; Identify client functions that might be runnable
(value_expression_block
  keyword: (_CLIENT_KEYWORD) @_client
  name: (identifier) @run)
(#set! tag "baml-client")
