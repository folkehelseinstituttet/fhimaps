#' Maps of Oslo bydels (wards) (2020 borders)
#'
#' We conveniently package map datasets for Oslo bydels (wards)
#' (taken from Oslo municipality) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (ward code).}
#' }
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::oslo_map_ward_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"oslo_map_ward_b2020"



#' Maps of Oslo bydels (wards) (2020 borders) in sf format
#'
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (ward code).}
#' }
"oslo_map_ward_b2020_sf"


gen_oslo_map_ward <- function(return_sf=FALSE) {

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL


  d <- sf::read_sf(
    system.file("rawdata", "Bydel_Oslo", "Bydeler.shp", package = "fhimaps")
  )

  # drop Z dimension, make into sp
  d <- sf::st_zm(d)
  spdf <- as(d, "Spatial")

  # simplify
  spdf$BYDELSNAVN <- NULL
  spdf_simple <- rgeos::gSimplify(spdf, tol=20, topologyPreserve = F)


  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("wardoslo0301%s", formatC(as.numeric(spdf$BYDEL), width = 2, flag = "0"))

    # remove marka (16,17 record)
    x <- x[1:15, ]
    return(x)
  }

  spdf_simple$ward <- spdf$BYDEL
  spdf_fortified <- broom::tidy(spdf_simple, region = "ward")
  setDT(spdf_fortified)

  # convert from UTM to latlong
  # the zone need to refer to spdf@proj4string
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=32 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  # align with the standard location_code
  spdf_fortified[, location_code := sprintf("wardoslo0301%s", formatC(as.numeric(id), width = 2, flag = "0"))]

  # remove Marka, since it's not oslo
  spdf_fortified <- spdf_fortified[location_code != 'wardoslo030117']

  # remove unneeded
  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}


