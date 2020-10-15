#' Steve's Non-Academic Résumé Template:
#'
#' A template for non-academic résumés . For more information, see here:
#' <http://svmiller.com/blog/2020/09/rmarkdown-template-non-academic-resume/>.
#' Do note that `xelatex` is functionally required for this template.
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
#' | `fontawesome` | logical, defaults to `TRUE`. If `TRUE`, use fontawesome icons |
#' | `email` | your email |
#' | `location` | your address |
#' | `phone` | your phone number |
#' | `github` | your Github username (optional) |
#' | `web:` | your domain name |
#' | `twitter` | your Twitter handle |
#' | `linkedin` | your LinkedIn ID |
#' | `includephoto` | logical, defaults to `FALSE`. If `TRUE`, includes photo of you in top-right of document. |
#' | `myphoto` | file name for your photo, only necessary if `includephoto: TRUE`. |
#' | `shift` | shift/adjust photo, defaults to '7in, -.25in' if `includephoto: TRUE` |
#' | `photobigness` | how big photo should be, adjust to taste if `includephoto: TRUE` |
#' | `photozoom` | adjust zoom on photo, defaults to 20% of textwidth (as LaTeX macro) if `includephoto: TRUE` |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'

resume <- function(...){
  templ <- system.file("rmarkdown", "templates", "resume", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}
