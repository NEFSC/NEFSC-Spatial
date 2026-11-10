# Sea Scallop Survey

An `sf` object containing spatial data for the Sea Scallop Survey. The
historic (pre-2025) NEFSC Shellfish Strata. The standardized scallop
dredge survey has been conducted since 1975 (annually since 1977) and
employs a stratified random sampling design. The original NEFSC
Shellfish Strata were based primarily on depth and secondarily by
latitude, and locations of sampling stations were randomly selected
within each stratum prior to each annual cruise.

## Usage

``` r
data('scallop_strata_historic')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76 ymin: 35.5 xmax: -65.9 ymax: 42.2

- Projected CRS:

  WGS 84

- Features:

  97 x 13

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(scallop_strata_historic)

# Plot the geometry
plot(sf::st_geometry(scallop_strata_historic))
} # }
```
