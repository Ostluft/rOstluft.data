
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/logo.png" align="right" />

# rOstluft.data

This Package contains air quality data from the measurement sites
Zuerich Stampfenbachstrasse, Zuerich Schimmelstrasse and Zuerich
Rosengartenstrasse for the years 2010 until 2014. The time resolution is
30 minutes.

The goal for rOstluft.data is to provide data in a raw format for
examples and test of the package rOstluft.

## Installation

You can install rOstluft.data from github with:

``` r
# install.packages("devtools")
devtools::install_github("Ostluft/rOstluft.data")
```

## Example

The following code shows how to obtain the path to the csv files.

``` r
system.file("extdata", "Zch_Stampfenbachstrasse_2010-2014.csv",
     package = "rOstluft.data", mustWork = TRUE)
#> [1] "D:/tom/Documents/R/win-library/3.6/rOstluft.data/extdata/Zch_Stampfenbachstrasse_2010-2014.csv"

# helper function
rOstluft.data::f("Zch_Stampfenbachstrasse_2010-2014.csv")
#> [1] "D:/tom/Documents/R/win-library/3.6/rOstluft.data/extdata/Zch_Stampfenbachstrasse_2010-2014.csv"

# all files
list.files(system.file("extdata", package = "rOstluft.data"))
#>  [1] "2012_0012_forecast12_interim.nc"            "2017_SG-BP-hysplit.rds"                    
#>  [3] "2017_ZH-Kaserne-hysplit.rds"                "2018_SG-BP-hysplit.rds"                    
#>  [5] "2018_ZH-Kaserne-hysplit.rds"                "AIRMO_CO_min30_2018.dat"                   
#>  [7] "IAC-Met-HBerg_2012-06-20.dat"               "IAC-Met_2010-12-02.dat"                    
#>  [9] "IAC-Met_2010-12-03.dat"                     "IAC-Met_edited.dat"                        
#> [11] "messwerte_tiefenbrunnen_2007-2019.csv"      "meta_seepolizei.rds"                       
#> [13] "meta_smn.rds"                               "nabel_due.txt"                             
#> [15] "NO2_PS.rds"                                 "ol_nox_covid19_2020.csv"                   
#> [17] "smn.txt"                                    "smn_multi.txt"                             
#> [19] "smn_neues_format.txt"                       "smn_unit.txt"                              
#> [21] "smn_VQHA80.txt"                             "Zch_Rosengartenstrasse_2010-2014.csv"      
#> [23] "Zch_Schimmelstrasse_2010-2014.csv"          "Zch_Stampfenbachstrasse_2010-2014.csv"     
#> [25] "Zch_Stampfenbachstrasse_d1_2013_Jan.csv"    "Zch_Stampfenbachstrasse_d1_2017.csv"       
#> [27] "Zch_Stampfenbachstrasse_h1_2013_Jan.csv"    "Zch_Stampfenbachstrasse_h1_2017.csv"       
#> [29] "Zch_Stampfenbachstrasse_m1_2017.csv"        "Zch_Stampfenbachstrasse_min30_2013_Jan.csv"
#> [31] "Zch_Stampfenbachstrasse_min30_2017.csv"     "Zch_Stampfenbachstrasse_y1_2010-2014.csv"  
#> [33] "Zch_Stampfenbachstrasse_y1_2017.csv"        "ZH_EraInterim.RDS"
```

## Sources

  - [Ostluft](https://www.ostluft.ch)
  - [ETHZ](http://www.iac.ethz.ch/the-institute/weather-stations.html)
  - [ERA-Interim](https://www.ecmwf.int/en/forecasts/datasets/archive-datasets/reanalysis-datasets/era-interim)
  - [MeteoSchweiz](https://www.meteoschweiz.admin.ch)
  - [HYSPLIT](https://www.arl.noaa.gov/hysplit/hysplit/)
