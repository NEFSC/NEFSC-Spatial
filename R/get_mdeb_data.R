#' Get data from the MDEB (Marine Development and Ecology Branch) GIS Data Hub
#' hosted on NOAA's Geoplatform
#'
#' @description
#' This function retrieves data from the \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB GIS Data Hub}.
#'
#' @param dataset_name Name of the dataset to retrieve.
#' @param id ID of the dataset layer to retrieve.
#'
#' @section Available data:
#' The list of available data and corresponding REST URLs
#' can be found by running `find_mdeb_data()`.
#'
#' @return An sf data.frame-like object
#'
#' @examples
#' # Pull EcoMon Survey strata from MDEB GIS Data Hub
#' ecomon_strata <- get_mdeb_data(dataset_name = "Ecosystem Monitoring Survey", id = 1)
#' # Plot the data
#' plot(ecomon_strata)
#'
#' @export

get_mdeb_data <- function(dataset_name = NULL, id = NULL) {
  # check if dataset_name is NULL
  if (is.null(dataset_name) || is.null(id)) {
    message(
      "Neither dataset_name or id can be NULL.
       To find the list of available datasets, please use run
            find_mdeb_data()."
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
    stop(paste0("Dataset ", dataset_name, " not found in MDEB database."))
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
