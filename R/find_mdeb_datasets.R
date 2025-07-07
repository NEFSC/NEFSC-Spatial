#' Get names of data sets from MDEB database
#'
#' @description
#' This function retrieves the names of datasets available in the
#' \href{https://mdeb-nefsc-noaa.hub.arcgis.com/}{MDEB} (Marine Data and
#' Environmental Biology) database.
#'
#' @return data.frame
#' \item{title}{Name of the dataset}
#' \item{name}{Name of the dataset layer}
#' \item{id}{ID of the dataset layer}
#' \item{url}{URL of the dataset}
#'
#' @export

find_mdeb_datasets <- function() {
  # url of the data repository
  mdeb_hub = "https://mdeb-nefsc-noaa.hub.arcgis.com/api/search/v1/collections/all/items"
  ## scrape json
  catalog_items <- mdeb_hub |>
    jsonlite::fromJSON()
  # count the number of available records
  num_items <- catalog_items$numberMatched
  # pull all records (default = 10)
  catalog_items_v2 <- paste0(mdeb_hub, "?limit=", num_items) |>
    jsonlite::fromJSON()
  # extract dataset names
  available_datasets <- catalog_items_v2$features$properties |>
    dplyr::filter(grepl("FeatureServer", url)) |>
    dplyr::select(title, url)

  available_dataset_layers <- available_datasets |>
    dplyr::mutate(layerurl = paste0(url, "?f=pjson"))

  # find if there are multiple dataset layers
  # Create a new data frame to store the results
  dataset_metadata <- NULL
  for (idataset in 1:nrow(available_dataset_layers)) {
    dataset_json_url <- available_dataset_layers$layerurl[idataset]
    dataset_url <- available_dataset_layers[idataset, ]
    # request the json format for the metadata
    # group by nodes
    d <- httr2::request(dataset_json_url)
    res <- httr2::req_perform(d)
    wp <- httr2::resp_body_json(res)
    # count the number of data layers and store the names and ids
    num_layers <- length(wp$layers)
    for (ilayer in 1:num_layers) {
      name <- wp$layers[[ilayer]]$name
      id <- wp$layers[[ilayer]]$id
      av <- dataset_url
      av$name <- name
      av$id <- id
      dataset_metadata <- rbind(dataset_metadata, av)
    }
  }

  dataset_metadata <- dataset_metadata |>
    dplyr::select(title, name, id, url) |>
    dplyr::as_tibble()

  return(dataset_metadata)
}
