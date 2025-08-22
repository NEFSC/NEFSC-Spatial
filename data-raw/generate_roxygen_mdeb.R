# function to generate a consistent Roxygen file for data documentation
generate_roxygen_mdeb <- function(dataset_name, title, description) {
  
  # check that dataset_name has an *.rda ext
  stopifnot(endsWith(dataset_name, '.rda'))
  
  # load data
  load(here::here('data', dataset_name))
  
  # re-assign
  mdeb_obj <- dataset_name |>
    tools::file_path_sans_ext() |>
    get()
  
  # extract metadata
  geometry_type <- sf::st_geometry_type(mdeb_obj) |> 
    unique() |> 
    as.character()
  dimension <- sf::st_dimension(mdeb_obj) |>
    unique() 
  dimension_type <- ifelse(dimension == 2, 'XY', NA_character_)
  bbox <- sf::st_bbox(mdeb_obj)
  projection <- sf::st_crs(mdeb_obj, parameters = TRUE)$Name
  num_features <- nrow(mdeb_obj)
  num_columns <- ncol(mdeb_obj)
  
  # build the file path
  file_path <- file.path("R", paste0("data-", tools::file_path_sans_ext(dataset_name), ".R"))
  
  # substitute values into the template
  roxygen_content <- glue::glue("
#' { title }
#'
#' @description { description }
#'
#' @format An \\code{{sf}} object:
#' \\describe{{
#'   \\item{{Geometry type}}{{{ geometry_type }}}
#'   \\item{{Dimension}}{{{ dimension_type }}}
#'   \\item{{Bounding box}}{{xmin: { round(bbox['xmin'], 1) } ymin: { round(bbox['ymin'], 1) } xmax: { round(bbox['xmax'], 1) } ymax: { round(bbox['ymax'], 1) }}}
#'   \\item{{Projected CRS}}{{{ projection }}}
#'   \\item{{Features}}{{{ num_features } x { num_columns }}
#'   \\item{{Metadata}}{{See source}}
#' }}
#'
#' @docType data
#' @name { tools::file_path_sans_ext(dataset_name) }
#' @usage data('{ tools::file_path_sans_ext(dataset_name) }')
#' @keywords {{datasets}}
#' @source {{https://mdeb-nefsc-noaa.hub.arcgis.com/}}
#' @examples
#' \\dontrun{{
#' # Load the dataset
#' data({ tools::file_path_sans_ext(dataset_name) })
#'
#' # Plot the geometry
#' plot(sf::st_geometry({ tools::file_path_sans_ext(dataset_name) }))
#' }}
NULL
")
  
  # write content to file
  writeLines(roxygen_content, con = file_path)
  message(glue::glue("Generated Roxygen file for '{ tools::file_path_sans_ext(dataset_name) }' at: { file_path }"))
  
}
