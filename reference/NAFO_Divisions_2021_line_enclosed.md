# NAFO Divisions (Bounded)

An `sf` object that depicts the boundaries of the NAFO regions.

## Usage

``` r
data("NAFO_Divisions_2021_line_enclosed")
```

## Format

An `sf` object:

- Geometry type:

  LINESTRING

- Dimension:

  XY

- Bounding box:

  xmin: -80 ymin: 35 xmax: -42 ymax: 78.16667

- Geodetic CRS:

  NAD83

- Features:

  38 x 6

- Metadata:

  See source

## Source

<https://www.nafo.int/Data/GIS>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(NAFO_Divisions_2021_line_enclosed)

# Plot the geometry
plot(sf::st_geometry(NAFO_Divisions_2021_line_enclosed))
} # }
```
