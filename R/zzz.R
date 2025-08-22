## Issue deprecation warning 
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste(
      "Note: The following datasets are deprecated and will be removed in a future version:",
      "  • BTS_Strata",
      "  • EcoMon_Strata",
      "  • Shellfish_Strata",
      "  • Shrimp_Strata",
      "Please use https://mdeb-nefsc-noaa.hub.arcgis.com/datasets instead:",
      "  +/noaa::bottom-trawl-survey/about",
      "  +/noaa::ecosystem-monitoring-survey/about",
      "  +/noaa::atlantic-surfclam-and-ocean-quahog-survey/about",
      "  +/noaa::sea-scallop-survey/about",
      "  +/noaa::northern-shrimp-survey/about",
      sep = "\n"
    )
  )
}
