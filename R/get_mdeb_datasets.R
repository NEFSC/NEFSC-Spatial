#' Get sf data sets from MDEB database
#'
#' @description
#' This function retrieves the names of datasets available in the
#' \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB} (Marine Data and
#' Environmental Biology) database.
#'
#' @param dataset_name Name of the dataset to retrieve.
#' @param id ID of the dataset layer to retrieve.
#'
#' @section Data set names:
#' The suite of available data set names and associated id's are found by
#' running `find_mdeb_datasets()`.
#'
#' @return data.frame
#'
#' @examples
#' # Pull a dataset from MDEB. Ecomon Survey strata
#' dataset <- get_mdeb_datasets(dataset_name = "Ecosystem Monitoring Survey", id = 1)
#'  # Plot the dataset
#' plot(dataset |> dplyr::select(NUMOFSTA))
#'
#' @export

get_mdeb_datasets <- function(dataset_name = NULL, id = NULL) {
  # check if dataset_name is NULL
  if (is.null(dataset_name) || is.null(id)) {
    message(
      "Neither dataset_name or id can be NULL.
       To find the list of available datasets, please use run
            find_mdeb_datasets()."
    )
    return()
  }

  mdeb_hub = "https://mdeb-nefsc-noaa.hub.arcgis.com/api/search/v1/collections/all/items"
  ## scrape json
  catalog_items <- mdeb_hub |>
    jsonlite::fromJSON()
  # count the number of available records
  num_items <- catalog_items$numberMatched
  # pull all records (default = 10)
  catalog_items_v2 = paste0(mdeb_hub, "?limit=", num_items) |>
    jsonlite::fromJSON()
  # check if dataset_name is in the catalog
  if (!dataset_name %in% catalog_items_v2$features$properties$title) {
    stop(glue::glue("Dataset '{dataset_name}' not found in MDEB database."))
  }
  # extract dataset urls
  dataset_url <- catalog_items_v2$features$properties |>
    dplyr::filter(title == dataset_name) |>
    dplyr::select(url) |>
    dplyr::pull()

  # Append the id to the url and request the dataset
  # convert to an sf object
  url <- glue::glue("{dataset_url}/{id}/query")
  dataset <- httr2::request(url) |>
    httr2::req_url_query(where = "1=1", outFields = "*", f = "geoJSON") |>
    httr2::req_perform() |>
    httr2::resp_body_string() |>
    sf::read_sf()

  return(dataset)
}
