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
    
  # read in features
  active_shapes <- here::here(paste0(gdb_loc, '/BOEMWindLayers_4Download.gdb')) %>% 
    sf::st_read(layer = active_name) %>%
    dplyr::mutate(LEASE_STAGE = 'Active')
  planning_shapes <- here::here(paste0(gdb_loc, '/BOEMWindLayers_4Download.gdb')) %>% 
    sf::st_read(layer = planning_name) %>%
    dplyr::mutate(LEASE_STAGE = 'Planning')

  # union
  boem_wea_outlines <- sf::st_union(active_shapes, planning_shapes)

  # save or not
  if (save_clean) {
    usethis::use_data(boem_wea_outlines, overwrite = TRUE)
  } else {
    return(boem_wea_outlines)
  }
  
}

# download
dnld_boem_weas(gdb_loc = gdb_loc)

# extract
get_boem_weas(gdb_loc = gdb_loc)
