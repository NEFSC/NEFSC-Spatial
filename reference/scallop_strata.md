# Sea Scallop Survey

An `sf` object containing spatial data for the Sea Scallop Survey. The
current (as of 2025) NEFSC Scallop Strata (SAMS). Starting in 2025, a
spatially balanced form of stratified random sampling called
[Generalized Random Tessellation Stratified (GRTS) was implemented,
along with a switch to using Scallop Area Management Simulator
(SAMS)](https://www.nefmc.org/calendar/aug-19-2024-ssc-sub-panel-meeting)
areas as survey strata. While still a form of stratified random
sampling, this method prevents random stations from being placed very
close together. Use of the SAMS areas as strata ensures that sampling is
more useful to management.

## Usage

``` r
data('scallop_strata')
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -74.9 ymin: 36.6 xmax: -66.3 ymax: 42.2

- Projected CRS:

  WGS 84

- Features:

  23 x 8

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(scallop_strata)

# Plot the geometry
plot(sf::st_geometry(scallop_strata))
} # }
```
