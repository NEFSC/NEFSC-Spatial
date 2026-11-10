# AMAPPS 10 km Grid

An `sf` object containing the Atlantic Marine Assessment Program for
Protected Species (AMAPPS) 10 km grid. The AMAPPS grid has a cell size
of 10 km x 10 km, with an oblique Mercator projection. Grid cell values
represent grid cell IDs.

## Usage

``` r
data("amapps_grid")
```

## Format

An `sf` object:

- Geometry type:

  POLYGON

- Dimension:

  XY

- Bounding box:

  xmin: -820443.2 ymin: -1234728 xmax: 1579557 ymax: 2045272

- Projected CRS:

  unnamed

- Features:

  78720 x 2

- Source:

  data-raw/gis/AMAPPS_10km_grid.tif

## Source

<https://www.fisheries.noaa.gov/new-england-mid-atlantic/population-assessments/atlantic-marine-assessment-program-protected>

## Examples

``` r
if (FALSE) { # \dontrun{
# load terra
library(terra)

# convert sf to SpatVector
amapps_vec <- NEFSCspatial::amapps_grid |> as('SpatVector') 

# empty raster from amapps_vec
amapps_ras <- rast(amapps_vec, nrow = 328, ncol = 240)

# rasterize
amapps <- rasterize(amapps_vec, amapps_ras, field = 'AMAPPS_10km_grid')

# visualize
plot(amapps)
} # }
```
