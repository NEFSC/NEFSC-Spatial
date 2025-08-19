#' Greater Atlantic Region Statistical Areas
#'
#' @description An \code{sf} object containing the Greater Atlantic Region Statistical Areas with name labels
#' Pulled from ftp://ftp.nefsc.noaa.gov/pub/gis/
#'
#' @format A \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -81.53406 ymin: 24 xmax: -42 ymax: 52.25}
#'   \item{Geodetic CRS}{NAD83}
#'   \item{Metadata}{See source}
#'   \item{Features}{135 x 7}
#' }
#'
#' @docType data
#' @name Statistical_Areas_2010_withNames
#' @usage data("Statistical_Areas_2010_withNames")
#' @keywords datasets
#'
#' @source \url{https://www.fisheries.noaa.gov/resource/map/greater-atlantic-region-statistical-areas}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(Statistical_Areas_2010_withNames)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(Statistical_Areas_2010_withNames))
#' }
NULL
