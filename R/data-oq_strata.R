#' Atlantic Surfclam and Ocean Quahog Survey
#'
#' @description An \code{sf} object containing spatial data for the Atlantic Surfclam and Ocean Quahog Survey. Scientific survey strata for Ocean Quahog Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -74.9 ymin: 36.5 xmax: -66.5 ymax: 42.1}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{12 x 20}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name oq_strata
#' @usage data('oq_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(oq_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(oq_strata))
#' }
NULL
