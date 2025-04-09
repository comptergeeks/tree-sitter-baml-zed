;; Standard brackets
("(" @open ")" @close)
("[" @open "]" @close)
("{" @open "}" @close)
("<" @open ">" @close)

;; String quotes
("\"" @open "\"" @close)

;; Jinja expression delimiters
("{{" @open "}}" @close)

;; Block comment delimiters
("{//" @open "//}" @close)
