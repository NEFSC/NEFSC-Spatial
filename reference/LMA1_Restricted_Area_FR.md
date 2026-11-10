# LMA 1 Restricted Area

An `sf` object that depicts the boundaries of the Lobster Management
Area One Restricted Area in effect annually from October 1 to January 30
for the NOAA Fisheries Service’s Greater Atlantic Regional Fisheries
Office (GARFO).

## Usage

``` r
data("LMA1_Restricted_Area_FR")
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -69.6128 ymin: 42.89198 xmax: -68.28787 ymax: 43.73333

- Geodetic CRS:

  WGS 84

- Features:

  1 x 26

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/resource/map/lma-1-restricted-area>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(LMA1_Restricted_Area_FR)

# Plot the geometry
plot(sf::st_geometry(LMA1_Restricted_Area_FR))
} # }
```
