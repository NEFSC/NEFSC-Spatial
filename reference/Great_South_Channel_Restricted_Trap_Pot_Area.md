# Great South Channel Restricted Area

An `sf` object that depicts the boundaries of the Great South Channel
Restricted Area in effect from April 1 to June 30 annually for the NOAA
Fisheries Service’s Greater Atlantic Regional Fisheries Office (GARFO).

## Usage

``` r
data("Great_South_Channel_Restricted_Trap_Pot_Area")
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -69.75 ymin: 41 xmax: -68.21667 ymax: 42.16667

- Geodetic CRS:

  NAD83

- Features:

  1 x 26

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/resource/map/great-south-channel-restricted-area>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(Great_South_Channel_Restricted_Trap_Pot_Area)

# Plot the geometry
plot(sf::st_geometry(Great_South_Channel_Restricted_Trap_Pot_Area))
} # }
```
