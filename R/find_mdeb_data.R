#' Find available data hosted on the MDEB (Marine Development and Ecology Branch) GIS Data Hub
#' hosted on NOAA's Geoplatform
#' 
#' @description
#' This function retrieves the data available on the
#' \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB GIS Data Hub}.
#'
#' @return A tibble with the following columns:
#' \item{title}{Name of the NOAA Geoplatform feature service}
#' \item{name}{Name of the hosted feature layer in the feature service}
#' \item{id}{Feature layer ID, a unique identifier assigned to layers within a feature service}
#' \item{url}{URL of the NOAA Geoplatform feature layer}
#'
#' @examples
#' # Retrieve a list of available data
#' mdeb_hub_datasets <- find_mdeb_datasets()
#' mdeb_hub_datasets 
#'
#' @export

find_mdeb_data <- function() {
  # url of the MDEB GIS Data Hub search API
  mdeb_hub = "https://mdeb-nefsc-noaa.hub.arcgis.com/api/search/v1/collections/all/items"
  # scrape json to get all feature services
  catalog_items <- mdeb_hub |>
    jsonlite::fromJSON()
  # count the number of available services
  num_items <- catalog_items$numberMatched
  # pull all feature service items (API default = 10)
  catalog_items_v2 <- paste0(mdeb_hub, "?limit=", num_items) |>
    jsonlite::fromJSON()
  # extract metadata properties
  available_datasets <- catalog_items_v2$features$properties |>
    dplyr::filter(grepl("FeatureServer", url)) |>
    dplyr::select(title, url)
  # format metadata for each feature service as json
  available_dataset_layers <- available_datasets |>
    dplyr::mutate(layerurl = paste0(url, "?f=pjson"))
  # create a new data frame to store the results
  dataset_metadata <- NULL
  # find if there are multiple feature layers per service
  for (idataset in 1:nrow(available_dataset_layers)) {
    dataset_url <- available_dataset_layers[idataset, ]
    dataset_json_url <- dataset_url$layerurl
    # request the json format for the metadata
    wp <- dataset_json_url |>
      jsonlite::fromJSON()
    # create tibble for output
    av = wp$layers |>
      dplyr::mutate(dataset_url) |>
      dplyr::mutate(url = paste0(url, '/', id)) |>
      dplyr::select(title, name, id, url) |>
      dplyr::as_tibble()
    dataset_metadata <- dplyr::bind_rows(dataset_metadata, av)
  }
  return(dataset_metadata)
}
