#' Steve's Memo Template
#'
#' A template for memos. For more information, see here:
#' <http://svmiller.com/blog/2019/06/r-markdown-memo-template/>.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `from` | name of the author |
#' | `to` | the intended recipient |
#' | `subject` | the title of the memo |
#' | `date` | the date of the memo |
#' | `memorandum` | logical. If `TRUE`, includes MEMORANDUM on top of the memo |
#' | `graphics` | logical. If `TRUE`, allows for graphic logo on memo |
#' | `width` | adjustable with for logo, if `graphics: TRUE` |
#' | `logoposition` | position of logo, if `graphics: TRUE` |
#' | `logo` | file for logo, if `graphics: TRUE` |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export

memo <- function(...){
  templ <- system.file("rmarkdown", "templates", "memo", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}


#' @rdname memo
#' @export
templ_memo <- function() {
  print(system.file("rmarkdown", "templates", "memo", "resources", "template.tex", package = "stevetemplates"))
}

