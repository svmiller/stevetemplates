#' Steve's Word Manuscript Template
#'
#' This is the R Markdown template I use for journals that insist on Microsoft Word submissions.
#' The functionality is limited, mostly because Microsoft Word is limited. The only real use
#' here is the effective anonymity that emerges in the Word document when the primary
#' workflow is still built around compilation to a LaTeX PDF.
#'
#'
#' @inheritParams rmarkdown::word_document
#' @param ... Arguments to [`rmarkdown::word_document`].
#' @md
#' @export
#'
word <- function(...){
  templ <- system.file("rmarkdown", "templates", "word", "resources", "template.docx", package = "stevetemplates")
  rmarkdown::word_document(reference_docx = templ,
                          ...)
}

#' @rdname word
#' @export
templ_word <- function(){
  print(system.file("rmarkdown", "templates", "word", "resources", "template.docx", package = "stevetemplates"))
}
