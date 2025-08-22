#' Coastal Shark Bottom Longline Survey
#'
#' @description An \code{sf} object containing spatial data for the Coastal Shark Bottom Longline Survey. Scientific survey strata for the Coastal Shark Bottom Longline Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -81.7 ymin: 24.4 xmax: -74.4 ymax: 38.5}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{1 x 5}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name csbll_strata
#' @usage data('csbll_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(csbll_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(csbll_strata))
#' }
NULL
