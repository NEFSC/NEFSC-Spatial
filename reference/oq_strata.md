# Atlantic Surfclam and Ocean Quahog Survey

An `sf` object containing spatial data for the Atlantic Surfclam and
Ocean Quahog Survey. Scientific survey strata for Ocean Quahog Survey.

## Usage

``` r
data('oq_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -74.9 ymin: 36.5 xmax: -66.5 ymax: 42.1

- Projected CRS:

  WGS 84

- Features:

  12 x 20

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(oq_strata)

# Plot the geometry
plot(sf::st_geometry(oq_strata))
} # }
```
