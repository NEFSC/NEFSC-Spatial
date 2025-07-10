#' Get data from the MDEB (Marine Development and Ecology Branch) GIS Data Hub
#' hosted on NOAA's Geoplatform
#'
#' @description
#' This function retrieves data from the \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB GIS Data Hub}.
#'
#' @param dataset_name Name of the dataset to retrieve.
#' @param dataset_id ID of the dataset layer to retrieve.
#'
#' @section Available data:
#' The list of available data and corresponding REST URLs
#' can be found by running `find_mdeb_data()`.
#'
#' @return An sf data.frame-like object
#'
#' @examples
#' # Pull EcoMon Survey strata from MDEB GIS Data Hub
#' ecomon_strata <- get_mdeb_data(dataset_name = "Ecosystem Monitoring Survey", dataset_id = 1)
#' # Plot the data
#' plot(ecomon_strata)
#'
#' @export

get_mdeb_data <- function(dataset_name = NULL, dataset_id = NULL) {
  # check if dataset_name, dataset_id is NULL
  if (is.null(dataset_name) || is.null(dataset_id)) {
    message(
      "Neither dataset_name or id can be NULL.
       To find the list of available datasets, please use run
            find_mdeb_data()."
    )
    return()
  }

  allData <- find_mdeb_data()
  set <- allData |>
    dplyr::filter(title == dataset_name, id == dataset_id)

  if (nrow(set) == 0) {
    stop(
      "Data set not found. To find the list of available datasets, please use run
    find_mdeb_data()"
    )
  }

  rest_url <- paste0(set$url, "/query")

  dataset <- httr2::request(rest_url) |>
    httr2::req_url_query(where = "1=1", outFields = "*", f = "geoJSON") |>
    httr2::req_perform()
  if (dataset$status_code == 200) {
    dataset_sf = dataset |>
      httr2::resp_body_string() |>
      sf::read_sf()
    return(dataset_sf)
  } else {
    message("URL returned status code: ", dataset$status_code)
  }
}
