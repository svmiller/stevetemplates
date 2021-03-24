#' Steve's 2nd Article/Manuscript Template
#'
#' Another template for academic articles/manuscripts. For more information, see here:
#' <http://svmiller.com/blog/2020/09/another-rmarkdown-article-template/>. Please note
#' that `xelatex` is functionally required for this template/function.
#'
#' If your version of TeX comes by way of Yihui Xie's \pkg{tinytex}, you'll want to
#' additionally install the "xurl" library. Otherwise, you'll get a vague error about a
#' missing LaTeX dependency. \code{tinytex::tlmgr_install("xurl")} should suffice. I
#' thank Ian Adams and Cornelius Hennch for finding this issue and pointing to this
#' solution.
#'
#' # About YAML header fields
#'
#' This section documents some of the YAML fields to know
#' for this template. Much should've been carried over from my
#' first article/manuscript template. Please yell at me/raise an issue
#' on the Github repo if I didn't.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `name` | name of the author |
#' | `affiliation` | the affiliation of the author|
#' | `thanks` | A place to thank people for their input, identify corresponding author, etc. |
#' | `abstract` | include an abstract of the paper here |
#' | `keywords` | some keywords for the manuscript |
#' | `anonymous` | logical, defaults to `FALSE`. If `TRUE`, scrubs all identifying author info for peer review |
#' | `removetitleabstract` | logical, defaults to `FALSE`. If `TRUE`, removes title/abstract for peer review (if you'd like) |
#' | `appendix` | optional, but specifies appendix figure/table prefices |
#' | `endnotes` | logical, defaults to `FALSE`. If `TRUE`, makes R Markdown footnotes as endnotes |
#' | `pandocparas` | logical, defaults to `FALSE`. If `TRUE`, keeps Pandoc's default paragraph format |
#' | `sansitup` | logical, defaults to `FALSE`. If `TRUE`, better mimics ACM's use of sans fonts for section headers |
#' | `mainfont` | optional (I think?), but it's the main font to use with `xelatex`. I use `cochineal` here. |
#' | `sansfont` | optional, only necessary if `sansitup: TRUE`. Specifies sans font. I recommend Linux Biolinum |
#' | `doublespacing` | optional, if anything is here to process, this will double-space the document. |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
article2 <- function(...){
  templ <- system.file("rmarkdown", "templates", "article2", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}

#' @rdname article2
#' @export
templ_article2 <- function(){
  print(system.file("rmarkdown", "templates", "article2", "resources", "template.tex", package = "stevetemplates"))
}
