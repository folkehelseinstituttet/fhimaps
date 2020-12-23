###### 2020 SPLIT
#' Split map of Norwegian county (2020 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_split_county_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_split_county_b2020"

#' Split map of Norwegian Municipalities (2020 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_split_municip_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_split_municip_b2020"

###### 2020 WITHOUT INSERTS

#' Maps of Norwegian county (2020 borders) in sf format
#'
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
"norway_map_county_b2020_sf"

#' Maps of Norwegian county (2020 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_b2020"

#' Maps of Norwegian Municipalities (2020 borders) in sf format
#'
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
"norway_map_municip_b2020_sf"

#' Maps of Norwegian Municipalities (2020 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_municip_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_municip_b2020"

###### 2020 WITH INSERTS

#' Maps of Norwegian county with insert (2020 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_with_insert_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_with_insert_b2020"

#' Maps of Norwegian municipalities with insert (2020 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_municip_with_insert_b2020,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_municip_with_insert_b2020"

###### 2019 WITHOUT INSERTS

#' Maps of Norwegian county (2019 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_map_county_b2019_sf"

#' Maps of Norwegian county (2019 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_b2019,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_b2019"

#' Maps of Norwegian Municipalities (2019 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_map_municip_b2019_sf"

#' Maps of Norwegian Municipalities (2019 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_municip_b2019,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_municip_b2019"

###### 2019 WITH INSERTS

#' Maps of Norwegian county with inserts (2019 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_with_insert_b2019,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_with_insert_b2019"

#' Maps of Norwegian municipalities with insert (2019 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_municip_with_insert_b2019,
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_municip_with_insert_b2019"

###### 2017 WITHOUT INSERTS

#' Maps of Norwegian county (2017 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_map_county_b2017_sf"

#' Maps of Norwegian county (2017 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(data = fhimaps::norway_map_county_b2017, color = "black", fill = "white", size = 0.2)
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_b2017"

###### 2017 WITH INSERTS

#' Maps of Norwegian county with inserts (2017 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat, group = group, fill = location_code))
#' q <- q + geom_polygon(data = fhimaps::norway_map_county_with_insert_b2017, color = "black", fill = "white", size = 0.2)
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_with_insert_b2017"

#### LABEL POSITIONS

#' Label Positions for Norwegian county (2020 borders)
#'
#' GPS coordinates for labels for Norwegian county
#'
#' @format
#' \describe{
#' \item{location_code}{Location code (county code).}
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_b2020,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white"
#' )
#' q <- q + geom_text(
#'   data = fhimaps::norway_map_county_label_positions_b2020,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_label_positions_b2020"

#' Label Positions for Norwegian county (2019 borders)
#'
#' GPS coordinates for labels for Norwegian county
#'
#' @format
#' \describe{
#' \item{location_code}{Location code (county code).}
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_b2019,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_text(
#'   data = fhimaps::norway_map_county_label_positions_b2019,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_label_positions_b2019"

#' Label Positions for Norwegian county (2017 borders)
#'
#' GPS coordinates for labels for Norwegian county
#'
#' @format
#' \describe{
#' \item{location_code}{Location code (county code).}
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = fhimaps::norway_map_county_b2017,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_text(
#'   data = fhimaps::norway_map_county_label_positions_b2017,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_county_label_positions_b2017"

#### TITLE POSITIONS

#' Title Positions for Inserts (2020 borders)
#'
#' GPS coordinates for inserts for Norwegian maps
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' pd <- fhimaps::norway_map_county_with_insert_b2020
#' q <- ggplot()
#' q <- q + geom_polygon(
#'   data = pd,
#'   aes(x = long, y = lat, group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = fhimaps::norway_map_insert_title_position_b2020$long,
#'   y = fhimaps::norway_map_insert_title_position_b2020$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_insert_title_position_b2020"

#' Title Positions for Inserts (2019 borders)
#'
#' GPS coordinates for inserts for Norwegian maps
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' pd <- fhimaps::norway_map_county_with_insert_b2019
#' q <- ggplot()
#' q <- q + geom_polygon(
#'   data = pd,
#'   aes(x = long, y = lat, group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = fhimaps::norway_map_county_with_insert_b2019$long,
#'   y = fhimaps::norway_map_county_with_insert_b2019$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_insert_title_position_b2019"

#' Title Positions for Inserts (2017 borders)
#'
#' GPS coordinates for inserts for Norwegian maps
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' library(ggplot2)
#' pd <- fhimaps::norway_map_county_with_insert_b2017
#' q <- ggplot()
#' q <- q + geom_polygon(
#'   data = pd,
#'   aes(x = long, y = lat, group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = fhimaps::norway_map_county_with_insert_b2017$long,
#'   y = fhimaps::norway_map_county_with_insert_b2017$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_map_insert_title_position_b2017"

gen_norway_map_county_label_positions <- function(x_year_end) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  if (x_year_end == 2017) {
    label_positions <- data.table(
      location_code = c(
        "county01", "county02", "county03", "county04",
        "county05", "county06", "county07", "county08",
        "county09", "county10", "county11", "county12",
        "county14", "county15", "county16", "county17",
        "county18", "county19", "county20"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5,
        9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5,
        6.415354, 7.8, 9.650999, 11.546003,
        14.8, 19.244275, 24.7
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886,
        61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533,
        61.6, 62.5, 63.43384, 67.29402,
        66.5, 68.9, 69.6
      )
    )
  } else if (x_year_end == 2019) {
    label_positions <- data.table(
      location_code = c(
        "county01", "county02", "county03", "county04",
        "county05", "county06", "county07", "county08",
        "county09", "county10", "county11", "county12",
        "county14", "county15", "county18", "county19",
        "county20", "county50"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5, 9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5, 6.415354, 7.8, 14.8, 19.244275, 24.7, 11
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886, 61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533, 61.6, 62.5, 66.5, 68.9, 69.6, 63
      )
    )
  } else if (x_year_end == 2020) {
    label_positions <- data.table(
      location_code = c(
        "county30", "county03", "county34",
        "county38",
        "county42", "county11", "county46",
        "county15", "county18", "county54",
        "county50"
      ),
      long = c(
        8.7, 10.72028, 11.0, 8.5,
        8.15, 6.1, 6.5, 7.8, 14.8, 19.244275, 11
      ),

      lat = c(
        60.4, 59.98, 61.26886, 59.32481,
        58.6, 58.7, 60.7, 62.5, 66.5, 68.9, 63
      )
    )
  }

  return(label_positions)
}

gen_norway_map_insert_title_position <- function(x_year_end) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  label_positions <- data.table(
    long = c(
      19.5
    ),
    lat = c(
      64.75
    )
  )

  return(label_positions)
}

# insert for oslo/akershus?
# split the country in 2?
gen_norway_map_county <- function(x_year_end, insert = FALSE, split = FALSE, return_sf=FALSE) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL

  if (x_year_end == 2017) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker17.geojson", package = "fhimaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker19.geojson", package = "fhimaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker20.geojson", package = "fhimaps"),
      what = "sp"
    )
    spdf$navn <- NULL
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("county%s", formatC(as.numeric(spdf$fylkesnummer), width = 2, flag = "0"))
    return(x)
  }

  spdf_simple$fylkesnummer <- spdf$fylkesnummer
  spdf_fortified <- broom::tidy(spdf_simple, region = "fylkesnummer")
  setDT(spdf_fortified)

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  spdf_fortified[, location_code := sprintf("county%s", formatC(as.numeric(id), width = 2, flag = "0"))]

  if (insert) {
    extra <- spdf_fortified[location_code %in% c("county03")]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra)
  }

  if (split) {
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_center := mean(long)]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_center := mean(lat)]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_diff := long - long_center]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long := long_diff + long_center]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}

gen_norway_map_municip <- function(
  x_year_end,
  insert = FALSE,
  split = FALSE,
  return_sf=FALSE
  ) {
  stopifnot(x_year_end %in% c("2019", "2020"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL

  require_namespace(c("geojsonio", "broom", "rmapshaper", "sp"))

  if(return_sf){
    tol <- 1300
  } else {
    tol <- 500
  }

  if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Kommuner19.geojson", package = "fhimaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Kommuner20.geojson", package = "fhimaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("municip%s", formatC(as.numeric(spdf$kommunenummer), width = 4, flag = "0"))
    return(x)
  }

  spdf_simple$kommunenummer <- spdf$kommunenummer
  spdf_fortified <- broom::tidy(spdf_simple, region = "kommunenummer")

  setDT(spdf_fortified)
  spdf_fortified[, location_code := sprintf("municip%s", formatC(as.numeric(id), width = 4, flag = "0"))]

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  if (insert) {
    extra <- spdf_fortified[stringr::str_detect(location_code, "municip0[3]")]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra)
  }

  if (split) {
    locations <- c(
      stringr::str_subset(spdf_fortified$location_code, "municip18"),
      stringr::str_subset(spdf_fortified$location_code, "municip19"),
      stringr::str_subset(spdf_fortified$location_code, "municip20"),
      stringr::str_subset(spdf_fortified$location_code, "municip54")
    )
    spdf_fortified[location_code %in% locations, long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% locations, lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% locations, long_center := mean(long)]
    spdf_fortified[location_code %in% locations, lat_center := mean(lat)]

    spdf_fortified[location_code %in% locations, long_diff := long - long_center]
    spdf_fortified[location_code %in% locations, lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% locations, long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% locations, lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% locations, long := long_diff + long_center]
    spdf_fortified[location_code %in% locations, lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}
