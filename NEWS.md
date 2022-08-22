# stevetemplates 0.8.0 (in development)


- Bug fix for center footer in the non-academic résumé template. HT @mwpeterson for finding this.
- Bug fix for color in the CV template. HT @dojobo for finding this.
- Disabled `titlesec` in `cv`. This is admittedly an ad hoc adjustment based on a new computer I have.
- Default Beamer colors changed from Clemson University colors to Stockholm University colors.
- Default `titlegraphic` scaling in `beamer` is now .3, because of new gig.

# stevetemplates 0.7.0


- ORCID links in the CV.
- Adjust behavior for `updated` field in the CV template. If `TRUE`, the last update appears in the third row of the header. If `FALSE`, it appears in the center footer.
- Add AMS mathematical facilities to the first article (`article`) template. HT @shenkin.
- Integrate `appendixletter` with LaTeX package `endfloat` in the second article template. This is useful if you want specialty table/figure numbering *and* you want an anonymous document.
- Adjust Word skeleton to be more minimal and actually render.
- Some added CSS for better tables in the HTML template.
- The `article2` template now supports captions for code chunks, courtesy of [this Stack Overflow post](https://stackoverflow.com/questions/50702942/does-rmarkdown-allow-captions-and-references-for-code-chunks). This appears in the YAML as `chunkcaption: TRUE` if you want to enable it. If you enable it, change the `knitr` code to what you see (commented) in the setup chunk. Consult the Stack Overflow thread for more information.

# stevetemplates 0.6.0


The newest release has the following additions and changes to pre-existing templates. Additions include:

- A template for Beamer presentations.
- A template for course syllabi, formatted to LaTeX PDFs.
- A template for cover letters, formatted to LaTeX PDFs.

Changes include:

- A user-specified date format in YAML for the CV template.


# stevetemplates 0.5.0


The newest release has the following additions and changes to pre-existing templates. Additions include:

- A template for HTML articles. This will allow the conversion of an academic manuscript to a presentable HTML article.
- A template for Microsoft Word manuscripts. Functionality for Word templates is somewhat limited so I recommend using this only for presentations that need to be anonymized for submission to an academic journal.

Changes include:

- Add `doublespacing` to `article2` document. Documentation and skeleton updated accordingly.
- Fix `\lfoot{}` and `\cfoot{}` problem in the CV template. HT: @waternumbers
- Clarification about a missing LaTeX dependency from `{tinytex}` installations for the `article2` template. I thank Ian Adams and Cornelius Hennch for pointing to this issue.
- Force tables/figs to back of document in `article2` when `anonymous: TRUE`. This comes by way of the `endfloat` package in LaTeX.


# stevetemplates 0.4.0


The newest release has the following additions and changes to pre-existing templates. Additions include:

- A template for "anonymous" manuscripts. Note: `article` and `article2` have anonymous parameters built into them, but this is a template I created because one particular journal to which I submitted a manuscript once demanded that the anonymous manuscript look *exactly* a certain way. From that, what is now `anonms` in this package was born.

Changes include:

- `article`, `article2`, and `anonms` feature the "CSL" environment change that Pandoc recently rolled out. I think this came at the end of 2020. It is only relevant if you *don't* use natbib for handling references.

# stevetemplates 0.3.0


The newest release has the following additions and changes to pre-existing templates. Additions include:

- A statement template for making, well, statements and such.

Changes include:

- Took out some commented code in `article2` that was breaking things. R Markdown/Pandoc can punish you for commenting out code when you should remove it.
- Companion functions for isolating the system path of the template. These functions have a prefix of `templ_` and can be useful for a "make" approach to document preparation.


# stevetemplates 0.2.0


- Rename functions from, for example, `svm_article2` to `article2`.
- Add article template, CV template, non-ac résumé template, and memo template.
- Add full-fledged documentation.
- Clarify license is GPL-2
- Do `R CMD check` to make sure everything comes up green.
- Get rid of `tidyverse` import/dependency, since it just bogs down testing and is not required.
- Add "does file exist" tests, importantly for CRAN.

# stevetemplates 0.1.0


- Initial developmental release, with article2 template.
