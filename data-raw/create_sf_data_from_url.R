#' Read in shape files from within zip file on web
#'
#' @param url Character string. Url of zip file containing shapefiles
#'

library(magrittr)
url <- "https://www.nafo.int/Portals/0/GIS/Divisions.zip"


create_sf_data_from_url <- function(url) {

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
          ## read in shp file and create sf object
          exportName <- tail(unlist(strsplit(afile,"/")),1)
          layer <- sf::st_read(dsn=paste0(temp2,"/",afile),quiet=T)
          centroids <-  sf::st_coordinates(sf::st_centroid(layer))
          layer <- cbind(layer,centroids)
          assign(exportName,layer)
          save(list=exportName,file=paste0(here::here("data-raw"),"/",exportName,".rdata"))
       }

      }

      base::unlink(temp)
      base::unlink(temp2)

      return()

}
