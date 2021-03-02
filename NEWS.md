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
