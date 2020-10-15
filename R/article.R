article <- function(...){
  templ <- system.file("rmarkdown", "templates", "article", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}
