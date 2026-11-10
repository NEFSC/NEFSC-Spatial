# Gulf of Maine Bottom Longline Survey

An `sf` object containing spatial data for the Gulf of Maine Bottom
Longline Survey. Scientific survey substrata for the Gulf of Maine
Bottom Longline Survey. The survey substrata give further details on
bottom-type (smooth or rough bottom) encountered in the survey area.

## Usage

``` r
data('gombll_substrata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -70.7 ymin: 42 xmax: -67.4 ymax: 43.4

- Projected CRS:

  WGS 84

- Features:

  12 x 14

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(gombll_substrata)

# Plot the geometry
plot(sf::st_geometry(gombll_substrata))
} # }
```
