# Steve's Statement Template

A template for what I term "statements." These are things like research
statements and teaching statements when I'm applying for jobs or doing
end-of-the-semester busy work for the proverbial "ball and chain."

## Usage

``` r
statement(...)

templ_statement()
```

## Arguments

- ...:

  Arguments to
  [`rmarkdown::pdf_document`](https://pkgs.rstudio.com/rmarkdown/reference/pdf_document.html).

## About YAML header fields

This section documents some of the YAML fields to know for this
template.

|               |                                                 |
|---------------|-------------------------------------------------|
| FIELD         | DESCRIPTION                                     |
| `title`       | title of the document, appears on first row     |
| `author`      | name of the author, appears on second row       |
| `affiliation` | institutional affiliation, appears on third row |
| `email`       | your email, for the fourth row                  |
