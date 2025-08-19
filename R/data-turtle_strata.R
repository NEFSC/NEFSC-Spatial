#' Turtle Ecology Survey
#'
#' @description An \code{sf} object containing spatial data for the Turtle Ecology Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -82.1 ymin: 24.2 xmax: -61.8 ymax: 45.2}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{1 x 5}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name turtle_strata
#' @usage data('turtle_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(turtle_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(turtle_strata))
#' }
NULL
