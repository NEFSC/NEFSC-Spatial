# eDNA Survey

An `sf` object containing spatial data for the eDNA Survey. Sampling
stations for the eDNA Survey.

## Usage

``` r
data('edna_stations')
```

## Format

An `sf` object:

- Geometry type:

  POINT

- Dimension:

  NA

- Bounding box:

  xmin: -75.5 ymin: 36 xmax: -65.4 ymax: 44.5

- Projected CRS:

  WGS 84

- Features:

  35 x 13

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(edna_stations)

# Plot the geometry
plot(sf::st_geometry(edna_stations))
} # }
```
