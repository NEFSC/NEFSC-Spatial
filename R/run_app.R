#' run_app
#'
#' Explore data available by running a shiny app included in package
#'
#' @export
#'
#' @examples
#' run_app()

run_app <- function() {
  shiny::runApp(system.file("shiny", package = "NEFSCspatial"),
                display.mode = "normal",
                launch.browser = TRUE)
}
