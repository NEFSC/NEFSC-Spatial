#' @title AMAPPS 10 km Grid
#'
#' @description A \code{raster} object containing the Atlantic Marine Assessment Program for Protected Species (AMAPPS) 10 km grid. 
#' The AMAPPS grid has a cell size of 10 km x 10 km, with an oblique Mercator projection. 
#' Grid cell values represent grid cell IDs.
#'
#' @format A \code{raster} object:
#' \describe{
#'   \item{class}{RasterLayer}
#'   \item{dimensions}{328, 240, 78720 (nrow, ncol, ncell)}
#'   \item{resolution}{10000 m, 10000 m (x, y)}
#'   \item{extent}{-820443.2, 1579557, -1234728, 2045272 (xmin, xmax, ymin, ymax)}
#'   \item{crs}{+proj=omerc +lat_0=35 +lonc=-75 +alpha=40 +gamma=40 +k=0.9996 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs}
#'   \item{source}{data-raw/gis/AMAPPS_10km_grid.tif}
#' }
#' 
#' @docType data
#' @name amapps_grid
#' @usage data("amapps_grid")
#' @keywords datasets
#' @source \url{https://www.https://www.fisheries.noaa.gov/new-england-mid-atlantic/population-assessments/atlantic-marine-assessment-program-protected}
NULL
