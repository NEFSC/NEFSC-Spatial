#' @title Herring Management Areas
#'
#' @description An \code{sf} object depicting the boundaries of the Herring Management Areas.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -78.57412 ymin: 33.81288 xmax: -65.69947 ymax: 45.1918}
#'   \item{Geodetic CRS}{NAD83}
#'   \item{Features}{4 x 26}
#'   \item{Metadata}{See source}
#' }
#'
#'
#' @docType data
#' @name Herring_Management_Areas
#' @usage data("Herring_Management_Areas")
#' @keywords datasets
#' @source \url{https://www.fisheries.noaa.gov/resource/map/herring-management-areas}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(Herring_Management_Areas)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(Herring_Management_Areas))
#' }
NULL
