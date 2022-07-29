#' Download boundaries of renewable energy lease areas, wind planning areas, and marine hydrokinetic planning areas from BOEM.
#'
#' @param gdb_loc File path for the BOEM geodatabase.
#'
# needed R libraries
library(dplyr)

# location to save / access the gdb
gdb_loc <- 'data-raw/boem-renewable-energy-geodatabase'

# function to download geodatabase (gdb)
dnld_boem_weas <- function(gdb_loc) {
  
  # download gdb
  httr::GET('https://www.boem.gov/BOEM-Renewable-Energy-Geodatabase.zip', 
            httr::write_disk(here::here(paste0(gdb_loc, '.zip')), overwrite = TRUE))
  
  # unzip
  here::here(paste0(gdb_loc, '.zip')) %>% unzip(., exdir = here::here(gdb_loc))
  
  # delete zip folder
  file.remove(here::here(paste0(gdb_loc, '.zip')))
  
}

#' Extract renewable energy lease areas and wind planning areas from BOEM geodatabase and save as an rda file.
#'
#' @param gdb_loc File path for the BOEM geodatabase.
#' @param save_clean Boolean. TRUE / FALSE to save data as an rda file or return \code{sf} object.
#'
#' @return A \code{sf} object if \code{save_clean = FALSE}, otherwise \code{NULL}.
#' 
sf::sf_use_s2(FALSE) # turn off s2 processing

# function to extract WEAs
get_boem_weas <- function(gdb_loc, save_clean = TRUE) {

  # list layers in gdb
  list_layers <- here::here(paste0(gdb_loc, '/BOEMWindLayers_4Download.gdb')) %>% sf::st_layers()

  # grab layer names
  active_name <- list_layers$name[stringr::str_detect(list_layers$name, 'WindLeaseOutlines')]
  planning_name <- list_layers$name[stringr::str_detect(list_layers$name, 'WindPlanningAreaOutlines')]
    
  # read in feature layers
  active_shapes <- here::here(paste0(gdb_loc, '/BOEMWindLayers_4Download.gdb')) %>% 
    sf::st_read(layer = active_name) %>%
    dplyr::mutate(LEASE_STAGE = 'Active')
  planning_shapes <- here::here(paste0(gdb_loc, '/BOEMWindLayers_4Download.gdb')) %>% 
    sf::st_read(layer = planning_name) %>%
    dplyr::mutate(LEASE_STAGE = 'Planning')
  
  # figure out which columns are in one and not the other
  cols_not_planning = colnames(active_shapes)[!colnames(active_shapes) %in% colnames(planning_shapes)]
  cols_not_active = colnames(planning_shapes)[!colnames(planning_shapes) %in% colnames(active_shapes)]
  
  # add missing columns to enable rbind
  active_shapes[cols_not_active] = NA
  planning_shapes[cols_not_planning] = NA 

  # combine 
  boem_wea_outlines <- sf:::rbind.sf(active_shapes, planning_shapes)

  # save or not
  if (save_clean) {
    usethis::use_data(boem_wea_outlines, overwrite = TRUE)
  } else {
    return(boem_wea_outlines)
  }
  
}

#' Was the metadata updated for renewable energy lease areas and wind planning areas from BOEM?
#' 
#' @return TRUE if updated, otherwise FALSE.
#' 
weas_updated = function() {
  
  # download html from boem website
  wea_html <- 'https://catalog.data.gov/dataset/boem-wind-planning-areas' %>% 
    rvest::read_html() 
  
  # html nodes with links
  metadata_links <- wea_html %>% 
    rvest::html_nodes(css = '[href]') 
  
  # look for a specific node
  metadata_href <- tibble::tibble(links = metadata_links %>% rvest::html_attr('href')) %>% 
    tibble::rownames_to_column() %>%
    dplyr::filter(links == '#sec-dates') %>% 
    `[[`("rowname") %>%
    as.numeric()
   
  # extract metadata update date
  metadata_update <- metadata_links[metadata_href] %>% 
    rvest::html_text()
  
  # read date of latest download
  latest_date <- here::here('data-raw', 'boem-renewable-energy-geodatabase', 'boem_wea_date_downloaded.txt') %>%
    readLines() %>%
    as.Date(format = '%B %d, %Y')
  
  # was the geodatabase updated?
  if (metadata_update %>% as.Date(format = '%B %d, %Y') > latest_date) {
    
    # save new date
    cat(paste0(metadata_update, '\n'), file = here::here('data-raw', 'boem-renewable-energy-geodatabase', 'boem_wea_date_downloaded.txt'))

    return(TRUE)
  } else {
    return(FALSE)
  }
  
}

#' Update the R file documenting the renewable energy lease areas and wind planning areas from BOEM.
#' 
#' @return NULL
#' 
update_weas_R <- function() {
  
  # load data
  load(file = here::here('data', 'boem_wea_outlines.rda'))
  
  # get metadata
  n_features <- nrow(boem_wea_outlines)
  n_fields <- ncol(boem_wea_outlines)
  bbox <- sf::st_bbox(boem_wea_outlines)
  x_min <- round(bbox['xmin'], 4)
  x_max <- round(bbox['xmax'], 4)
  y_min <- round(bbox['ymin'], 4)
  y_max <- round(bbox['ymax'], 4)
    
  # paste string
  txt_file <- paste0("#' @title BOEM Renewable Energy Lease Areas and Wind Planning Areas
#'
#' @description A \\code{sf} object containing the outlines for BOEM Renewable Energy Lease Areas (LEASE_STAGE = 'Active') and Wind Planning Areas (LEASE_STAGE = 'Planning').
#'
#' @format A \\code{sf} collection with ", n_features," features and ", n_fields," fields:
#' \\describe{
#'   \\item{Geometry type}{MULTIPOLYGON}
#'   \\item{Dimension}{XY}
#'   \\item{Bounding box}{xmin: ", x_min," ymin: ", y_min," xmax: ", x_max," ymax: ", y_max,"}
#'   \\item{Geodetic CRS}{WGS 84}
#'   \\item{source}{data-raw/boem-renewable-energy-geodatabase/BOEMWindLayers_4Download.gdb}
#' }
#' 
#' @docType data
#' @name boem_wea_outlines
#' @usage data('boem_wea_outlines')
#' @keywords datasets
#' @source \\url{https://www.boem.gov/renewable-energy/mapping-and-data/renewable-energy-gis-data}
NULL")

  # output
  cat(txt_file, file = here::here('R/data_boem_wea_outlines.R'))
  
}

# update if needed
if (weas_updated()) {
  
  # download
  dnld_boem_weas(gdb_loc = gdb_loc)
  
  # extract
  get_boem_weas(gdb_loc = gdb_loc)
  
  # update R 
  update_weas_R()
  
  # re-build documentation
  devtools::document()
  
}
