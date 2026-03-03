; Comments
(comment) @comment

; Strings
(string_literal) @string

; Numbers
(number_literal) @number

; Type specifiers (param, history, buffer, data, delay)
(type_specifier) @type

; Keywords
"require" @keyword.import

["if" "else"] @keyword.control

["while" "do" "for"] @keyword.control

["return" "break" "continue"] @keyword.return

; Function definitions
(function_declaration
  name: (identifier) @function)

; Function calls — identifier(args)
(postfix_expression
  object: (identifier) @function.call
  field: (call_member_expression))

; Method calls — obj.method(args)
(literal_member_expression
  field: (identifier) @function.method
  parameters: (call_member_expression))

; Property access — obj.prop
(literal_member_expression
  field: (identifier) @property)

; Inlet/outlet variables (in1, out2, etc.)
(inlet_outlet) @variable.special

; Operators
(assignment_operator) @operator

(binary_expression operator: _ @operator)

(unary_expression operator: _ @operator)

["?" ":"] @operator

; Punctuation
["(" ")" "[" "]" "{" "}"] @punctuation.bracket

[";" "," "."] @punctuation.delimiter

; Variables (catch-all)
(identifier) @variable
