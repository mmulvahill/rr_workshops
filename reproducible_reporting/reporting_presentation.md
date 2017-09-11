<!--
## Overview
# 
# X 1. Overview of the Aspects of Reproducible Research (link to ASA doc)
# X 1. Basic Guidelines for Scientific Computing  (folder structure, relative paths, etc.)
# 1. Reproducible Reporting - What is it?
# 1. Motivating Examples (patients added, data revised, reviewer questions, reader questions)
# 1. Use Scenarios - Analysis notebooks, analysis reports, manuscript, other (presentations, web pages, etc.)
# 1. Technologies/Tools ("pipelines") (Rmd -> md -> html/doc/pdf/ )
# 1. Rmarkdown via RStudio
#
-->
Prereqs -- Software to install
------------------------------

**Test software install on fresh computer**

-   [R](https://cloud.r-project.org/)
-   [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

**If you are not using RStudio, you will also need these:**

-   [pandoc](https://pandoc.org/installing.html)
-   `rmarkdown` package
-   `knitr` package

``` r
install.packages(c("rmarkdown", "knitr"))
```

Defining Reproducibility
========================

<!--
##

<div class="verticalcenterdiv">
> Reproducibility is the only thing an investigator can guarantee about a study.

[Roger
Peng](https://simplystatistics.org/2014/06/06/the-real-reason-reproducible-research-is-important/)
</div>

<div class="footer"> Introduction </div>
-->

-   Reproducibility
    -   “A study is reproducible if you can take the original data and the computer code used to analyze the data and reproduce all of the numerical findings from the study.” <br> <br> <br>
-   Replicability
    -   “...the act of repeating an entire study, independently of the original investigator without the use of original data (but generally using the same methods).”

ASA Recommendations to Funding Agencies Supporting Reproducible Research - Broman et al. (2017)

<!-- ****************************************** -->
<!-- ******* Start of Principles series ******* -->
<!-- ****************************************** -->
<!-- ** 1.   ********************************** -->

**Principles of Reproducibility**

-   Ideally, the use of ***publicly available data***.
-   Use of ***version control*** for all code development.
-   Exclusive use of ***open-source software***, freely available worldwide.
-   ***End-to-end scripting*** of research (data processing/cleaning, statistical analyses, visualizations, and ***report/manuscript generation***) with full workflow made available to others.
-   Use of ***container/virtual machine tools*** to capture software versions, dependencies, and platform specifics.
-   ***Publication of code*** in public repositories, as with data.
-   Implementing algorithms on standard computational platforms (R/Python packages, etc.)

ASA Recommendations to Funding Agencies Supporting Reproducible Research - Broman et al. (2017)

<!-- ** 2.   ********************************** -->

**Principles of Reproducibility -- HIPAA**

-   Ideally, the use of ***publicly available data***.
-   Use of ***version control*** for all code development.

-   Exclusive use of ***open-source software***, freely available worldwide.

-   ***End-to-end scripting*** of research (data processing/cleaning, statistical analyses, visualizations, and ***report/manuscript generation***) with full workflow made available to others.

-   Use of ***container/virtual machine tools*** to capture software versions, dependencies, and platform specifics.

-   ***Publication of code*** in public repositories, as with data.
-   Implementing algorithms on standard computational platforms (R/Python packages, etc.)

ASA Recommendations to Funding Agencies Supporting Reproducible Research - Broman et al. (2017)

<!-- ** 3.   ********************************** -->

**Principles of Reproducibility -- Advanced tools**

-   Ideally, the use of ***publicly available data***.

-   Use of ***version control*** for all code development.

-   Exclusive use of ***open-source software***, freely available worldwide.

-   ***End-to-end scripting*** of research (data processing/cleaning, statistical analyses, visualizations, and ***report/manuscript generation***) with full workflow made available to others.

-   Use of ***container/virtual machine tools*** to capture software versions, dependencies, and platform specifics.
-   ***Publication of code*** in public repositories, as with data.

-   Implementing algorithms on standard computational platforms (R/Python packages, etc.)

ASA Recommendations to Funding Agencies Supporting Reproducible Research - Broman et al. (2017)

<!-- ** 4.   ********************************** -->

**Principles of Reproducibility -- Our Toolkit**

-   Ideally, the use of ***publicly available data***.

-   Use of ***version control*** for all code development.
-   Exclusive use of ***open-source software***, freely available worldwide.
-   ***End-to-end scripting*** of research (data processing/cleaning, statistical analyses, visualizations, and ***report/manuscript generation***) with full workflow made available to others.
-   Use of ***container/virtual machine tools*** to capture software versions, dependencies, and platform specifics.

-   ***Publication of code*** in public repositories, as with data.

-   Implementing algorithms on standard computational platforms (R/Python packages, etc.)

ASA Recommendations to Funding Agencies Supporting Reproducible Research - Broman et al. (2017)

<!-- ****************************************** -->
<!-- ******** End of Principles series ******** -->
<!-- ****************************************** -->

-   Scientific computing basics
-   Reproducible reports
-   Version control

Our Agenda

Scientific computing basics
===========================

1.  Naming files and directories
2.  Structuring projects and related coding conventions
3.  Coding style

Scientific computing basics

**File and directory naming**

-   Assume case-sensitivity
-   Spaces = bad
-   Use camelCase, PascalCase, or delimiter\_separated
-   Use numbering for files executed sequentially
-   0-padding for numbered names to retain sorting (e.g. 01, 02,... 10)
-   Use the standard (ISO 8601) format for dates: YYYY-MM-DD or YYYYMMDD
-   Use descriptive names and only obvious abbreviations

Scientific computing basics

**File and directory naming**

Good project directory name:

        StatinDiscontinuationStudy

Good filenames:

        01_clean_data.R
        02_descriptives.R
        03_analysis_aim1_hypothesis1.R
        04_analysis_aim1_hypothesis2.R
        05_analysis_aim2_hypothesis1.R

Scientific computing basics

**Project structure**

-   New users should be able to quickly recognize and comprehend the structure.
-   Include a README file to explain structure, what files do, and how to execute them.
-   Use a build script, makefile, or *designate a master file*

-   Set working directory once and otherwise use *relative file paths*

``` r
# Setting working directory
setwd("C:/Users/myusername/Projects/thisprojectdirectory")
# and using relative filepaths
mydata <- read.csv("./data/my_raw_data_file.csv")
source("./R/01_clean_data.R")
```

Scientific computing basics

**Project structure**

    ## reproducible_reporting/
    ## ├── build.R
    ## ├── docs
    ## │   ├── rmarkdown-cheatsheet-2.0.pdf
    ## │   ├── rmarkdown-reference.pdf
    ## │   └── scholar.bib
    ## ├── lib
    ## │   ├── images
    ## │   ├── references.bib
    ## │   └── styles.css
    ## ├── output
    ## │   ├── figures
    ## │   ├── reporting_presentation.html
    ## │   └── reporting_presentation.md
    ## ├── reporting_presentation.html
    ## ├── reporting_presentation.md
    ## ├── reporting_presentation.Rmd
    ## ├── reproducible_reporting.Rproj
    ## └── Rmd
    ##     ├── 01_introduction.Rmd
    ##     ├── 02_computing_basics.Rmd
    ##     ├── 03_intro_to_reporting.Rmd
    ##     ├── 04_rmarkdown.Rmd
    ##     ├── 05_rmdexample.Rmd
    ##     ├── myexample.Rmd
    ##     ├── references.Rmd
    ##     └── reporting_presentation.html
    ## 
    ## 6 directories, 20 files

**Project structure**

    MyProject/
        |— data/
              |— rawdata/
        |— documents/
        |— libraries/
        |— output/
              |— figures/
              |— tables/
              |- myreport.docx
        |— R/
        |- Rmd/
              |- myreport.Rmd
        |— sas/
        |— build.R
        |— README.txt

Scientific computing basics

**Code style**

-   All code files should be executable, and sequentially so.
-   Minimize extraneous operations, or move to an 'appendix' script.
-   Limit line length (80 or 100 characters)
-   Limit file length to "something reasonable" (~ 100 lines)

Scientific computing basics

**Code style**

-   Use comments to explain 'why', good code to explain 'what'.
-   Use headers at top of file and to denote major sections.
-   Human readable first, optimization second.
-   Consistent indenting, capitalization, and spacing.
    -   Use spaces around operators =+-/\*&%$ and after commas.
-   Consistency is key!
-   Use a [style](https://google.github.io/styleguide/Rguide.xml) [guide](http://adv-r.had.co.nz/Style.html)

Scientific computing basics

Reproducible reporting
======================

**What is a reproducible report?**

A report where the text content is combined with the computer code necessary for generating all included tables, plots, and statistics.

``` r
data(mtcars)
mtcars <- mtcars %>% mutate(cyl = factor(cyl))
ggplot(mtcars, aes(x = hp, y = mpg, color = cyl)) +
  geom_point() 
```

<img src="output/figures/rr-ex-plot-1.png" style="display: block; margin: auto;" />

Reproducible reporting

**Why reproducible reports**

-   Reasons:
    -   Dataset updated
    -   Patients added/removed from analysis
    -   Consistency between tables and text
    -   Changes due to investigator requests
    -   Changes due to reviewer comments
    -   Avoid tedium

Reproducible reporting

**Three related concepts**

-   Dynamic documentation
    -   Focus is code documentation
    -   e.g. doxygen (C++), roxygen2 (R)
-   Literate program
    -   Focus is explaining the code/process
    -   e.g. R Markdown (R Notebook), Jupyter notebook
-   Reproducible report
    -   Focus is the report -- interpretation and results
    -   e.g. R Markdown (to PDF, Word, HTML), Rnw/LaTeX to PDF

***TODO: COME BACK TO THIS***

Reproducible reporting

<!--![](https://rstudioblog.files.wordpress.com/2016/09/screen-shot-2016-09-14-at-12-12-35-pm.png?w=639)-->
![](https://rstudioblog.files.wordpress.com/2016/09/notebook-preview.png?w=630#038;h=405)
Reproducible reporting

**Our options**

-   R + LaTeX
-   R Markdown
-   Jupyter notebooks
-   [StatTag](http://sites.northwestern.edu/stattag/)

<img src="lib/images/rstudio_logo_large.png", width=40%> <img src="lib/images/jupyter_logo_square.png", width=20%> <img src="lib/images/stattag_logo.png">

Reproducible reporting

**Markup languages**

-   
-   Markdown

Reproducible reporting

-   
-   Markdown

Reproducible reporting

RMarkdown
=========

**Markdown**

-   YAML header
-   Code chunks

R Markdown (.Rmd)

**Document structure**

-   YAML header
-   Code chunks

R Markdown (.Rmd)

Hands-on Example
================

References

Broman, Karl, Mine Cetinkaya-Rundel, Amy Nussbaum, Christopher Paciorek, Roger Peng, Daniel Turek, and Hadley Wickham. 2017. “Recommendations to Funding Agencies for Supporting Reproducible Research.”
