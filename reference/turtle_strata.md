# Turtle Ecology Survey

An `sf` object containing spatial data for the Turtle Ecology Survey.

## Usage

``` r
data('turtle_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -82.1 ymin: 24.2 xmax: -61.8 ymax: 45.2

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
data(turtle_strata)

# Plot the geometry
plot(sf::st_geometry(turtle_strata))
} # }
```
