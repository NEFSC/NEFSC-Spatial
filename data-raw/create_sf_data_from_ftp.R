#' Read in shape files from an ftp site, convert to sf and save as rda
#'
#' Pulls all files related to a shapefile from an ftp site, reads them as an sf object,
#' creates a centroid location X,Y (for future labelling) and saves as rda file in
#' the data folder. In the process files are downloaded to a temporary folder
#'
#' @param ftpsite Character string. url of ftp site (eg. "ftp://ftp.nefsc.noaa.gov/pub/gis" )
#' @param file Character string. Name of the .shp file you want to convert to sf
#' #' (Default = NULL, converts all)
#' @param tempDir Character string. Path to location where all files will be
#'  downloaded prior to processing. (Default = here::here("data-raw/temp"))
#'
#'
#' @return creates sf object in data folder. Package then needs to be rebuilt (Ctrl+shift+B)
#'

library(magrittr)
source(here::here("data-raw","list_files_ftp.r"))
# list files found on ftp site
ftpsite <- "ftp://ftp.nefsc.noaa.gov/pub/gis"
#fileList <- NEFSCspatial::list_files_ftp(ftpsite)

create_sf_data_from_ftp <- function(ftpsite,file = NULL,tempDir=here::here("data-raw/temp")) {

  # create temp dir if not already present
  if (!dir.exists(tempDir)) {
    dir.create(tempDir)
  }

  # turn off spherical geometry
  sf::sf_use_s2(F)
  # set up function for use in do.call
  myfun <- get("use_data", asNamespace("usethis"))

  # list all shp files
  message("Pulling the names of shapefiles from the ftp site")
  allFiles <- NEFSCspatial::list_files_ftp(ftpsite)

  # filter shape files
  shpFiles <- grep("shp$",allFiles,value=T)

  if (is.null(file)) {
    # process all files
  } else {
    isPresent <- grepl(file,shpFiles)
    if (any(isPresent)) {
      # process single file
      shpFiles <- shpFiles[isPresent]
    } else {
      stop(paste0("Shapefile: ",file, " doesnt seem to be on the ftp server"))
    }
  }


  # now create sf object for each shpfile
  # first find all files associated with shapefile, download, then make sf
  for (afile in shpFiles){
    shp <- tail(unlist(strsplit(afile,split = "\\/")),1)
    fstr <- gsub(".shp","",shp)
    message(paste0("Processing files related to  = ",shp))
    # select all files to download for this shapefile
    filesToDownload <- allFiles[grepl(fstr,allFiles)]
    for (ashp in filesToDownload) {
      ashpfile <- gsub(paste0(ftpsite,"/"),"",ashp)
      curl::curl_download(ashp,destfile = paste0(tempDir,"/",ashpfile))
    }

    layer <- sf::st_read(dsn=paste0(tempDir,"/",shp))

    centroids <-  sf::st_coordinates(sf::st_centroid(layer))
    layer <- cbind(layer,centroids)

    assign(fstr,layer)
    do.call(myfun, list(as.name(fstr), overwrite = TRUE))

  }


}
