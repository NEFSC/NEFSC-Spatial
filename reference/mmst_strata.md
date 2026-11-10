# Marine Mammal and Sea Turtle Survey

An `sf` object containing spatial data for the Marine Mammal and Sea
Turtle Survey.

## Usage

``` r
data('mmst_strata')
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

  7 x 6

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(mmst_strata)

# Plot the geometry
plot(sf::st_geometry(mmst_strata))
} # }
```
