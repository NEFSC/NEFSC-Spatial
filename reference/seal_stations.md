# Seal Aerial Survey

An `sf` object containing spatial data for the Seal Aerial Survey.

## Usage

``` r
data('seal_stations')
```

## Format

An `sf` object:

- Geometry type:

  POINT

- Dimension:

  NA

- Bounding box:

  xmin: -70.9 ymin: 41.3 xmax: -67 ymax: 44.9

- Projected CRS:

  WGS 84

- Features:

  1026 x 14

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(seal_stations)

# Plot the geometry
plot(sf::st_geometry(seal_stations))
} # }
```
