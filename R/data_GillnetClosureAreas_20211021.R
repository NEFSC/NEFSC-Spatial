#' Gillnet Closure Areas
#'
#' @description An \code{sf} object containing the closure areas for gillnets.
#' Specifically Closed Area 1 and Nantucket Lightship Closure Area.
#'
#' @format An \code{sf} object
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -70.33333 ymin: 40.33333 xmax: -68.5 ymax: 41.5}
#'   \item{Geodetic CRS}{NAD83}
#'   \item{Features}{2 x 26}
#'   \item{Metadata}{See source}
#' }
#'
#'
#' @docType data
#' @name GillnetClosureAreas_20211021
#' @usage data("GillnetClosureAreas_20211021")
#' @keywords datasets
#' @source \url{https://www.fisheries.noaa.gov/resource/map/gillnet-closure-areas}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(GillnetClosureAreas_20211021)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(GillnetClosureAreas_20211021))
#' }
NULL
