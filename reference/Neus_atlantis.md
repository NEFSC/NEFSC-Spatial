# Northeast US (NEUS) atlantis model domain

An `sf` object containing the box level boundaries used in the Northeast
Atlantis ecosystem end to end model.

## Usage

``` r
data("Neus_atlantis")
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76.45919 ymin: 34.76128 xmax: -63.42171 ymax: 46.11478

- Geodetic CRS:

  WGS 83

- Features:

  30 x 11

- Metadata:

  See source

## Source

<https://github.com/NOAA-EDAB/neus-atlantis/wiki/Spatial-extent-of-model>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(Neus_atlantis)

# Plot the geometry
plot(sf::st_geometry(Neus_atlantis))
} # }
```
