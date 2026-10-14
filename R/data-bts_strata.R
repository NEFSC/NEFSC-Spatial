#' Bottom Trawl Survey
#'
#' @description An \code{sf} object containing spatial data for the Bottom Trawl Survey. Scientific survey strata for the Bottom Trawl Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -76.2 ymin: 34.4 xmax: -65.6 ymax: 44.5}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{82 x 16}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name bts_strata
#' @usage data('bts_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(bts_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(bts_strata))
#' }
NULL
