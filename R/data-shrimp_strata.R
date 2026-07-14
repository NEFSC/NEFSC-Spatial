#' Northern Shrimp Survey
#'
#' @description An \code{sf} object containing spatial data for the Northern Shrimp Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -70.7 ymin: 41.1 xmax: -68 ymax: 44.1}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{12 x 8}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name shrimp_strata
#' @usage data('shrimp_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(shrimp_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(shrimp_strata))
#' }
NULL
