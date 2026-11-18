#' Gulf of Maine Bottom Longline Survey
#'
#' @description An \code{sf} object containing spatial data for the Gulf of Maine Bottom Longline Survey. Scientific survey strata for the Gulf of Maine Bottom Longline Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -70.7 ymin: 42 xmax: -67.4 ymax: 43.4}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{6 x 9}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name gombll_strata
#' @usage data('gombll_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(gombll_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(gombll_strata))
#' }
NULL
