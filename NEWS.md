stevetemplates 0.5.0
---------------------------------------------------------------------

The newest release has the following additions and changes to pre-existing templates. Additions include:

- A template for HTML articles. This will allow the conversion of an academic manuscript to a presentable HTML article.
- A template for Microsoft Word manuscripts. Functionality for Word templates is somewhat limited so I recommend using this only for presentations that need to be anonymized for submission to an academic journal.

Changes include:

- Add `doublespacing` to `article2` document. Documentation and skeleton updated accordingly.
- Fix `\lfoot{}` and `\cfoot{}` problem in the CV template. HT: @waternumbers

stevetemplates 0.4.0
---------------------------------------------------------------------

The newest release has the following additions and changes to pre-existing templates. Additions include:

- A template for "anonymous" manuscripts. Note: `article` and `article2` have anonymous parameters built into them, but this is a template I created because one particular journal to which I submitted a manuscript once demanded that the anonymous manuscript look *exactly* a certain way. From that, what is now `anonms` in this package was born.

Changes include:

- `article`, `article2`, and `anonms` feature the "CSL" environment change that Pandoc recently rolled out. I think this came at the end of 2020. It is only relevant if you *don't* use natbib for handling references.

stevetemplates 0.3.0
---------------------------------------------------------------------

The newest release has the following additions and changes to pre-existing templates. Additions include:

- A statement template for making, well, statements and such.

Changes include:

- Took out some commented code in `article2` that was breaking things. R Markdown/Pandoc can punish you for commenting out code when you should remove it.
- Companion functions for isolating the system path of the template. These functions have a prefix of `templ_` and can be useful for a "make" approach to document preparation.


stevetemplates 0.2.0
---------------------------------------------------------------------

- Rename functions from, for example, `svm_article2` to `article2`.
- Add article template, CV template, non-ac résumé template, and memo template.
- Add full-fledged documentation.
- Clarify license is GPL-2
- Do `R CMD check` to make sure everything comes up green.
- Get rid of `tidyverse` import/dependency, since it just bogs down testing and is not required.
- Add "does file exist" tests, importantly for CRAN.

stevetemplates 0.1.0
---------------------------------------------------------------------

- Initial developmental release, with article2 template.
