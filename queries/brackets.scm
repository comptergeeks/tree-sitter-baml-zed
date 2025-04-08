; Bracket pairs
["(" ")"] @bracket
["[" "]"] @bracket
["{" "}"] @bracket
["{{" "}}"] @bracket

; Optional group for raw string hash delimiters
["#\"" "\"#"] @bracket
["##\"" "\"##"] @bracket
["###\"" "\"###"] @bracket
["####\"" "\"####"] @bracket
["#####\"" "\"#####"] @bracket

; String delimiters
["\"" "\""] @bracket
