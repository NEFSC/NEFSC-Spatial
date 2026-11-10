# North Atlantic Right Whale Aerial Survey

An `sf` object containing spatial data for the North Atlantic Right
Whale Aerial Survey. Scientific survey strata for the North Atlantic
Right Whale Aerial Survey.

## Usage

``` r
data('narw_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76 ymin: 36.7 xmax: -66.9 ymax: 44.8

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
data(narw_strata)

# Plot the geometry
plot(sf::st_geometry(narw_strata))
} # }
```
