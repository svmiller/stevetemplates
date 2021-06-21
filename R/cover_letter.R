#' Steve's (Non-Academic) Cover Letter Template
#'
#' A template for cover letters when applying for non-academic jobs. For more information, see here:
#' <https://twitter.com/stevenvmiller/status/1320831949469065218>. This template will force the use of
#' \code{xelatex}.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `author` | name of the author |
#' | `address` | the author's address, which can (and should) be piped with \code{|} separators |
#' | `email` | the author's email |
#' | `url` | the author's website domain |
#' | `phone` | the author's phone number |
#' | `fontawesome` | logical, defaults to `TRUE`. If `TRUE`, use \code{fontawesome} icons |
#' | `mainfont` | The main font to use with `xelatex`. I use \code{cochineal} here. Optional, but recommended. |
#' | `monofont` | The monospaced font to use with `xelatex`. I use \code{Fira Code} here. Optional, but recommended. |
#' | `date` | Specify a date format |
#' | `greetings` | Specify a salutations to start the letter |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'

cover_letter <- function(...){
  templ <- system.file("rmarkdown", "templates", "cover_letter", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}


#' @rdname cover_letter
#' @export
templ_cover_letter <- function() {
  print(system.file("rmarkdown", "templates", "cover_letter", "resources", "template.tex", package = "stevetemplates"))
}
