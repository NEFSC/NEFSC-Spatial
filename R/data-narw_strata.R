#' North Atlantic Right Whale Aerial Survey
#'
#' @description An \code{sf} object containing spatial data for the North Atlantic Right Whale Aerial Survey. Scientific survey strata for the North Atlantic Right Whale Aerial Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -76 ymin: 36.7 xmax: -66.9 ymax: 44.8}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{1 x 5}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name narw_strata
#' @usage data('narw_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(narw_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(narw_strata))
#' }
NULL
