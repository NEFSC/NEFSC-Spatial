#' North Atlantic Right Whale Aerial Survey
#'
#' @description An \code{sf} object containing spatial data for the North Atlantic Right Whale Aerial Survey. Aerial survey lines for the North Atlantic Right Whale Aerial Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTILINESTRING}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -76 ymin: 36.7 xmax: -66.9 ymax: 44.8}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{80 x 6}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name narw_lines
#' @usage data('narw_lines')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(narw_lines)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(narw_lines))
#' }
NULL
