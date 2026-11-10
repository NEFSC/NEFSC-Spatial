# Coastal Shark Bottom Longline Survey

An `sf` object containing spatial data for the Coastal Shark Bottom
Longline Survey. Scientific survey strata for the Coastal Shark Bottom
Longline Survey.

## Usage

``` r
data('csbll_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -81.7 ymin: 24.4 xmax: -74.4 ymax: 38.5

- Projected CRS:

  WGS 84

- Features:

  1 x 5

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(csbll_strata)

# Plot the geometry
plot(sf::st_geometry(csbll_strata))
} # }
```
