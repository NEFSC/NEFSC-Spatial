#' Northwest Atlantic Fisheries Organization (NAFO) footprint
#'
#' An sf object containing the NAFO footprint
#' Pulled from https://www.nafo.int/Data/GIS
#'
#' @format A data frame/ sf object (1 x 6)
#' \describe{
#'   \item{Id}{}
#'   \item{ET_ID}{}
#'   \item{Area}{km^2}
#'   \item{Perimeter}{in km}
#'   \item{X}{x coordinate of polygon center}
#'   \item{y}{y coordinate of polygon center}
#' }
#'
#' @section Projection:
#'
#' CRS: NAD83/ UTM Zone 23N
#'
#' @family NAFO
#'
#' @source \url{https://www.nafo.int/Data/GIS}
"FootprintAreaProjected"
