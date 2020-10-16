context("Does template exist")

templates_all <- list.files("inst/rmarkdown/templates")


for (i in templates_all) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.tex", package = "stevetemplates")))
}

