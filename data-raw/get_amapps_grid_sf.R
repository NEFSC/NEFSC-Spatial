#' Read in GeoTIFF of AMAPPS 10 km grid, convert to an sf object, and save as an rda file.
#'
#' @param save_clean Boolean. TRUE / FALSE to save data as an rda file or return \code{sf} object.
#'
#' @return An \code{sf} object if \code{save_clean = FALSE}, otherwise \code{NULL}.
#'

# function
get_amapps_grid_sf <- function(save_clean = TRUE) {

  # read in .tif file
  amapps_grid <- here::here('data-raw/gis/AMAPPS_10km_grid.tif') |>
    terra::rast() |>
    terra::as.polygons() |>
    sf::st_as_sf()
  
  # save or not
  if (save_clean) {
    usethis::use_data(amapps_grid, overwrite = TRUE)
  } else {
    return(amapps_grid)
  }
  
}

# run
get_amapps_grid_sf()
