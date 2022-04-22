#' Read in GeoTIFF of AMAPPS 10 km grid, convert to a raster object, and save as an rda file.
#'
#' @param save_clean Boolean. TRUE / FALSE to save data as an rda file or return \code{raster} object.
#'
#' @return A \code{raster} object if \code{save_clean = FALSE}, otherwise \code{NULL}.
#'
# needed R libraries
library(dplyr)

# function
get_amapps_grid_raster <- function(save_clean = TRUE) {

  # read in .tif file
  amapps_grid <- here::here('data-raw/gis/AMAPPS_10km_grid.tif') %>% 
    raster::raster() 

  # save or not
  if (save_clean) {
    usethis::use_data(amapps_grid, overwrite = TRUE)
  } else {
    return(amapps_grid)
  }
  
}

# run
get_amapps_grid_raster()
