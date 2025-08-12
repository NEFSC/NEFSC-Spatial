#' Gulf of Maine Bottom Longline Survey
#'
#' @description An \code{sf} object containing spatial data for the Gulf of Maine Bottom Longline Survey. Scientific survey substrata for the Gulf of Maine Bottom Longline Survey. The survey substrata give further details on bottom-type (smooth or rough bottom) encountered in the survey area.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -70.7 ymin: 42 xmax: -67.4 ymax: 43.4}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{12 x 14}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name gombll_substrata
#' @usage data('gombll_substrata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(gombll_substrata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(gombll_substrata))
#' }
NULL
