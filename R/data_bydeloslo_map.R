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
#'   data = fhimaps::oslo_ward_map_b2020_default_dt,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"oslo_ward_map_b2020_default_dt"



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
"oslo_ward_map_b2020_default_sf"


#' Label Positions for Oslo wards (2020 borders)
#'
#' GPS coordinates for labels for Oslo wards
#'
#' @format
#' \describe{
#' \item{location_code}{Location code (ward code).}
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = fhimaps::oslo_ward_map_b2020_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_text(
#'   data = fhimaps::oslo_ward_positions_geolabels_b2020_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"oslo_ward_positions_geolabels_b2020_default_dt"


gen_oslo_ward_map <- function(return_sf=FALSE) {

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
  spdf <- methods::as(d, "Spatial")

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


gen_oslo_ward_position_geolabels <- function(x_year_end) {

  # d_oslo <- fhimaps::oslo_ward_map_b2020_default_dt
  # d_oslo[, mean_long := mean(long), by = location_code]
  # d_oslo[, mean_lat := mean(lat), by = location_code]
  # d_oslo_label <- d_oslo[, .(location_code, mean_long, mean_lat)] %>% unique

  stopifnot(x_year_end == 2020)

  label_positions <- data.table(
    location_code = c(
      "wardoslo030101", "wardoslo030102", "wardoslo030103",
      "wardoslo030104", "wardoslo030105", "wardoslo030106",
      "wardoslo030107", "wardoslo030108", "wardoslo030109",
      "wardoslo030110", "wardoslo030111", "wardoslo030112",
      "wardoslo030113", "wardoslo030114", "wardoslo030115"
    ),
    long = c(
      10.77076, 10.77518, 10.76383,
      10.73555, 10.70443, 10.65910,
      10.66882, 10.75822, 10.82681,
      10.88254, 10.92289, 10.87209,
      10.84233, 10.79450, 10.82684
    ),

    lat = c(
      59.90634, 59.92367, 59.93981,
      59.92530, 59.91825, 59.92892,
      59.95663, 59.95677, 59.94436,
      59.96523, 59.95431, 59.92764,
      59.88955, 59.86403, 59.83747
    )
  )


  return(label_positions)
}



