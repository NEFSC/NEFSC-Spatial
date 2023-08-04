#' @title AMAPPS 10 km Grid
#'
#' @description An \code{sf} object containing the Atlantic Marine Assessment Program for Protected Species (AMAPPS) 10 km grid. 
#' The AMAPPS grid has a cell size of 10 km x 10 km, with an oblique Mercator projection. 
#' Grid cell values represent grid cell IDs.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -820443.2 ymin: -1234728 xmax: 1579557 ymax: 2045272}
#'   \item{Projected CRS}{unnamed}
#'   \item{Features}{78720 x 1}
#'   \item{Source}{data-raw/gis/AMAPPS_10km_grid.tif}
#' }
#'
#' @docType data
#' @name amapps_grid
#' @usage data("amapps_grid")
#' @keywords datasets
#' @source \url{https://www.fisheries.noaa.gov/new-england-mid-atlantic/population-assessments/atlantic-marine-assessment-program-protected}
#' @examples
#' \dontrun{
#' # convert sf to SpatVector
#' amapps_vec <- amapps_grid |> as('SpatVector') 
#' 
#' # empty raster from amapps_vec
#' amapps_ras <- terra::rast(amapps_vec, nrow = 328, ncol = 240)
#' 
#' # rasterize
#' amapps <- terra::rasterize(amapps_vec, amapps_ras, field = 'AMAPPS_10km_grid')
#' 
#' # visualize
#' terra::plot(amapps)
#' }
NULL

