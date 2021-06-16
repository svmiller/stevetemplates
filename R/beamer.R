#' Steve's Beamer Template
#'
#' This is the R Markdown template I use for in-class or in-person presentations. For
#' a discussion of some of its features, see here:
#' <http://svmiller.com/blog/2019/08/r-markdown-template-beamer-presentations/>. Note
#' that `xelatex` is not required for this template but is heavily suggested.
#'
#' # About YAML header fields
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `title` | title of the presentation |
#' | `subtitle` | subtitle of the presentation. Optional, but useful. For in-class lectures, I put the class name here. |
#' | `institute` | Optional, but list your department/college here. |
#' | `titlegraphic` | Optional, but put a university watermark here. |
#' | `scaletg` | Optional, but scale `titlegraphic` relative to the width of the document. Defaults to .3 |
#' | `make149` | Optional, but gives 14:9 dimension to presentation (my favorite) |
#' | `mainfont` | Optional but it's the main font to use with `xelatex`. I use `Open Sans` here. |
#' | `titlefont` | Optional for fancy fonts for slide titles. I use `Titillium Web` here. |
#' | `primarycolor` | Optional, but specifies a "primary" color in six-digit RGB color. Defaults to `522D80` |
#' | `secondarycolor` | Optional, but specifies a "secondary" color in six-digit RGB color. Defaults to `F56600` |
#'
#'
#' @inheritParams rmarkdown::beamer_presentation
#' @param ... Arguments to [`rmarkdown::beamer_presentation`].
#' @md
#' @export
#'
beamer <- function(...){
  templ <- system.file("rmarkdown", "templates", "beamer", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::beamer_presentation(template = templ,
                          ...)
}

#' @rdname beamer
#' @export
templ_beamer <- function(){
  print(system.file("rmarkdown", "templates", "beamer", "resources", "template.tex", package = "stevetemplates"))
}
