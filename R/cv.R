cv <- function(...){
  templ <- system.file("rmarkdown", "templates", "cv", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}
