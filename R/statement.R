#' Steve's Statement Template
#'
#' A template for what I term "statements." These are things like research statements and teaching statements when I'm
#' applying for jobs or doing end-of-the-semester busy work for the proverbial "ball and chain."
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `title` | title of the document, appears on first row |
#' | `author` | name of the author, appears on second row |
#' | `affiliation` | institutional affiliation, appears on third row |
#' | `email` | your email, for the fourth row |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'

statement <- function(...){
  templ <- system.file("rmarkdown", "templates", "statement", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}


#' @rdname statement
#' @export
templ_statement <- function() {
  print(system.file("rmarkdown", "templates", "statement", "resources", "template.tex", package = "stevetemplates"))
}
