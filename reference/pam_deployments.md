# Passive Acoustic Monitoring Survey

An `sf` object containing spatial data for the Passive Acoustic
Monitoring Survey.

## Usage

``` r
data('pam_deployments')
```

## Format

An `sf` object:

- Geometry type:

  POINT

- Dimension:

  NA

- Bounding box:

  xmin: -75.7 ymin: 36.5 xmax: -66.9 ymax: 44.8

- Projected CRS:

  WGS 84

- Features:

  82 x 23

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(pam_deployments)

# Plot the geometry
plot(sf::st_geometry(pam_deployments))
} # }
```
