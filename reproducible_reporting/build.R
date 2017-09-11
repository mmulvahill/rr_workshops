#-------------------------------------------------------------------------------
# build.R
#   Build script for this project.  
#
# Project: CBC Reproducible Research Workshops
# Author: Matt Mulvahill, MS
#-------------------------------------------------------------------------------

# all workspace setup and sequential file execution is handled by the primary
# Rmarkdown presentation doc.
#
# All we need to do here is compile the presentation -- source("build.R")
rmarkdown::render("reporting_presentation.Rmd", output_format = "all")



