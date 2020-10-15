memo <- function(...){
  templ <- system.file("rmarkdown", "templates", "memo", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}
