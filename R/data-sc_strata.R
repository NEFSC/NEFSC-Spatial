#' Atlantic Surfclam and Ocean Quahog Survey
#'
#' @description An \code{sf} object containing spatial data for the Atlantic Surfclam and Ocean Quahog Survey. Scientific survey strata for the Atlantic Surfclam Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -76 ymin: 36.5 xmax: -66.9 ymax: 42.1}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{12 x 7}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name sc_strata
#' @usage data('sc_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(sc_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(sc_strata))
#' }
NULL
