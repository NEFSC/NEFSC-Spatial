#' Seal Aerial Survey
#'
#' @description An \code{sf} object containing spatial data for the Seal Aerial Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POINT}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -70.9 ymin: 41.3 xmax: -67 ymax: 44.9}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{1026 x 14}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name seal_stations
#' @usage data('seal_stations')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(seal_stations)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(seal_stations))
#' }
NULL
