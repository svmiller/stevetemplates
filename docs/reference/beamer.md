# Steve's Beamer Template

This is the R Markdown template I use for in-class or in-person
presentations. For a discussion of some of its features, see here:
<http://svmiller.com/blog/2019/08/r-markdown-template-beamer-presentations/>.

## Usage

``` r
beamer(...)

templ_beamer()
```

## Arguments

- ...:

  Arguments to
  [`rmarkdown::beamer_presentation`](https://pkgs.rstudio.com/rmarkdown/reference/beamer_presentation.html).

## Details

Note that `xelatex` is not required for this template but is heavily
suggested. If you elect to use `xelatex`, you *must* supply something in
`titlefont:` and `mainfont:` that your particular LaTeX installation
will recognize. See discussion here:
<https://github.com/svmiller/stevetemplates/issues/4>

## About YAML header fields

|  |  |
|----|----|
| FIELD | DESCRIPTION |
| `title` | Title of the presentation |
| `subtitle` | Subtitle of the presentation. Optional, but useful. For in-class lectures, I put the class name here. |
| `institute` | List your department/college here. Optional. |
| `titlegraphic` | Put a path to university watermark here. Optional. |
| `scaletg` | Scale `titlegraphic` relative to the width of the document. Optional, defaults to .3 |
| `titlegraphshift` | Optional LaTeX commands to move around `titlegraphic`. Manually escape any LaTeX code you put here. Use with care. |
| `make149` | Logical, gives 14:9 dimension to presentation (my favorite). Optional, defaults to FALSE. |
| `mainfont` | The main font to use with `xelatex`. I use `Open Sans` here. Optional, but recommended. |
| `titlefont` | The font for slide titles. I use `Titillium Web` here. Optional, but recommended. |
| `primarycolor` | Specifies a "primary" color in six-digit RGB color. Defaults to `002F5F`. Optional. |
| `secondarycolor` | Specifies a "secondary" color in six-digit RGB color. Defaults to `9BB2CE`. Optional. |
| `no_toc_after` | When `TRUE`, disables table of contents at end of document. Optional. |
