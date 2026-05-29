# Steve's (Non-Academic) Cover Letter Template

A template for cover letters when applying for non-academic jobs. This
template will force the use of `xelatex`.

## Usage

``` r
cover_letter(...)

templ_cover_letter()
```

## Arguments

- ...:

  Arguments to
  [`rmarkdown::pdf_document`](https://pkgs.rstudio.com/rmarkdown/reference/pdf_document.html).

## About YAML header fields

This section documents some of the YAML fields to know for this
template.

|  |  |
|----|----|
| FIELD | DESCRIPTION |
| `author` | name of the author |
| `address` | the author's address, which can (and should) be piped with `|` separators |
| `email` | the author's email |
| `url` | the author's website domain |
| `phone` | the author's phone number |
| `fontawesome` | logical, defaults to `TRUE`. If `TRUE`, use `fontawesome` icons |
| `mainfont` | The main font to use with `xelatex`. I use `cochineal` here. Optional, but recommended. |
| `monofont` | The monospaced font to use with `xelatex`. I use `Fira Code` here. Optional, but recommended. |
| `date` | Specify a date format |
| `greetings` | Specify a salutations to start the letter |
