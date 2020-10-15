#' Steve's First Article/Manuscript Template
#'
#' A template for academic articles/manuscripts. For more information, see here:
#' <http://svmiller.com/blog/2020/09/another-rmarkdown-article-template/>.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `name` | name of the author |
#' | `affiliation` | the affiliation of the author|
#' | `thanks` | A place to thank people for their input, identify corresponding author, etc. |
#' | `abstract` | include an abstract of the paper here |
#' | `keywords` | some keywords for the manuscript |
#' | `anonymous` | logical, defaults to `FALSE`. If `TRUE`, scrubs all identifying author info for peer review |
#' | `removetitleabstract` | logical, defaults to `FALSE`. If `TRUE`, removes title/abstract for peer review (if you'd like) |
#' | `appendix` | optional, but specifies appendix figure/table prefices |
#' | `endnotes` | logical, defaults to `FALSE`. If `TRUE`, makes R Markdown footnotes as endnotes |
#' | `twocol` | logical, defaults to `FALSE`. If `TRUE`, makes document two-column format |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
article <- function(...){
  templ <- system.file("rmarkdown", "templates", "article", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}
