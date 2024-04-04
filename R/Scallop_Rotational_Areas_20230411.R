#' Scallop Restricted Area
#'
#' An sf object containing the Scallop Restricted Areas
#' Specifically Area I,II, Nantucket Lightship North, Nantucket Lightship West, New York Bight, Elephant Trunk
#'
#' @format A data frame/ sf object (6 x 26)
#' \describe{
#'   \item{Geometry type}{POLYGON}
#'   \item{Dimension}{XY}
#'   \item{Bounding box}{xmin: -8274749 ymin: 4602998 xmax: -7333888 ymax: 5087139}
#'   \item{Geodetic CRS}{WGS 84/ Pseudo-Mercator}
#'   \item{Features}{6 x 25}
#'   \item{Metadata}{See source}
#'
#'
#'   \item{GARFO_ID}{A unique identifier used to identify and track this feature;
#'   a new GARFO_ID is generated for each version of a Regulated Area, including
#'    proposed or final versions (i.e. whenever boundaries or attributes are
#'    changed, edited or updated)}
#'   \item{AREANAME}{Official name of the Proposed Area, usually the area name as it will be printed in the CFR.}
#'   \item{COMMNAME}{Most commonly used name. May be identical to AREANAME, an abbreviation of AREANAME, or a different name altogether.}
#'   \item{AREAGROUP}{Specifies if the Proposed Area is part of a group of related areas.}
#'   \item{DESCRIBE}{A brief description of the purpose of the Proposed Area.}
#'   \item{CFRTITLE}{CFR Title citation where the Proposed Area will be legally defined}
#'   \item{CFRPT}{ACFR Part citation where the Proposed Area will be legally defined}
#'   \item{CFRPTTXT}{CFR Part citation header text}
#'   \item{CFRSUB}{CFR Subpart citation where the Proposed Area will be legally defined}
#'   \item{CFRSUBTXT}{CFR Subpart citation header text}
#'   \item{CFRSXN}{CFR Section citation where the Proposed Area will be legally defined}
#'   \item{CFRSXNTXT}{CFR Section citation header text}
#'   \item{CFRPARA}{CFR Paragraph citation where the Proposed Area will be legally defined}
#'   \item{CFRPARATXT}{CFR Paragraph citation header text}
#'   \item{FRCITE}{Federal Register citation of proposed rule containing the Proposed Area spatial definition.}
#'   \item{FRDATE}{Federal Register citation date of proposed rule containing the Proposed Area spatial definition.}
#'   \item{EFFECTDATE}{Date Regulated Area officially became law, or most recent modification. For Proposed Areas, this field will be blank because the area is not yet law.}
#'   \item{SOURCE}{If Proposed Area will be defined in the CFR, this is the citation for the Amendment/Framework/etc. that will establish the area. If the Proposed Area will not be defined in the CFR, this is the alternative source citation that will establish the area.}
#'   \item{RECURST}{Annually recurring date Proposed Area would become active}
#'   \item{RECUREND}{Annually recurring date Proposed Area would become inactive}
#'   \item{GISAUTHOR}{Name of the NOAA staff person who created the GIS feature}
#'   \item{CREATED}{Creation date of the GIS feature}
#'   \item{AREANOTES}{Miscellaneous notes regarding the Proposed Area or feature}
#'   \item{X}{x coordinate of polygon center}
#'   \item{Y}{y coordinate of polygon center}
#'   }
#'
#'@section Contact:
#'andrew.beet at noaa.gov
#'
#'
#' @docType data
#' @name Scallop_Rotational_Areas_20230411
#' @usage data("Scallop_Rotational_Areas_20230411")
#' @keywords datasets
#' @source \url{https://www.fisheries.noaa.gov/resource/map/atlantic-sea-scallop-managed-waters-fishing-year-2023}
NULL
