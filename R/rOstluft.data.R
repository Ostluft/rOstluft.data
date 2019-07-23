#' rOstluft.data: Airquality data from zuerich for 2010-2014
#'
#' This Package contains air quality data from the measurement sites
#' Zuerich Stampfenbachstrasse, Zuerich Schimmelstrasse and Zuerich
#' Rosengartenstrasse for the years 2010 until 2014 in different time resolutions.
#' The goal for rOstluft.data is to provide data in a raw format for examples
#' and tests of the package rOstluft.
#'
#' @docType package
#' @name rOstluft.data
#'
#' @examples
#'  path_to_file <- system.file("extdata", "Zch_Stampfenbachstrasse_2010-2014.csv",
#'     package = "rOstluft.data", mustWork = TRUE)
#'  print(path_to_file)
#'
#'  list.files(system.file("extdata", package = "rOstluft.data"))
#'
NULL



#' returns path to file
#'
#' Wrapper around [base::system.file()] to simplify generating file names
#'
#' @param fn file name
#'
#' @return path to file
#' @export
#'
#' @examples
#' path_to_file <- f("Zch_Stampfenbachstrasse_2010-2014.csv")
#'
#' # is the same as
#' path_to_file <- system.file("extdata", "Zch_Stampfenbachstrasse_2010-2014.csv",
#'                             package = "rOstluft.data", mustWork = TRUE)
f <- function(fn) {
  system.file("extdata", fn, package = "rOstluft.data", mustWork = TRUE)
}
