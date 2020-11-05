## Resubmission

A manual inspection resulted in a request to address the following issues:

- Software names and API names (e.g. 'R Markdown') should be in single quotes in the title and description of the DESCRIPTION file. I do that here.
- The R documentation files should include more examples. Whereas this is a package of R Markdown templates, this is not really conceivable. That said, I did write another test to check that the templates would render as expected (and they do). Given the peculiarities of LaTeX configurations, I disable this test for CRAN.

## Test environment

- ubuntu 18.04, R 4.0.3

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, 0 notes. More thorough checks identified one warning (about a possibly misspelled word that was ultimately a false positive) and an invalid URI in the README (which I thank the CRAN crew for finding). 


## Changes upon manual inspection at CRAN


## Downstream dependencies

This is a new package with no downstream dependencies to note.
