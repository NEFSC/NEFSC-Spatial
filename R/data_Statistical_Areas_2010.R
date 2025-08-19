#' Greater Atlantic Region Statistical Areas
#'
#' @description An \code{sf} object containing the Greater Atlantic Region Statistical Areas.
#' Pulled from ftp://ftp.nefsc.noaa.gov/pub/gis/
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -81.53406 ymin: 24 xmax: -42 ymax: 52.25}
#'   \item{Geodetic CRS}{NAD83}
#'   \item{Features}{135 x 4}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name Statistical_Areas_2010
#' @usage data("Statistical_Areas_2010")
#' @keywords datasets
#'
#' @source \url{https://www.fisheries.noaa.gov/resource/map/greater-atlantic-region-statistical-areas}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(Statistical_Areas_2010)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(Statistical_Areas_2010))
#' }
NULL
