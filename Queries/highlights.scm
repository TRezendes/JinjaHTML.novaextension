(control) @tag.framework.jinja

(render_expression) @tag.framework.jinja

(string_literal) @string

(comment) @comment

(binary_operator) @operator


["\{\%" "\{\{"] @tag.framework.bracket.left

["\%\}" "\}\}"] @tag.framework.bracket.right

(
  (identifier) @framework.jinja.keyword
  (#eq? @framework.jinja.keyword
    "block"
    "extends"
    "include"
    "filter"
    "macro"
    "set"
    "trans"
    "pluralize"
    "autoescape"
  )
)

(
  (identifier) @identifier.variable
  (#not-eq? @identifier.variable
    "block"
    "extends"
    "include"
    "filter"
    "macro"
    "set"
    "trans"
    "pluralize"
    "autoescape"
  )
)

[
  "block"
  "extends"
  "include"
  "filter"
  "macro"
  "set"
  "trans"
  "pluralize"
  "autoescape"
] @framework.jinja.keyword


(statement
  [
    "endtrans"
    "endblock"
    "endwith"
    "endfilter"
    "endmacro"
    "endcall"
    "endset"
    "endtrans"
    "endautoescape"
  ] @framework.jinja.keyword
)
