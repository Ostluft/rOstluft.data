
<!-- README.md is generated from README.Rmd. Please edit that file -->
<img src="man/figures/logo.png" align="right" />

rOstluft.data
=============

This Package contains air quality data from the measurement sites Zuerich Stampfenbachstrasse, Zuerich Schimmelstrasse and Zuerich Rosengartenstrasse for the years 2010 until 2014. The time resolution is 30 minutes.

The goal for rOstluft.data is to provide data in a raw format for examples and test of the package rOstluft.

Installation
------------

You can install rOstluft.data from github with:

``` r
# install.packages("devtools")
devtools::install_github("Ostluft/rOstluft.data")
```

Example
-------

The following code shows how to obtain the path to the csv files.

``` r
system.file("extdata", "Zch_Stampfenbachstrasse_2010-2014.csv",
     package = "rOstluft.data", mustWork = TRUE)
#> [1] "C:/Users/vot/Documents/R/win-library/3.5/rOstluft.data/extdata/Zch_Stampfenbachstrasse_2010-2014.csv"

list.files(system.file("extdata", package = "rOstluft.data"))
#> [1] "Zch_Rosengartenstrasse_2010-2014.csv" 
#> [2] "Zch_Schimmelstrasse_2010-2014.csv"    
#> [3] "Zch_Stampfenbachstrasse_2010-2014.csv"
```
