resume <- function(...){
  templ <- system.file("rmarkdown", "templates", "resume", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}
