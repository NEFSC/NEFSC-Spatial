# needed libraries
library(NEFSCspatial)

# delete leaflet maps
file.remove(list.files(here::here('pkgdown/leaflet_maps'), full.names = TRUE))

# delete leaflet *.Rmds
leaflet_rmd <- here::here('vignettes/articles') |> 
  list.files(full.names = TRUE)
keep_rmd <- grep(pattern = "ContributeSpatialData|teamMembers", x = leaflet_rmd)
leaflet_rmd <- leaflet_rmd[-keep_rmd]
file.remove(leaflet_rmd)

# list of exported data objects
exp_data <- ls("package:NEFSCspatial")

# ignore certain data sets, leaflet fails to render for some reason (maybe too big)
exp_data <- exp_data[-which(exp_data %in% c("amapps_grid", "Herring_Management_Areas", "NAFO_Divisions_2021_poly_clipped", "Statistical_Areas_2010", "Statistical_Areas_2010_withNames"))]

# loop through data and make leaflet maps
for (i in exp_data) {
  
  # load data
  data(list = i)
  
  # get data
  sf_data <- get(i) 
  
  # make valid, if needed
  if (any(sf::st_is_valid(sf_data) != TRUE)) { 
    sf_data <- sf_data |> 
      sf::st_make_valid()
  } 
  
  # change crs, if needed
  if (sf::st_crs(sf_data) != sf::st_crs(4326)) {
    sf_data <- sf_data |> 
      sf::st_transform(4326)
  } 
  
  # bounding box
  bbox <- sf_data |> 
    sf::st_bbox() |> 
    as.vector()
  
  # leaflet map
  leaflet_map <- leaflet::leaflet(width = '100%') |> 
    leaflet::addTiles(urlTemplate = "http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png") |> 
    leaflet::fitBounds(lng1 = bbox[1], lat1 = bbox[2], lng2 = bbox[3], lat2 = bbox[4]) |> 
    leaflet::addPolygons(data = sf_data, popup = i) 
  
  # save the  map
  saveRDS(leaflet_map, here::here(paste0("pkgdown/leaflet_maps/", i, "_leaflet.rds")))
  
  # write *.Rmd file
  sink(file = here::here(paste0("vignettes/articles/", i, "_leaflet.Rmd")))
  
    # header
    cat("--- \n")
    cat(paste0("title: '", i, "' \n"))
    cat("output: html_document \n")
    cat("--- \n\n")
    
    # load map
    cat("```{r, echo = FALSE, warning = FALSE} \n")
    cat("library(leaflet) \n")
    cat(paste0("m <- readRDS(here::here('pkgdown/leaflet_maps/", i, "_leaflet.rds')) \n"))
    cat("``` \n\n")
    
    # map
    cat("```{r, echo = FALSE} \n")
    cat("m \n")
    cat("```")
    
  sink()
  
}

# modify _pkgdown.yml
yaml_file <- yaml::read_yaml(here::here('pkgdown/_pkgdown.yml'))

# add menu items 
mod_menu = lapply(X = exp_data, FUN = function(X) { list(text = X, href = paste0('articles/', X, '_leaflet.html')) })
yaml_file$navbar$components$map$menu <- mod_menu

# output
yaml::write_yaml(x = yaml_file, file = here::here('pkgdown/_pkgdown.yml'))
