# Massachusetts Inshore Statistical Areas

An `sf` object containing the boundaries of the Massachusetts Inshore
statistical areas.

## Usage

``` r
data("final_mass_inshore_stat")
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -71.12554 ymin: 41.18887 xmax: -69.86013 ymax: 42.87647

- Geodetic CRS:

  NAD83

- Features:

  14 x 5

- Metadata:

  See source

## Source

<https://www.fisheries.noaa.gov/inport/item/33467>

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(final_mass_inshore_stat)

# Plot the geometry
plot(sf::st_geometry(final_mass_inshore_stat))
} # }
```
