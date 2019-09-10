usethis::use_git()

usethis::use_github()

if (!dir.exists("docs")) {
  dir.create("docs")
}

if (!dir.exists("docs/img")) {
  dir.create("docs/img")
}

if (!dir.exists("docs/css")) {
  dir.create("docs/css")
}

if (!dir.exists("docs/libs")) {
  dir.create("docs/libs")
}

rmarkdown::draft("docs/index.Rmd",
                 template = "xaringan",
                 package = "xaringan")


rstudioapi::navigateToFile("docs/index.Rmd")


xaringan::summon_remark(to = "docs/libs")
