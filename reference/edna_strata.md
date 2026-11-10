# eDNA Survey

An `sf` object containing spatial data for the eDNA Survey. Scientific
survey strata for the eDNA Survey.

## Usage

``` r
data('edna_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76 ymin: 35.1 xmax: -65.2 ymax: 44.5

- Projected CRS:

  WGS 84

- Features:

  48 x 11

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(edna_strata)

# Plot the geometry
plot(sf::st_geometry(edna_strata))
} # }
```
