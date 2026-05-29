# Steve's Anonymous Manuscript Template

The R Markdown template Steve used once for an anonymous manuscript
submission that needed to look an exact way. I've used this only once
for a manuscript submission to a particular journal. It was not
published. I have not had the occasion to submit there again.

## Usage

``` r
anonms(...)

templ_anonms()
```

## Arguments

- ...:

  Arguments to
  [`rmarkdown::pdf_document`](https://pkgs.rstudio.com/rmarkdown/reference/pdf_document.html).

## About YAML header fields

This section documents some of the YAML fields to know for this
template. Honestly, this looks like a boilerplate R Markdown template. I
think `runhead` is the only parameter unique to this document. It's also
mandatory. Other fields that you can see in the skeleton (e.g. `title`,
`name`, `affiliation`) are borrowed from other templates and explicated
there.

|           |                                                           |
|-----------|-----------------------------------------------------------|
| FIELD     | DESCRIPTION                                               |
| `runhead` | A shortened version of `title` to treat as a running head |
