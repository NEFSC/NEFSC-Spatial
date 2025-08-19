#' Massachusetts Inshore State Survey
#'
#' @description An \code{sf} object containing spatial data for the Massachusetts Inshore State Survey.
#'
#' @format An \code{sf} object:
#' \describe{
#'   \item{Geometry type}{MULTIPOLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: 231326.1 ymin: 772098.2 xmax: 336448.2 ymax: 958709}
#'   \item{Projected CRS}{NAD83 / Massachusetts Mainland}
#'   \item{Features}{42 x 8}
#'   \item{Metadata}{See source}
#' }
#'
#' @docType data
#' @name mass_inshore_strata
#' @usage data('mass_inshore_strata')
#' @keywords {datasets}
#' @source {https://www.mass.gov/info-details/review-trawl-survey-updates. Division of Marine Fisheries - New Bedford Office. For more info contact the
#' [Resource Assessment Project Leader](https://www.mass.gov/info-details/dmf-staff-directory#fisheries-biology-recreational-fishing-survey-and-assessment)  }
#' @examples
#' \dontrun{
#' # Load the dataset
#' data(mass_inshore_strata)
#'
#' # Plot the geometry
#' plot(sf::st_geometry(mass_inshore_strata))
#' }
NULL
