#' Northwest Atlantic Fisheries Organization (NAFO) 2021 Divisions
#'
#' An sf object containing the NAFO Divisions (LINESTRING geometry)
#' Pulled from https://www.nafo.int/Data/GIS
#'
#' @format A data frame/ sf object (38 x 7)
#' \describe{
#'   \item{Label}{Label at SubSubDiv level}
#'   \item{SubArea}{Area codes}
#'   \item{Division}{Division Codes}
#'   \item{SubDiv}{Codes for nested Divisions within Division}
#'   \item{SubSubDiv}{Codes for nested Divisions within SubDiv}
#'   \item{X}{x coordinate of polygon center}
#'   \item{y}{y coordinate of polygon center}
#' }
#'
#' @section Projection:
#'
#' CRS: NAD83
#'
#' @family NAFO
#'
#' @source \url{https://www.nafo.int/Data/GIS}
"NAFO_Divisions_2021_line_enclosed"
