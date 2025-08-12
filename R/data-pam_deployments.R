#' Passive Acoustic Monitoring Survey
#'
#' @description An \code{sf} object containing spatial data for the Passive Acoustic Monitoring Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POINT}
#'   \item{Dimension}{NA}
#'   \item{Bounding box}{xmin: -75.7 ymin: 36.5 xmax: -66.9 ymax: 44.8}
#'   \item{Projected CRS}{WGS 84}
#'   \item{Features}{82 x 23}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name pam_deployments
#' @usage data('pam_deployments')
#' @keywords {datasets}
#' @source {https://mdeb-nefsc-noaa.hub.arcgis.com/}
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(pam_deployments)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(pam_deployments))
#' }
NULL
