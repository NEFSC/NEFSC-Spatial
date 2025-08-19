#' Cooperative Atlantic States Shark Pupping and Nursery Survey
#'
#' @description An \code{sf} object containing spatial data for the Cooperative Atlantic States Shark Pupping and Nursery Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -81.6 ymin: 27.1 xmax: -74.9 ymax: 39.2}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{7 x 5}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name coastspan_strata
#' @usage data('coastspan_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(coastspan_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(coastspan_strata))
#' }
NULL
