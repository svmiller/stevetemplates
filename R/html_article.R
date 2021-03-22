#' Steve's HTML Article Template
#'
#' This is the R Markdown template I added in support of another package, which facilitates
#' the conversion of academic articles to HTML format.
#'
#'
#' @inheritParams rmarkdown::html_document
#' @param ... Arguments to [`rmarkdown::word_document`].
#' @md
#' @export
#'
html_article <- function(...){
  templ <- system.file("rmarkdown", "templates", "html_article", "resources", "template.html", package = "stevetemplates")
  rmarkdown::html_document(template = templ,
                           ...)
}

#' @rdname html_article
#' @export
templ_html_article <- function(){
  print(system.file("rmarkdown", "templates", "html_article", "resources", "template.html", package = "stevetemplates"))
}
