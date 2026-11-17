#' Coastal Shark Bottom Longline Survey
#'
#' @description An \code{sf} object containing spatial data for the Coastal Shark Bottom Longline Survey. Sampling stations for the Coastal Shark Bottom Longline Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POINT}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -81.6 ymin: 24.5 xmax: -74.5 ymax: 38.4}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{87 x 6}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name csbll_stations
#' @usage data('csbll_stations')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(csbll_stations)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(csbll_stations))
#' }
NULL
