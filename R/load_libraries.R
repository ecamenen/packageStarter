# sudo apt install libfontconfig1-dev libfreetype6-dev libharfbuzz-dev libfribidi-dev libcairo2-dev

#' Load libraries
#'
#' Load libraries
#'
#' @param librairies A list of libraries
#'
#' @export
load_libraries <- function(librairies) {
    for (l in librairies) {
        if (!(l %in% installed.packages()[, "Package"])) {
            install.packages(l)
        }
        suppressPackageStartupMessages(
            library(
                l,
                character.only = TRUE,
                warn.conflicts = FALSE,
                quietly = TRUE,
                verbose = FALSE
            )
        )
    }
}

libs <- c(
    # "BiocCheck",
    "bookdown",
    "bsplus",
    "buildmer",
    "car",
    "config",
    "correlation",
    "corrplot",
    "covr",
    "data.table",
    "DataExplorer",
    "Deriv",
    "devtools",
    "dlookr",
    "dplyr",
    "DT",
    "emmeans",
    "factoextra",
    "FactoMineR",
    "ggplot2",
    "ggpubr",
    "ggrepel",
    "ggResidpanel",
    # "ggstatsplot",
    "glue",
    "golem",
    "gplots",
    "graphics",
    "grDevices",
    "gridExtra",
    "htmltools",
    "htmlwidgets",
    "igraph",
    "janitor",
    "kableExtra",
    "knitr",
    "lintr",
    "lme4",
    "lmerTest",
    "lubridate",
    "magrittr",
    "markdown",
    "MASS",
    "methods",
    # "mixOmics",
    "modelr",
    "naniar",
    "nnet",
    "openxlsx",
    "optparse",
    "pander",
    "parallel",
    "pbapply",
    "pkgload",
    # "plotl",
    "plotly",
    "plyr",
    "processx",
    "RColorBrewer",
    "readr",
    "readxl",
    "reshape2",
    "RGCCA",
    "rlang",
    "rmarkdown",
    "rstatix",
    "scales",
    "see",
    "sf",
    "shiny",
    "shinyFeedback",
    "shinyjs",
    "sjPlot",
    "skimr",
    # "spData",
    "stats",
    "stringr",
    "styler",
    "testthat",
    "texreg",
    "tidyr",
    "tidyselect",
    "tidyverse",
    # "tmap",
    "tmaptools",
    "usethis",
    "utils",
    "venn",
    "VIM",
    "viridis",
    "visNetwork",
    "wesanderson"
)
