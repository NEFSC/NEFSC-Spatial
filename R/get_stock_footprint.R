#' create species stock area
#'
#' @description
#' Allows users to filter the Bottom trawl survey sf object by strata for many species
#' with defined stock areas. Stock definitions are found in the lazily loaded
#' data: `stock_footprints`
#'
#' @param itis_code Species itis code for species
#' @param stock_def Name of the stock area, eg. SNEMA, UNIT, NORTH etc
#'
#' @return sf object
#'
#' @export

get_stock_footprint <- function(itis_code, stock_def) {
  # check to make sure they exist in the data
  species_data <- stock_footprints |>
    dplyr::filter(itis == itis_code & stock == stock_def)

  if (nrow(species_data) == 0) {
    stop(
      "Please make sure you have selected the correct values for
         itis_code and stock_def"
    )
  }

  species_footprint <- BTS_Strata |>
    sf::st_as_sf() |>
    dplyr::filter(STRATA %in% species_data$strata)

  return(species_footprint)
}
