# Coastal Shark Bottom Longline Survey

An `sf` object containing spatial data for the Coastal Shark Bottom
Longline Survey. Sampling stations for the Coastal Shark Bottom Longline
Survey.

## Usage

``` r
data('csbll_stations')
```

## Format

An `sf` object:

- Geometry type:

  POINT

- Dimension:

  NA

- Bounding box:

  xmin: -81.6 ymin: 24.5 xmax: -74.5 ymax: 38.4

- Projected CRS:

  WGS 84

- Features:

  87 x 6

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(csbll_stations)

# Plot the geometry
plot(sf::st_geometry(csbll_stations))
} # }
```
