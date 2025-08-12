#' eDNA Survey
#'
#' @description An \code{sf} object containing spatial data for the eDNA Survey. Scientific survey strata for the eDNA Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -76 ymin: 35.1 xmax: -65.2 ymax: 44.5}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{48 x 11}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name edna_strata
#' @usage data('edna_strata')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(edna_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(edna_strata))
#' }
NULL
