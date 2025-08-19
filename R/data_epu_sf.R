#' Ecological Production Units
#'
#' @description An \code{sf} object containing spatial data for the Northeast US shelf Ecological Production Units (EPUs).
#' Ecological Production Units (EPUs) delineate regions unique in physiographic, oceanographic and biotic aspects on the Northeast U.S. Continental Shelf, representing an area of approximately 264,000 km within the 200 m isobath. There are four EPUs on the Shelf, including the Mid-Atlantic Bight (MAB), Georges Bank (GB), Gulf of Maine (GOM), and Scotian Shelf (SS). The Scotian Shelf lies outside the management domain of US Fishery Management Councils and is generally not considered in State of the Ecosystem Reports.
#'
#' @format An \code{sf} object
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -77 ymin: 35.8327 xmax: -65.66667 ymax: 44.66667}
#'   \item{Geodetic CRS}{ +proj=longlat +lat_0=40 +lon_0=-77+x_0=0 +y_0=0 +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0}
#'   \item{Features}{4 x 4}
#'   \item{Metadata}{See source}
#' }
#'
#'
#' @docType data
#' @name epu_sf
#' @usage data("epu_sf")
#' @keywords {datasets}
#' @source \url{https://noaa-edab.github.io/tech-doc/epu.html}
#' #' @examples
#' \dontrun{
#' # Load the dataset
#' data(epu_sf)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(epu_sf))
#' }
NULL
