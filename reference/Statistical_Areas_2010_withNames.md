# Greater Atlantic Region Statistical Areas

An `sf` object containing the Greater Atlantic Region Statistical Areas
with name labels. Pulled from ftp://ftp.nefsc.noaa.gov/pub/gis/.

## Usage

``` r
data("Statistical_Areas_2010_withNames")
```

## Format

A `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -81.53406 ymin: 24 xmax: -42 ymax: 52.25

- Geodetic CRS:

  NAD83

- Metadata:

  See source

- Features:

  135 x 7

## Source

<https://www.fisheries.noaa.gov/resource/map/greater-atlantic-region-statistical-areas>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(Statistical_Areas_2010_withNames)

# Plot the geometry
plot(sf::st_geometry(Statistical_Areas_2010_withNames))
} # }
```
