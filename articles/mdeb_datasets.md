# MDEB datasets

The Northeast Fisheries Science Center Marine Development [GIS Data
Hub](https://mdeb-nefsc-noaa.hub.arcgis.com/) created by the Marine
Development and Ecology Branch (MDEB) host many spatial datasets. The
`NEFSCspatial` package provides access to these datasets and serves them
up as `sf` objects.

A current list of all data sets included in the package:

| title | dataset_name |
|----|----|
| Passive Acoustic Monitoring Survey | pam_deployments |
| Cooperative Atlantic States Shark Pupping and Nursery Survey | coastspan_strata |
| Marine Mammal and Sea Turtle Survey | mmst_strata |
| Gulf of Maine Bottom Longline Survey | gombll_strata |
| Sea Scallop Survey | scallop_strata |
| Sea Scallop Survey | scallop_strata_historic |
| North Atlantic Right Whale Aerial Survey | narw_lines |
| North Atlantic Right Whale Aerial Survey | narw_strata |
| Ecosystem Monitoring Survey | ecomon_stations |
| Ecosystem Monitoring Survey | ecomon_strata |
| Turtle Ecology Survey | turtle_strata |
| Northern Shrimp Survey | shrimp_strata |
| Seal Aerial Survey | seal_stations |
| Atlantic Surfclam and Ocean Quahog Survey | oq_strata |
| Atlantic Surfclam and Ocean Quahog Survey | sc_strata |
| Hook and Line Survey | hl_strata |
| eDNA Survey | edna_stations |
| eDNA Survey | edna_strata |
| Coastal Shark Bottom Longline Survey | csbll_stations |
| Coastal Shark Bottom Longline Survey | csbll_strata |
| Bottom Trawl Survey | bts_strata |

We can then plot any attribute, for example the “SUBSTRATA” attribute of
the `gombll_substrata` dataset:

``` r

gombll_substrata |> 
  ggplot2::ggplot() + 
  ggplot2::geom_sf(ggplot2::aes(fill = SUBSTRATA))
```

![Gulf of Maine Bottom Longline Survey substrata
plot](mdeb_datasets_files/figure-html/plotecomon-1.png)
