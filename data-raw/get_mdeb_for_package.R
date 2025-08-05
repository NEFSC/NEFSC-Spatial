#' Pull all content from MDEB data hub and create sf objects
#'
#' Pulls the data and converts to sf, then saves as part of the package
#'
#'
#'

source(here::here("data-raw/find_mdeb_data.R"))
source(here::here("data-raw/get_mdeb_data.R"))
source(here::here("data-raw/generate_roxygen_mdeb.R"))

get_mdeb_for_package <- function(overwrite = FALSE) {
  # find all the data set on the MDEB HUB
  datasets <- find_mdeb_data()

  # loop through each and save as rda file.
  # also create documentation for each dataset
  for (ids in 1:nrow(datasets)) {
    dataset <- datasets[ids, ]
    message("Processing: ", dataset$title)
    data <- get_mdeb_data(dataset$title, dataset$id)
    if (!is.null(data)) {
      # Save the data as an R object in the package
      dataset_name <- tolower(gsub("SMIT_", "", dataset$name))
      fn <- dataset_name
      assign(dataset_name, data)
      if (overwrite) {
        save(
          list = dataset_name,
          file = here::here("data", paste0(fn, ".rda"))
        )
      }
      # Grab description from metadata (if available)
      fs_layer <- paste0(dataset$url, '?f=pjson') |>
        httr2::request() |>
        httr2::req_perform() |>
        httr2::resp_body_json()
      dataset_description <- fs_layer$description
      # Work around for now, until the descriptions are populated for each layer in the Hub
      if (dataset_description != '') {
        modified_dataset_description <- paste0('An \\code{sf} object containing spatial data for the ', 
                                               dataset$title, '. ',
                                               dataset_description
                                               )
      } else {
        modified_dataset_description <- paste0('An \\code{sf} object containing spatial data for the ', dataset$title, '.')
      }
      # Generate Roxygen data doc
      generate_roxygen_mdeb(dataset_name = paste0(dataset_name, '.rda'), title = dataset$title, description = modified_dataset_description)
      # save(data, file = here::here("data",))
    } else {
      message("No data found for: ", dataset$name)
    }
  }
}
