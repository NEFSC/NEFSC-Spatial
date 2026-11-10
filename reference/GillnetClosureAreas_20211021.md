# Gillnet Closure Areas

An `sf` object containing the closure areas for gillnets. Specifically
Closed Area 1 and Nantucket Lightship Closure Area.

## Usage

``` r
data("GillnetClosureAreas_20211021")
```

## Format

An `sf` object

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -70.33333 ymin: 40.33333 xmax: -68.5 ymax: 41.5

- Geodetic CRS:

  NAD83

- Features:

  2 x 26

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/resource/map/gillnet-closure-areas>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(GillnetClosureAreas_20211021)

# Plot the geometry
plot(sf::st_geometry(GillnetClosureAreas_20211021))
} # }
```
