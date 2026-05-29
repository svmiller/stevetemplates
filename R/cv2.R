#' Steve's Second Academic CV Template
#'
#' A template for academic CVs. This is an evolution of the first one, though
#' has slightly different aesthetic features you can see for yourself. For more
#' information, see here: <http://svmiller.com/blog/2016/03/svm-r-markdown-cv/>.
#'  You can also check my current CV.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `author` | name of the author |
#' | `jobtitle` | appears as first row in the CV |
#' | `address` |appears as second row in the CV |
#' | `fontawesome` | logical, defaults to `TRUE`. If `TRUE`, use fontawesome icons |
#' | `email` | your email, for the third row |
#' | `github` | optional, displays Github user name on third row |
#' | `orcid` | optional, displays ORCID ID on third row |
#' | `phone` | optional, displays your phone number on third row |
#' | `web` | optional, displays your domain name on third row |
#' | `updated` | optional, displays (on third row) when file was last updated. If FALSE or omitted, date of update is communicated in footer |
#' | `rdateformat` | optional, but takes R syntax to format date of update.  |
#' | `keywords` | not terribly useful, but some keywords to embed in PDF so Google may find it |
#'
#' # Additional Comments
#'
#' The `fontawesome` argument calls the `fontawesome5` package in LaTeX. This
#' assumes the use of TeXLive 2015 at the latest.
#'
#' `latex_engine` is hard-set as "xelatex". This permits greater flexibility in
#' use of fonts through the `mainfont` argument you can specify in the YAML.
#'
#' I'll be frank that disabling `fontawesome` doesn't make much sense to me,
#' though the option is there if you want it. The CV just won't look as nice
#' with it disabled.
#'
#' `fontawesome` controls the use of icons in the header, though icons for
#' ORCID and OSF come from the `academicicons` package. Everything else comes
#' from `fontawesome5`.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'

cv2 <- function(...){
  templ <- system.file("rmarkdown", "templates", "cv2", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}


#' @rdname cv2
#' @export
templ_cv2 <- function() {
  print(system.file("rmarkdown", "templates", "cv2", "resources", "template.tex", package = "stevetemplates"))
}
