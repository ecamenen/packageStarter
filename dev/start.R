library(devtools)

name <- "packageStarter"
#available::available(name)

path0 <- file.path("~", "bin")
setwd(path0)
path <- file.path(path0, name)
if (!file.exists(path)) {
  system(paste("git clone  https://github.com/ecamenen/packageStarter.git", name))
}
setwd(path)

for (f in c(".git*", "man", "R", "inst")) {
  system(paste("rm -rf", f))
}

create_package(path)

# Remove git remote in DESCRIPTION
# golem::set_golem_name(name)
use_description(
    fields = list(
        Title = "",
        `Authors@R` = c(
            person(
              "Etienne",
              "Camenen",
              email = "etienne.camenen@gmail.com",
              role = c("aut", "cre"),
              comment=c(ORCID = "0000-0002-2398-0190")
            ) #,
            #person("", "", role = "aut")
        ),
        Description = "",
        License = "GPL-3",
        Version = "0.1.0"
    )
)
# use_author()

# Do not run
to_ignore <- c(
  ".Rproj.user",
  ".Rhistory",
  ".idea/",
  "inst/extdata/",
  "Meta/",
  ".local/",
  ".config/",
  "doc/",
  "Meta/",
  ".cache/",
  "dev/"
)

for (f in to_ignore) {
  use_git_ignore(f)
  use_build_ignore(f)
}

for (f in c("*.~lock.*", "*.tar.gz", "*.Rproj")) {
  use_git_ignore(f)
}

for (f in c("app_config.R", "\\.github", ".RData")) {
  use_build_ignore(f)
}

use_git(message = "Initial commit")
# Before that, create a github project online
use_github()
# use_git_remote(url = paste0("https://github.com/ecamenen/", name))

use_readme_rmd()
title <- "Get started"
use_vignette(snakecase::to_any_case(title), title)
use_package_doc()
# promptPackage(name)
use_testthat()
# use_spell_check()

for (p in c(
  "magrittr"
)) {
  use_package(p)
}
use_package("tidyverse", type = "Depends")
# use_import_from()

use_coverage()
use_github_actions()
use_github_actions_badge()
# use_cran_badge()
use_data_raw()
