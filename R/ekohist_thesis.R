#' Stockholm University EKOHIST Thesis Template
#'
#' This is a specialty LaTeX R Markdown template for which I am not anticipating
#' there will be high demand. This is for master's students in the Department of
#' Economic History and International Relations at Stockholm University, which
#' currently employs me and is always welcome to give me more money.
#'
#' If your version of TeX comes by way of Yihui Xie's \pkg{tinytex}, you may
#' want to additionally install the "xurl" library. Otherwise, you'll get a
#' vague error about a missing LaTeX dependency.
#' \code{tinytex::tlmgr_install("xurl")} should suffice. I thank Ian Adams and
#' Cornelius Hennch for finding this issue and pointing to this solution.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template. There is not much here that is particularly important.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `author` | name of the author (i.e. the student) |
#' | `supervisor` | the name of the supervising professor (i.e. probably me) |
#' | `field` | the field of study (i.e. typically economic history of IR) |
#' | `mainfont` | optional(?), but it's the main font to use with `xelatex`. |
#' | `abstract` | include an abstract of the paper here |
#' | `keywords` | some keywords for the manuscript |
#' | `pandocparas` | logical, defaults to `FALSE`. If `TRUE`, keeps Pandoc's
#' default paragraph format |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
ekohist_thesis <- function(...){
  templ <- system.file("rmarkdown", "templates", "ekohist_thesis", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}

#' @rdname article2
#' @export
templ_ekohist_thesis <- function(){
  print(system.file("rmarkdown", "templates", "ekohist_thesis", "resources", "template.tex", package = "stevetemplates"))
}
