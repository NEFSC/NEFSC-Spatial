#' Read in shape files and save as rdata
#'
#' @param fiilename Character string. Name of the shape file to be converted
#' @param exportName Character string. Name of the exported rda object
#'

library(magrittr)
create_sf_data <- function(fileName,exportName) {

  layer <- sf::st_read(dsn=here::here(paste0("data-raw/gis/",layer = fileName)))

  centroids <-  sf::st_coordinates(sf::st_centroid(layer))
  layer <- cbind(layer,centroids)

  assign(exportName,layer)

  save(list=exportName,file=paste0(here::here("data"),"/",exportName,".rdata"))
}
