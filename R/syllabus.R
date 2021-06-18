#' Steve's Syllabus Template
#'
#' This is the R Markdown template I use for my syllabi. For
#' a discussion of some of its features, see here:
#' <http://svmiller.com/blog/2016/07/r-markdown-syllabus/>. The skeleton also
#' includes code for a calendar. I discuss this here:
#' <http://svmiller.com/blog/2020/08/a-ggplot-calendar-for-your-semester/>
#'
#' # About YAML header fields
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `title` | Title of the class |
#' | `author` | Name(s) of the professor(s) |
#' | `date` | The semester |
#' | `email` | Your email. Technically optional, but you really should use it. |
#' | `web` | Class website. Technically optional, but you really should use it. |
#' | `officehours` | Your office hours. Technically optional, but you really should use it. |
#' | `office` | Your office location. Technically optional, but you really should use it. |
#' | `classroom` | The classroom location. Technically optional, but you really should use it. |
#' | `classhours` | When/for how long the class meets in a given session. Technically optional, but you really should use it. |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
syllabus <- function(...){
  templ <- system.file("rmarkdown", "templates", "syllabus", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          ...)
}

#' @rdname syllabus
#' @export
#'
templ_syllabus<- function(){
  print(system.file("rmarkdown", "templates", "syllabus", "resources", "template.tex", package = "stevetemplates"))
}

