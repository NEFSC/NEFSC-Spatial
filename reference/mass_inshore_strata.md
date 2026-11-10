# Massachusetts Inshore State Survey

An `sf` object containing spatial data for the Massachusetts Inshore
State Survey.

## Usage

``` r
data('mass_inshore_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: 231326.1 ymin: 772098.2 xmax: 336448.2 ymax: 958709

- Projected CRS:

  NAD83 / Massachusetts Mainland

- Features:

  42 x 8

- Metadata:

  See source

## Source

https://www.mass.gov/info-details/review-trawl-survey-updates. Division
of Marine Fisheries - New Bedford Office. For more info contact the
[Resource Assessment Project
Leader](https://www.mass.gov/info-details/dmf-staff-directory#fisheries-biology-recreational-fishing-survey-and-assessment).

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(mass_inshore_strata)

# Plot the geometry
plot(sf::st_geometry(mass_inshore_strata))
} # }
```
