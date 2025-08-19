#' Scallop Restricted Area
#'
#' @description An \code{sf} object containing the Scallop Restricted Areas
#' Specifically Area I, II, Nantucket Lightship North, Nantucket Lightship West, New York Bight, Elephant Trunk
#'
#' @format An \code{sf} object
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -8274749 ymin: 4602998 xmax: -7333888 ymax: 5087139}
#'   \item{Geodetic CRS}{WGS 84 / Pseudo-Mercator}
#'   \item{Features}{6 x 26}
#'   \item{Metadata}{See source}
#'  }
#'
#'
#'
#' @docType data
#' @name Scallop_Rotational_Areas_20230411
#' @usage data("Scallop_Rotational_Areas_20230411")
#' @keywords datasets
#' @source \url{https://www.fisheries.noaa.gov/resource/map/atlantic-sea-scallop-managed-waters-fishing-year-2023}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(Scallop_Rotational_Areas_20230411)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(Scallop_Rotational_Areas_20230411))
#' }
NULL
