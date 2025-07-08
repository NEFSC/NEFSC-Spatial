#' Get data from the MDEB (Marine Development and Ecology Branch) GIS Data Hub
#' hosted on NOAA's Geoplatform
#' 
#' @description
#' This function retrieves data from the \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB GIS Data Hub}.
#'
#' @param url URL of the NOAA Geoplatform feature layer.
#'
#' @section Available data:
#' The list of available data and corresponding REST URLs 
#' can be found by running `find_mdeb_datasets()`.
#'
#' @return An sf data.frame-like object
#'
#' @examples
#' # Pull EcoMon Survey strata from MDEB GIS Data Hub
#' ecomon_strata <- get_mdeb_data(url = 'https://services2.arcgis.com/C8EMgrsFcRFL6LrL/arcgis/rest/services/Ecosystem_Monitoring_Survey/FeatureServer/1')
#' # Plot the data
#' sf:::plot.sf(ecomon_strata['REGION'])
#'
#' @export

get_mdeb_data <- function(url = NULL) {
  # check if url is NULL
  if (is.null(url)) stop('URL cannot be NULL. To find the list of available datasets, please use find_mdeb_datasets().') 
  # API call and convert to an sf object
  rest_url <- paste0(url, '/query') 
  dataset <- httr2::request(rest_url) |>
    httr2::req_url_query(where = "1=1", outFields = "*", f = "geoJSON") |>
    httr2::req_perform() 
  if (dataset$status_code == 200) {
    message('URL is valid (returned 200 OK).')
    dataset_sf = dataset |>
      httr2::resp_body_string() |>
      sf::read_sf()
    return(dataset_sf)
  } else {
    message("URL returned status code: ", dataset$status_code)
  }
}
