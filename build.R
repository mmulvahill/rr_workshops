#-------------------------------------------------------------------------------
# build.R
#   Build script for this project.  
#
# Project: CBC Reproducible Research Workshops
# Author: Matt Mulvahill, MS
#-------------------------------------------------------------------------------

#---------------------------------------
# Set up workspace
#---------------------------------------

# Set working directory
setwd("~/Projects/BERD/berd006_rr_workshops")

# Package and environ options
options(scipen = 99)
options(stringsAsFactors = FALSE)
options(width = 300) # specific to my monitors/working environment

# Load packages
library(tidyverse)
library(knitr)
library(rmarkdown)


#---------------------------------------
# Render presentations
#---------------------------------------

render("reproducible_reporting/Rmd/reporting_presentation.Rmd", 
       output_format = "all")#, output_dir = "output") 



