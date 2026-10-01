## check and update dimension of data to be consistent

## list of datasets
all_data <- data(package = 'NEFSCspatial')

## extract names
data_names <- all_data$results[, 'Item']
data_names <- data_names[!data_names %in% c('ecomon_stations')]

## loop through each dataset
for (i in data_names) {
  # load data
  load(here::here('data', paste0(i, '.rda')))

  # re-assign
  data_obj <- i |>
    get()

  # dimensions
  num_features <- nrow(data_obj)
  num_columns <- ncol(data_obj)
  data_dim <- glue::glue(
    "#'   \\item{{Features}}{{{ num_features } x { num_columns }}"
  )

  # build the file path
  file_path <- file.path("R", paste0("data_", i, ".R"))
  if (!file.exists(file_path)) {
    file_path <- file.path("R", paste0("data-", i, ".R"))
  }

  # read in data documentation
  data_doc <- readLines(con = file_path)

  # find Features
  replace_id <- grep(pattern = 'Features', x = data_doc)
  stopifnot(length(replace_id) == 1)

  # replace
  data_doc[replace_id] <- data_dim

  # write
  writeLines(data_doc, con = file_path)
  message(glue::glue("Updated Roxygen file for '{ i }' at: { file_path }"))
}
