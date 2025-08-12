#' Hook and Line Survey
#'
#' @description An \code{sf} object containing spatial data for the Hook and Line Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -75.9 ymin: 35.3 xmax: -68.6 ymax: 41.8}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{1 x 6}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name hl_strata
#' @usage data('hl_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(hl_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(hl_strata))
#' }
NULL
