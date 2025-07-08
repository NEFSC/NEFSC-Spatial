#' Read in stock area csv and reformat to a data object
#' This will be lazily loaded by the package and used to filter
#' the bottom trawl survey sf object and possibly the Statistical areas
#' sf object
#'
#'
#'

create_stock_footprint <- function(channel, overwrite = FALSE) {
  # rerad in the csv file and reformat it to a data object
  stocks <- readr::read_csv(here::here(
    "data-raw/data/BTS_stock_strata_matrix_for_Paul_2025-02-14.csv"
  )) |>
    dplyr::select(-STRATUM_AREA) |>
    tidyr::pivot_longer(
      cols = -STRATUM,
      names_to = "STOCK",
      values_to = "AREA"
    ) |>
    dplyr::filter(STOCK != "(blank)") |>
    tidyr::separate(STOCK, into = c("itis", "stock"), sep = "-") |>
    dplyr::filter(AREA == 1)

  # find the unique itis codes
  itis_codes <- unique(stocks$itis)

  # grab the species names by itis from comlandr
  species_names <- comlandr::get_species_itis(channel, itis_codes)$data |>
    dplyr::select(SPECIES_ITIS, COMMON_NAME, SCIENTIFIC_NAME) |>
    dplyr::distinct()

  # Join names to stocks by itis to create a table with common and scientific names
  stock_footprints <- dplyr::left_join(
    stocks,
    species_names,
    by = c("itis" = "SPECIES_ITIS")
  ) |>
    dplyr::rename(
      common_name = COMMON_NAME,
      scientific_name = SCIENTIFIC_NAME,
      strata = STRATUM
    ) |>
    dplyr::select(-AREA) |>
    dplyr::mutate(itis = as.double(itis)) |>
    dplyr::relocate(common_name, scientific_name, itis, stock, strata) |>
    dplyr::as_tibble()

  # Save the table as a data object
  if (overwrite) {
    usethis::use_data(stock_footprints, overwrite = overwrite)
  }

  # Return the stock footprints data object
  return(stock_footprints)
}
