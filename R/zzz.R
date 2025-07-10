## Issue deprecation warning 
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste(
      "Note: The following datasets are deprecated and will be removed in a future version:",
      "  • BTS_Strata",
      "  • EcoMon_Strata",
      "  • Shellfish_Strata",
      "  • Shrimp_Strata",
      "Please use https://mdeb-nefsc-noaa.hub.arcgis.com/ instead.",
      sep = "\n"
    )
  )
}