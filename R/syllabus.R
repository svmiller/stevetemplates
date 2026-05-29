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
#' | `coteaching` | If TRUE, changes format to allow for a second (third, or fourth) co-teacher |
#'
#' # Additional Comments
#'
#' There is a nested conditionality for co-teachers. If `coteaching` is TRUE,
#' format changes to allow a second teacher. Conditional on `coteaching` being
#' TRUE *and* there being an `email3` entry, a third co-teacher is added and
#' entries for the third teacher's office hours and office are assumed. If
#' `coteaching` is TRUE, `email3` has an entry *and* there is an `email4` entry,
#' a fourth co-teacher is added.
#'
#' In the case of the above nested conditionality for co-teachers, be advised this
#' was a hacky (sic) solution until I got too frustrated with doing it this way.
#' You may want to look at the `syllabus2` template in the same package.
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

