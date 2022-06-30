#' Northwest Atlantic Fisheries Organization (NAFO) 2021 Divisions
#'
#' An sf object containing the NAFO Divisions (POINT geometry)
#' Pulled from https://www.nafo.int/Data/GIS
#'
#' @format A data frame/ sf object (7171 x 17)
#' \describe{
#'   \item{Label}{Label at SubSubDiv level}
#'   \item{pt_seq}{}
#'   \item{pt_type}{}
#'   \item{pt_type_fr}{French translation of pt_type}
#'   \item{source}{}
#'   \item{source_fr}{French translation of source}
#'   \item{SubArea}{Area codes}
#'   \item{Division}{Division Codes}
#'   \item{SubDiv}{Codes for nested Divisions within Division}
#'   \item{SubSubDiv}{Codes for nested Divisions within SubDiv}
#'   \item{lat_dd}{latitude decimal degree}
#'   \item{long_dd}{longitude decimal degree}
#'   \item{lat_ddm}{latitude decimal degree with minutes}
#'   \item{long_ddm}{longitude decimal degree with minutes}
#'   \item{line_id}{}
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
"NAFO_Divisions_2021_pts"
