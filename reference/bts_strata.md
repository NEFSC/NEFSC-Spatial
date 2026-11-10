# Bottom Trawl Survey

An `sf` object containing spatial data for the Bottom Trawl Survey.
Scientific survey strata for the Bottom Trawl Survey.

## Usage

``` r
data('bts_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76.2 ymin: 34.4 xmax: -65.6 ymax: 44.5

- Projected CRS:

  WGS 84

- Features:

  82 x 16

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(bts_strata)

# Plot the geometry
plot(sf::st_geometry(bts_strata))
} # }
```
