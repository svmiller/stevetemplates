# Steve's Memo Template

A template for memos. For more information, see here:
<https://svmiller.com/blog/2019/06/r-markdown-memo-template/>.

## Usage

``` r
memo(...)

templ_memo()
```

## Arguments

- ...:

  Arguments to
  [`rmarkdown::pdf_document`](https://pkgs.rstudio.com/rmarkdown/reference/pdf_document.html).

## About YAML header fields

This section documents some of the YAML fields to know for this
template.

|                |                                                            |
|----------------|------------------------------------------------------------|
| FIELD          | DESCRIPTION                                                |
| `from`         | name of the author                                         |
| `to`           | the intended recipient                                     |
| `subject`      | the title of the memo                                      |
| `date`         | the date of the memo                                       |
| `memorandum`   | logical. If `TRUE`, includes MEMORANDUM on top of the memo |
| `graphics`     | logical. If `TRUE`, allows for graphic logo on memo        |
| `width`        | adjustable with for logo, if `graphics: TRUE`              |
| `logoposition` | position of logo, if `graphics: TRUE`                      |
| `logo`         | file for logo, if `graphics: TRUE`                         |
