(
  (words) @injection.content
  (#set! injection.language "html")
  (#set! injection.combined)
)

(
  (control
    "{%" @injection.content.start
      (_)? @control.body
    "%}" @injection.content.end)
  (#not-contains? @control.body "extends" "block" "include")
  (#not-match? @control.body "(?i)^\s?\bend\w+\s?")
  (#set! injection.language "python")
  (#set! injection.combined)
)

(
  (render_expression
    "{{" @injection.content.start
      (_)? @expression.body
    "}}" @injection.content.end)
  (#not-contains? @control.body "|")
  (#set! injection.language "python")
)
