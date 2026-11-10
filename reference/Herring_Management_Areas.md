# Herring Management Areas

An `sf` object depicting the boundaries of the Herring Management Areas.

## Usage

``` r
data("Herring_Management_Areas")
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -78.57412 ymin: 33.81288 xmax: -65.69947 ymax: 45.1918

- Geodetic CRS:

  NAD83

- Features:

  4 x 26

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/resource/map/herring-management-areas>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(Herring_Management_Areas)

# Plot the geometry
plot(sf::st_geometry(Herring_Management_Areas))
} # }
```
