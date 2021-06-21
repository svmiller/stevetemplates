context("Does template exist")

#templates_all <- list.files("inst/rmarkdown/templates")
templates_all <- list.files(system.file("rmarkdown", "templates", package="stevetemplates"))

for (i in templates_all[c(1:6,8:11)]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.tex", package = "stevetemplates")))
}


for (i in templates_all[c(7)]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.html", package = "stevetemplates")))
}

for (i in templates_all[c(12)]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.docx", package = "stevetemplates")))
}
