# vim-hugo

This is a Vim plugin for web development with the static site generator
[Hugo](https://gohugo.io/).

# HTML

- sets filetype for hugo html files to gohtmltmpl, need to install a syntax file for
  gohtmltmpl. Something like [vim-go](https://github.com/fatih/vim-go) will do
- `:h path` includes default directories used by Hugo, like `layouts/partials`,
  which is convenient to start editing files with `:h gf` and friends.
- `matchit` patterns are extended to support Go template. A compiler plugin is made
- available so you can build your website from inside
  Vim with `compiler hugo | make`, and build errors will populate the quickfix list.

# Markdown

Markdown syntax highlight is also improved to add support for shortcodes and YAML
front matter.

Embedded languages inside the `{{< highlight >}}` shortcode will be highlighted. For
example, to highlight Python code, add `let g:markdown_fenced_languages=['python']`
to your `.vimrc` or `init.vim`.

```
markdown {{< highlight python >}} import foo {{< /highlight >}}
```

If you want to highlight JavaScript code with `js` as a shorthand, use `let
g:markdown_fenced_languages=['js=javascript']`:

```
markdown {{< highlight js >}} import { bar } from './foo' {{< /highlight >}}
```

This is reused from Vim's built-in syntax files for markdown, so it'll also be used
for markdown code blocks.
