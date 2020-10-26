context("Does the template render?")

templates_all <- list.files("inst/rmarkdown/templates")

test_render <- function(templ) {

  # don't run on CRAN
  # copied from rstudio/rticles, if I'm being honest
  if (!identical(Sys.getenv("NOT_CRAN"), "true")) return()

  # work in a temp directory
  dir <- tempfile()
  dir.create(dir)
  oldwd <- setwd(dir)
  on.exit(setwd(oldwd), add = TRUE)

  # create a draft of the format
  testdoc <- paste0(templ,".Rmd")
  rmarkdown::draft(
    testdoc, template = templ, package="stevetemplates",
    create_dir = FALSE, edit = FALSE
  )
  expect_true(file.exists(paste0(templ,".Rmd")))
  message('Rendering the ', templ, ' format...')
  output_file <- rmarkdown::render(testdoc, quiet = TRUE)
  assert(paste(templ, "format works"), {
    file.exists(output_file)
  })
}

for (i in templates_all) {
  test_render(i)
}

