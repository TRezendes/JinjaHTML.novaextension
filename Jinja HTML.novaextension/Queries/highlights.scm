(control) @jinja.tag.framework
((statement
  (extends_statement
    "extends" @jinja.keyword
    (string_literal
      ["\"" "'"] @string.delimiter.left
      (_)? @string
      ["\"" "'"] @string.delimiter.right
    )
  )
)

((statement
    (block_statement
      "block" @jinja.keyword
      (identifier) @identifier.variable
    )
  )
)

(control ["{%" "%}"]) @tag.framework.bracket

(render_expression
  "{{" @identifier.variable.bracket
  (identifier) @identifier.variable
  "}}" @identifier.variable.bracket
)
