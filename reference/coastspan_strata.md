# Cooperative Atlantic States Shark Pupping and Nursery Survey

An `sf` object containing spatial data for the Cooperative Atlantic
States Shark Pupping and Nursery Survey.

## Usage

``` r
data('coastspan_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -81.6 ymin: 27.1 xmax: -74.9 ymax: 39.2

- Projected CRS:

  WGS 84

- Features:

  7 x 5

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(coastspan_strata)

# Plot the geometry
plot(sf::st_geometry(coastspan_strata))
} # }
```
