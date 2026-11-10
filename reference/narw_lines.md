# North Atlantic Right Whale Aerial Survey

An `sf` object containing spatial data for the North Atlantic Right
Whale Aerial Survey. Aerial survey lines for the North Atlantic Right
Whale Aerial Survey.

## Usage

``` r
data('narw_lines')
```

## Format

An `sf` object:

- Geometry type:

  MULTILINESTRING

- Dimension:

  NA

- Bounding box:

  xmin: -76 ymin: 36.7 xmax: -66.9 ymax: 44.8

- Projected CRS:

  WGS 84

- Features:

  80 x 6

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(narw_lines)

# Plot the geometry
plot(sf::st_geometry(narw_lines))
} # }
```
