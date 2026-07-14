#' Ecosystem Monitoring Survey
#'
#' @description An \code{sf} object containing spatial data for the Ecosystem Monitoring Survey. There are thirty-five Ecosystem Monitoring fixed hydrographic sampling stations across the Northeast Shelf ecosystem. Four transects run from inshore to off the continental shelf from north of Cape Hatteras to Cape Cod. One transect bisects the Gulf of Maine from the coast of Maine and across Georges Bank. The remaining twelve stations in the Gulf of Maine sample deep basins, banks, coastal areas, and the inflow (Northeast Channel) and out flow (Great South Channel) of the gulf.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POINT}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -75.5 ymin: 36 xmax: -65.4 ymax: 44.5}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{35 x 14}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name ecomon_stations
#' @usage data('ecomon_stations')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(ecomon_stations)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(ecomon_stations))
#' }
NULL
