#' All shapefiles are read in as sf objects then saved as rda objects in the data folder.
#' (To use these files locally the package will need to be rebuilt Ctrl+Shift+B)
#' The saved rda object will use the name of the given shapefile
#'
#' @param filePath Character string. Full path to file (eg. here::here("data-raw/gis/shapefile.shp"))
#' @param overwite Boolean. Export to "data" folder (Default = F)
#' @param addCentroids Boolean. Calculate and add centroids (X,Y fields) to shapefile
#' @param shapefilenm Character string. Custom name for sf object. Default = shapefile name
#'
#' @return creates sf object in data folder. Package then needs to be rebuilt (Ctrl+shift+B)
#'

library(magrittr)
create_sf_data_from_shp <- function(filePath,overwrite=F,addCentroids=T,shapefilenm=NULL) {

  # turn off spherical geometry
  sf::sf_use_s2(F)

  # get filename
  fileName <- gsub(".shp$","",filePath)
  fileName <- tail(unlist(strsplit(fileName,"/")),1)
  fn <- fileName
  #overwrite filename with custom name
  if(!is.null(shapefilenm)) {
    fn <- shapefilenm
  }


  # read in shapefile
  layer <- sf::st_read(dsn=filePath)
  # add XY locations for center of each polygon
  if(addCentroids) {
    centroids <-  sf::st_coordinates(sf::st_centroid(layer))
    layer <- cbind(layer,centroids)
  }
  # assigns name to layer object
  assign(fileName,layer)



  print(here::here("data",paste0(fn,".rdata")))
  # exports
  if(overwrite) {
    save(list=fileName,file=here::here("data",paste0(fn,".rda")))

  }

  #do.call(myfun, list(as.name(fileName), overwrite = TRUE))

  return(layer)

}
