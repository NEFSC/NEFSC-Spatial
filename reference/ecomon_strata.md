# Ecosystem Monitoring Survey

An `sf` object containing spatial data for the Ecosystem Monitoring
Survey. Ecosystem Monitoring plankton stations are selected using a
random-stratified design based on the Northeast Fisheries Science Center
bottom trawl survey design. There are forty-seven plankton strata across
the Northeast Shelf ecosystem. The strata are combined into four regions
from Cape Hatteras to Cape Sable (Mid-Atlantic Bight, Southern New
England, Georges Bank, and Gulf of Maine). Thirty randomly selected
stations are targeted for sampling from each region during a survey.

## Usage

``` r
data('ecomon_strata')
```

## Format

An `sf` object:

- Geometry type:

  MULTIPOLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -76 ymin: 35.1 xmax: -65.2 ymax: 44.5

- Projected CRS:

  WGS 84

- Features:

  48 x 13

- Metadata:

  See source

## Source

https://mdeb-nefsc-noaa.hub.arcgis.com/

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the dataset
data(ecomon_strata)

# Plot the geometry
plot(sf::st_geometry(ecomon_strata))
} # }
```
