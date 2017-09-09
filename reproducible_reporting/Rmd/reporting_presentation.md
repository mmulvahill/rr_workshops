Prereqs -- Software to install
------------------------------

**Test software install on fresh computer**

-   [R](https://cloud.r-project.org/)
-   [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

And if you are not using RStudio, you will also need these:

-   `rmarkdown` package: `install.packages("rmarkdown")`
-   `knitr` package: `install.packages("knitr")`
-   [pandoc](https://pandoc.org/installing.html)

Defining Reproducibility
========================

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

1.  Scientific computing basics
2.  Reproducible reports
3.  Version control

.

Slide with R Output
-------------------

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

Slide with Plot
---------------

![](reporting_presentation_files/figure-markdown_github/pressure-1.png)

Broman, Karl, Mine Cetinkaya-Rundel, Amy Nussbaum, Christopher Paciorek, Roger Peng, Daniel Turek, and Hadley Wickham. 2017. “Recommendations to Funding Agencies for Supporting Reproducible Research.”
