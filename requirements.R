update.packages(lib.loc="/usr/local/lib/R/site-library", ask=FALSE, checkBuilt=TRUE, repos = "https://cloud.r-project.org")

list.of.packages <- c("devtools", "tidyverse", "reticulate", "mosaic", "logging")
install.packages(list.of.packages)