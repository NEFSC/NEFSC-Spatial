#' Read in shape files from within zip file on web
#'
#' Zip file can contain multiple shapefiles.
#' All shapefiles will be converted to sf objects and saved to data folder as rda files
#'
#' @param url Character string. Url of zip file containing shapefiles
#'
#' @return creates sf object in data folder. Package then needs to be rebuilt (Ctrl+shift+B)
#'
#'

library(magrittr)
# url <- "https://www.nafo.int/Portals/0/GIS/Divisions.zip"
# url <- "https://www.nafo.int/Portals/0/GIS/Footprint_Projected.zip"
# url <- "https://www.nafo.int/Portals/0/GIS/VME_closures.zip"
# url <- "https://media.fisheries.noaa.gov/2021-10/GillnetClosureAreas_20211021.zip"
#options(warn=-1)
##options(warn=0)

create_sf_data_from_url <- function(url) {

  # set up function for use in do.call
  myfun <- get("use_data", asNamespace("usethis"))

    # get zip file, catch error for missing file
      result <- tryCatch(
        {
          message("Grabbing file: from ",url)
          temp <- base::tempfile()
          download.file(url=url,destfile=temp, quiet=TRUE)
          res <- TRUE
        },
        error = function(e){
          message(e)
          return(FALSE)
        } ,
        warning = function(w){
          return(FALSE)
        }
      )

      if (!result) { # failed to download file
        message(paste0("File ",url, " can not be downloaded. Please check the url and try again"))
        base::unlink(temp)
        next
      }



      # find names of all files in zip file
      filesInZip <- unzip(temp,list=T)
      temp2 <- base::tempfile()
      #unzip all files to a temporary directory
      unzip(zipfile = temp, exdir = temp2)

      # pick out all .shp files and their dir struct
      for (ifile in 1:nrow(filesInZip)) {
        afile <- filesInZip$Name[ifile]
        if (grepl("shp$",afile)) {
          ## read in shp file , create sf object, and export to data folder
          message(paste0("Shapefile = ",afile))
          exportName <- tail(unlist(strsplit(afile,"/")),1)
          exportName <- head(unlist(strsplit(exportName,"\\.")),1)
          layer <- sf::st_read(dsn=paste0(temp2,"/",afile),quiet=T)
          centroids <-  sf::st_coordinates(sf::st_centroid(layer))
          layer <- cbind(layer,centroids)
          assign(exportName,layer)
          do.call(myfun, list(as.name(exportName), overwrite = TRUE))
       }

      }

      base::unlink(temp)
      base::unlink(temp2)


}
