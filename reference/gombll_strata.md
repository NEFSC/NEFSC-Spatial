# Gulf of Maine Bottom Longline Survey

An `sf` object containing spatial data for the Gulf of Maine Bottom
Longline Survey. Scientific survey strata for the Gulf of Maine Bottom
Longline Survey.

## Usage

``` r
data('gombll_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -70.7 ymin: 42 xmax: -67.4 ymax: 43.4

- Projected CRS:

  WGS 84

- Features:

  6 x 9

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(gombll_strata)

# Plot the geometry
plot(sf::st_geometry(gombll_strata))
} # }
```
