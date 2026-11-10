# Hook and Line Survey

An `sf` object containing spatial data for the Hook and Line Survey.

## Usage

``` r
data('hl_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -75.9 ymin: 35.3 xmax: -68.6 ymax: 41.8

- Projected CRS:

  WGS 84

- Features:

  1 x 6

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(hl_strata)

# Plot the geometry
plot(sf::st_geometry(hl_strata))
} # }
```
