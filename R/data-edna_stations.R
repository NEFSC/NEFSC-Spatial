#' eDNA Survey
#'
#' @description An \code{sf} object containing spatial data for the eDNA Survey. Sampling stations for the eDNA Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POINT}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -75.5 ymin: 36 xmax: -65.4 ymax: 44.5}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{35 x 13}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name edna_stations
#' @usage data('edna_stations')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(edna_stations)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(edna_stations))
#' }
NULL
