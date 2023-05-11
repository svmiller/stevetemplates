#' Steve's 3rd Article/Manuscript Template
#'
#' Another template for academic articles/manuscripts. Please note that
#' `xelatex` is functionally required for this template/function.
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
#' for this template. Just about everything is carried over from the 2nd article
#' template. The user will want to pay careful attention in the skeleton/example
#' file about how the YAML is structured for author information.
#'
#'
#' | FIELD  | DESCRIPTION |
#' | ------ | ----------- |
#' | `author` | author information with support for subfields of name, email, author order, and affiliation code |
#' | `affils` | affiliation information corresponding with the authors. Sync code here with the information in the author field. |
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
#' | `remove-emails` | optional, defaults to FALSE. If TRUE, removes author email information from document preamble. |
#' | `remove-paper-info` | optional, defaults to FALSE. If TRUE, removes optional paper information you may want to include. |
#' | `paper-info` | Additional information you may want to include about the paper. |
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to [`rmarkdown::pdf_document`].
#' @md
#' @export
#'
article3 <- function(...){
  templ <- system.file("rmarkdown", "templates", "article3", "resources", "template.tex", package = "stevetemplates")
  rmarkdown::pdf_document(template = templ,
                          latex_engine = "xelatex",
                          ...)
}

#' @rdname article3
#' @export
templ_article3 <- function(){
  print(system.file("rmarkdown", "templates", "article3", "resources", "template.tex", package = "stevetemplates"))
}
