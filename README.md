
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
#>  [1] "2012_0012_forecast12_interim.nc"           
#>  [2] "2017_SG-BP-hysplit.rds"                    
#>  [3] "2017_ZH-Kaserne-hysplit.rds"               
#>  [4] "2018_SG-BP-hysplit.rds"                    
#>  [5] "2018_ZH-Kaserne-hysplit.rds"               
#>  [6] "AIRMO_CO_min30_2018.dat"                   
#>  [7] "IAC-Met-HBerg_2012-06-20.dat"              
#>  [8] "IAC-Met_2010-12-02.dat"                    
#>  [9] "IAC-Met_2010-12-03.dat"                    
#> [10] "IAC-Met_edited.dat"                        
#> [11] "meta_smn.rds"                              
#> [12] "smn.txt"                                   
#> [13] "smn_multi.txt"                             
#> [14] "smn_unit.txt"                              
#> [15] "smn_VQHA80.txt"                            
#> [16] "Zch_Rosengartenstrasse_2010-2014.csv"      
#> [17] "Zch_Schimmelstrasse_2010-2014.csv"         
#> [18] "Zch_Stampfenbachstrasse_2010-2014.csv"     
#> [19] "Zch_Stampfenbachstrasse_d1_2013_Jan.csv"   
#> [20] "Zch_Stampfenbachstrasse_h1_2013_Jan.csv"   
#> [21] "Zch_Stampfenbachstrasse_min30_2013_Jan.csv"
#> [22] "Zch_Stampfenbachstrasse_y1_2010-2014.csv"  
#> [23] "ZH_EraInterim.rds"
```

Sources
-------

-   [Ostluft](https://www.ostluft.ch)
-   [ETHZ](http://www.iac.ethz.ch/the-institute/weather-stations.html)
-   [ERA-Interim](https://www.ecmwf.int/en/forecasts/datasets/archive-datasets/reanalysis-datasets/era-interim)
-   [MeteoSchweiz](https://www.meteoschweiz.admin.ch)
-   [HYSPLIT](https://www.arl.noaa.gov/hysplit/hysplit/)
