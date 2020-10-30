# Creates the norway_locations, norway_municip_merging, and norway_population data.table
# @param base_loc Folder where data will be saved
gen_data_all <- function(base_loc) {
  # base_loc = file.path(getwd(),"data")
  old_wd <- getwd()
  on.exit(setwd(old_wd))
  setwd(base_loc)

  # map labels

  norway_map_county_label_positions_b2017 <- gen_norway_map_county_label_positions(x_year_end = 2017)
  save(norway_map_county_label_positions_b2017, file = file.path(base_loc, "norway_map_county_label_positions_b2017.rda"), compress = "xz")
  norway_map_county_label_positions_b2019 <- gen_norway_map_county_label_positions(x_year_end = 2019)
  save(norway_map_county_label_positions_b2019, file = file.path(base_loc, "norway_map_county_label_positions_b2019.rda"), compress = "xz")
  norway_map_county_label_positions_b2020 <- gen_norway_map_county_label_positions(x_year_end = 2020)
  save(norway_map_county_label_positions_b2020, file = file.path(base_loc, "norway_map_county_label_positions_b2020.rda"), compress = "xz")

  norway_map_insert_title_position_b2017 <- gen_norway_map_insert_title_position(x_year_end = 2017)
  save(norway_map_insert_title_position_b2017, file = file.path(base_loc, "norway_map_insert_title_position_b2017.rda"), compress = "xz")
  norway_map_insert_title_position_b2019 <- gen_norway_map_insert_title_position(x_year_end = 2019)
  save(norway_map_insert_title_position_b2019, file = file.path(base_loc, "norway_map_insert_title_position_b2019.rda"), compress = "xz")
  norway_map_insert_title_position_b2020 <- gen_norway_map_insert_title_position(x_year_end = 2020)
  save(norway_map_insert_title_position_b2020, file = file.path(base_loc, "norway_map_insert_title_position_b2020.rda"), compress = "xz")

  # world_map <- gen_world_map()
  # save(world_map, file=file.path("/git","fhimaps","data","world_map.rda"), compress = "xz")

  # norway 2017 ----
  norway_map_county_b2017_sf <- gen_norway_map_county(x_year_end=2017, return_sf = T)
  save(norway_map_county_b2017_sf, file=file.path("/git","/fhimaps","data","norway_map_county_b2017_sf.rda"), compress = "xz")

  norway_map_county_b2017 <- gen_norway_map_county(x_year_end=2017)
  save(norway_map_county_b2017, file=file.path("/git","/fhimaps","data","norway_map_county_b2017.rda"), compress = "xz")

  norway_map_county_with_insert_b2017 <- gen_norway_map_county(x_year_end=2017, insert = T)
  save(norway_map_county_with_insert_b2017, file=file.path("/git","/fhimaps","data","norway_map_county_with_insert_b2017.rda"), compress = "xz")

  # norway 2019 ----
  # county
  norway_map_county_b2019_sf <- gen_norway_map_county(x_year_end=2019, return_sf = TRUE)
  save(norway_map_county_b2019_sf, file=file.path("/git","/fhimaps","data","norway_map_county_b2019_sf.rda"), compress = "xz")

  norway_map_county_b2019 <- gen_norway_map_county(x_year_end=2019)
  save(norway_map_county_b2019, file=file.path("/git","/fhimaps","data","norway_map_county_b2019.rda"), compress = "xz")

  # municip
  norway_map_municip_b2019_sf <- gen_norway_map_municip(x_year_end=2019, return_sf = TRUE)
  save(norway_map_municip_b2019_sf, file=file.path("/git","/fhimaps","data","norway_map_municip_b2019_sf.rda"), compress = "xz")

  norway_map_municip_b2019 <-  gen_norway_map_municip(x_year_end=2019)
  save(norway_map_municip_b2019, file=file.path("/git","/fhimaps","data","norway_map_municip_b2019.rda"), compress = "xz")

  # county with insert
  norway_map_county_with_insert_b2019 <- gen_norway_map_county(x_year_end=2019, insert = T)
  save(norway_map_county_with_insert_b2019, file=file.path("/git","/fhimaps","data","norway_map_county_with_insert_b2019.rda"), compress = "xz")

  # municip with insert
  norway_map_municip_with_insert_b2019 <-  gen_norway_map_municip(x_year_end=2019, insert = T)
  save(norway_map_municip_with_insert_b2019, file=file.path("/git","/fhimaps","data","norway_map_municip_with_insert_b2019.rda"), compress = "xz")

  # norway 2020 ----
  norway_map_split_county_b2020 <- gen_norway_map_county(x_year_end=2020, split=T)
  save(norway_map_split_county_b2020, file=file.path("/git","/fhimaps","data","norway_map_split_county_b2020.rda"), compress = "xz")
  norway_map_split_municip_b2020 <-  gen_norway_map_municip(x_year_end=2020, split=T)
  save(norway_map_split_municip_b2020, file=file.path("/git","/fhimaps","data","norway_map_split_municip_b2020.rda"), compress = "xz")

  norway_map_county_b2020_sf <- gen_norway_map_county(x_year_end=2020, return_sf = T)
  save(norway_map_county_b2020_sf, file=file.path("/git","/fhimaps","data","norway_map_county_b2020_sf.rda"), compress = "xz")
  norway_map_county_b2020 <- gen_norway_map_county(x_year_end=2020)
  save(norway_map_county_b2020, file=file.path("/git","/fhimaps","data","norway_map_county_b2020.rda"), compress = "xz")
  norway_map_municip_b2020_sf <-  gen_norway_map_municip(x_year_end=2020, return_sf = T)
  save(norway_map_municip_b2020_sf, file=file.path("/git","/fhimaps","data","norway_map_municip_b2020_sf.rda"), compress = "xz")
  norway_map_municip_b2020 <-  gen_norway_map_municip(x_year_end=2020)
  save(norway_map_municip_b2020, file=file.path("/git","/fhimaps","data","norway_map_municip_b2020.rda"), compress = "xz")

  norway_map_county_with_insert_b2020 <- gen_norway_map_county(x_year_end=2020, insert = T)
  save(norway_map_county_with_insert_b2020, file=file.path("/git","/fhimaps","data","norway_map_county_with_insert_b2020.rda"), compress = "xz")
  norway_map_municip_with_insert_b2020 <-  gen_norway_map_municip(x_year_end=2020, insert = T)
  save(norway_map_municip_with_insert_b2020, file=file.path("/git","/fhimaps","data","norway_map_municip_with_insert_b2020.rda"), compress = "xz")

  # senorge 2019 ----
  load(file.path(base_loc,"norway_map_municip_b2019.rda"))
  senorge_b2019 <- gen_senorge(norway_locations_current = fhidata::norway_locations_b2019, norway_map_municips = norway_map_municip_b2019)
  save(senorge_b2019, file=file.path(base_loc,"senorge_b2019.rda"), compress = "xz")

  # senorge 2020 ----
  load(file.path(base_loc,"norway_map_municip_b2020.rda"))
  senorge_b2020 <- gen_senorge(fhidata::norway_locations_b2020, norway_map_municip_b2020)
  save(senorge_b2020, file=file.path(base_loc,"senorge_b2020.rda"), compress = "xz")
}
