# Northern Shrimp Survey

An `sf` object containing spatial data for the Northern Shrimp Survey.
Scientific survey strata for the Northern Shrimp Survey.

## Usage

``` r
data('shrimp_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -70.7 ymin: 41.1 xmax: -68 ymax: 44.1

- Projected CRS:

  WGS 84

- Features:

  12 x 9

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(shrimp_strata)

# Plot the geometry
plot(sf::st_geometry(shrimp_strata))
} # }
```
