svm_article2 <- function(...){
  templ <- system.file("rmarkdown", "templates", "svm_article2", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}

