# Scallop Restricted Area

An `sf` object containing the Scallop Restricted Areas. Specifically
Area I, II, Nantucket Lightship North, Nantucket Lightship West, New
York Bight, and Elephant Trunk.

## Usage

``` r
data("Scallop_Rotational_Areas_20230411")
```

## Format

An `sf` object

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -8274749 ymin: 4602998 xmax: -7333888 ymax: 5087139

- Geodetic CRS:

  WGS 84 / Pseudo-Mercator

- Features:

  6 x 26

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/resource/map/atlantic-sea-scallop-managed-waters-fishing-year-2023>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(Scallop_Rotational_Areas_20230411)

# Plot the geometry
plot(sf::st_geometry(Scallop_Rotational_Areas_20230411))
} # }
```
