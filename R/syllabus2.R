#' Steve's 2nd Syllabus Template
#'
#' This is the R Markdown template I use for my syllabi at Stockholm University.
#' Classes are structured a lot differently here, so a lot of what I'd like to
#' do or aspire to do has to change.
#'
#' # About YAML header fields
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `title` | Title of the class |
#' | `author` | Name(s) of the professor(s) |
#' | `term` | The term of the class (e.g. Fall 2024, Spring 2025, Summer 2025) |
#' | `dates` | A basic date range for the course (e.g. Feb. 20 - March 21) |
#' | `fontawesome` | Logical, defaults to TRUE, for use of Font Awesome icons |
#' | `email` | The email for the "course responsible" professor. It's a thing here. |
#' | `web` | Class website. Technically optional, but you really should use it. |
#' | `office` | Your office location. Technically optional, but you really should use it. |
#' | `one-teacher` | Specify this argument in the YAML as `TRUE` for classes with one professor. |
#' | `two-teachers` | Specify this argument in the YAML as `TRUE` for classes with two professors. Has implications for formatting. |
#' | `n-teachers` | Specify this argument in the YAML as `TRUE` for classes with more than two professors. Has implications for formatting. |
#'
#' # Additional Comments
#'
#' XeLaTeX is imposed by a standard use in RStudio. The one-/two-/n-teacher hack
#' is inspired by hackery in `article3` in this same package. Specify only one
#' of those.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
syllabus2 <- function(...){
  templ <- system.file("rmarkdown", "templates", "syllabus2", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}

#' @rdname syllabus2
#' @export
#'
templ_syllabus2 <- function(){
  print(system.file("rmarkdown", "templates", "syllabus2", "resources", "template.tex", package = "stevetemplates"))
}

