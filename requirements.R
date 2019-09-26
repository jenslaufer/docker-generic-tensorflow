update.packages(lib.loc="/usr/local/lib/R/site-library", ask=FALSE, checkBuilt=TRUE, repos = "https://cloud.r-project.org")

list.of.packages <- c("devtools", "reticulate",  "mosaic", "logging", "tidyverse")
install.packages(new.packages)