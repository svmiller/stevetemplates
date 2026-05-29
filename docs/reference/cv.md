# Steve's Academic CV Template

A template for academic CVs. For more information, see here:
<https://svmiller.com/blog/2016/03/svm-r-markdown-cv/>.

## Usage

``` r
cv(...)

templ_cv()
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
| `jobtitle` | appears as first row in the CV |
| `address` | appears as second row in the CV |
| `fontawesome` | logical, defaults to `TRUE`. If `TRUE`, use fontawesome icons |
| `email` | your email, for the third row |
| `github` | optional, displays Github user name on third row |
| `orcid` | optional, displays ORCID ID on third row |
| `phone` | optional, displays your phone number on third row |
| `web` | optional, displays your domain name on third row |
| `updated` | optional, displays (on third row) when file was last updated |
| `keywords` | not terribly useful, but some keywords to embed in PDF so Google may find it |
