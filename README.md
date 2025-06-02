**Jinja HTML** provides syntax highlighting for **Jinja HTML templates**.

<div style="display: flex;">
  <div style="width: 45%;">
  <figure>
    <figcaption>Without Jinja HTML</figcaption>
    <img src="https://raw.githubusercontent.com/TRezendes/JinjaHTML.novaextension/main/PreviewWithout.png" alt="Screenshot of a Jinja template document highlighted with the builtin HTML highlighter" />
  </figure>
  </div>
  <div style="width: 45%;">
    <figure>
    <figcaption><em>With</em> Jinja HTML</figcaption>
    <img src="https://raw.githubusercontent.com/TRezendes/JinjaHTML.novaextension/main/PreviewWith.png" alt="Screenshot of a Jinja template document highlighted with the Jinja HTML extension" />
    </figure>
  </div>
</div>

## Language Support

Jinja HTML provides highlighting and limited formatting for Jinja HTML templates, including highlighting python code within Jinja statements `{% %}`.

## Known Issues/Limitations

- Formatting is extremely limited:
  - Correctly indents the middle line when pressing return with the cursor between `{% block begin %}` and `{% endblock %}`
  - May sometimes correctly indent the next line following certain Jinja statements (but either this behavior is inconsistent, or I am imagining things)
  - Does not support the `Editor > Format Document/Selection` command
- Correctly highlights embedded CSS, but does not provide color previews
- The [HTML Validator extension](nova://extension/?id=panic.HTMLValidator&name=HTML%20Validator) is not invoked with this extension selected as the Syntax, as it would be with the built-in HTML Syntax

## Thanks & Acknowledgements

- Jinja HTML uses the [tree-sitter-jinja grammar](https://github.com/cathaysia/tree-sitter-jinja) by [cathaysia](https://github.com/cathaysia)
- Many thanks to J&G Features for their [Jinja 2 extension](nova://extension/?id=jgfeatures.Jinja2&name=Jinja2), which I have used since I first downloaded Nova. Jinja HTML borrows a few patterns from that extension
- This extension was developed on the ancestral land of the Susquehannock people
