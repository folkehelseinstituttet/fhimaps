# Creates the norway_locations, norway_municip_merging, and norway_population data.table
# @param base_loc Folder where data will be saved
gen_data_all <- function(base_loc) {
  # base_loc = file.path(getwd(),"data")
  old_wd <- getwd()
  on.exit(setwd(old_wd))
  setwd(base_loc)

  # map labels

  norway_map_counties_label_positions_b2017 <- gen_norway_map_counties_label_positions(x_year_end = 2017)
  save(norway_map_counties_label_positions_b2017, file = file.path(base_loc, "norway_map_counties_label_positions_b2017.rda"), compress = "xz")
  norway_map_counties_label_positions_b2019 <- gen_norway_map_counties_label_positions(x_year_end = 2019)
  save(norway_map_counties_label_positions_b2019, file = file.path(base_loc, "norway_map_counties_label_positions_b2019.rda"), compress = "xz")
  norway_map_counties_label_positions_b2020 <- gen_norway_map_counties_label_positions(x_year_end = 2020)
  save(norway_map_counties_label_positions_b2020, file = file.path(base_loc, "norway_map_counties_label_positions_b2020.rda"), compress = "xz")

  norway_map_insert_title_position_b2017 <- gen_norway_map_insert_title_position(x_year_end = 2017)
  save(norway_map_insert_title_position_b2017, file = file.path(base_loc, "norway_map_insert_title_position_b2017.rda"), compress = "xz")
  norway_map_insert_title_position_b2019 <- gen_norway_map_insert_title_position(x_year_end = 2019)
  save(norway_map_insert_title_position_b2019, file = file.path(base_loc, "norway_map_insert_title_position_b2019.rda"), compress = "xz")
  norway_map_insert_title_position_b2020 <- gen_norway_map_insert_title_position(x_year_end = 2020)
  save(norway_map_insert_title_position_b2020, file = file.path(base_loc, "norway_map_insert_title_position_b2020.rda"), compress = "xz")

  # world_map <- gen_world_map()
  # save(world_map, file=file.path("/git","fhidata","data","world_map.rda"), compress = "xz")

  # europe_map_nuts0 <- gen_europe_map_nuts(nuts_level=0)
  # save(europe_map_nuts0, file=file.path("/git","fhidata","data","europe_map_nuts0.rda"), compress = "xz")

  # europe_map_nuts1 <- gen_europe_map_nuts(nuts_level=1)
  # save(europe_map_nuts1, file=file.path("/git","fhidata","data","europe_map_nuts1.rda"), compress = "xz")

  # europe_map_nuts2 <- gen_europe_map_nuts(nuts_level=2)
  # save(europe_map_nuts2, file=file.path("/git","fhidata","data","europe_map_nuts2.rda"), compress = "xz")

  # europe_map_nuts3 <- gen_europe_map_nuts(nuts_level=3)
  # save(europe_map_nuts3, file=file.path("/git","fhidata","data","europe_map_nuts3.rda"), compress = "xz")

  # norway_map_counties_b2017 <- gen_norway_map_counties(x_year_end=2017)
  # save(norway_map_counties_b2017, file=file.path("/git","/fhidata","data","norway_map_counties_b2017.rda"), compress = "xz")

  # norway_map_counties_with_insert_b2017 <- gen_norway_map_counties(x_year_end=2017, insert = T)
  # save(norway_map_counties_with_insert_b2017, file=file.path("/git","/fhidata","data","norway_map_counties_with_insert_b2017.rda"), compress = "xz")

  # norway_map_counties_b2019 <- gen_norway_map_counties(x_year_end=2019)
  # save(norway_map_counties_b2019, file=file.path("/git","/fhidata","data","norway_map_counties_b2019.rda"), compress = "xz")
  # norway_map_municips_b2019 <-  gen_norway_map_municips(x_year_end=2019)
  # save(norway_map_municips_b2019, file=file.path("/git","/fhidata","data","norway_map_municips_b2019.rda"), compress = "xz")

  # norway_map_counties_with_insert_b2019 <- gen_norway_map_counties(x_year_end=2019, insert = T)
  # save(norway_map_counties_with_insert_b2019, file=file.path("/git","/fhidata","data","norway_map_counties_with_insert_b2019.rda"), compress = "xz")
  # norway_map_municips_with_insert_b2019 <-  gen_norway_map_municips(x_year_end=2019, insert = T)
  # save(norway_map_municips_with_insert_b2019, file=file.path("/git","/fhidata","data","norway_map_municips_with_insert_b2019.rda"), compress = "xz")

  # norway_map_split_counties_b2020 <- gen_norway_map_counties(x_year_end=2020, split=T)
  # save(norway_map_split_counties_b2020, file=file.path("/git","/fhidata","data","norway_map_split_counties_b2020.rda"), compress = "xz")
  # norway_map_split_municips_b2020 <-  gen_norway_map_municips(x_year_end=2020, split=T)
  # save(norway_map_split_municips_b2020, file=file.path("/git","/fhidata","data","norway_map_split_municips_b2020.rda"), compress = "xz")

  # norway_map_counties_b2020 <- gen_norway_map_counties(x_year_end=2020)
  # save(norway_map_counties_b2020, file=file.path("/git","/fhidata","data","norway_map_counties_b2020.rda"), compress = "xz")
  # norway_map_municips_b2020 <-  gen_norway_map_municips(x_year_end=2020)
  # save(norway_map_municips_b2020, file=file.path("/git","/fhidata","data","norway_map_municips_b2020.rda"), compress = "xz")

  # norway_map_counties_with_insert_b2020 <- gen_norway_map_counties(x_year_end=2020, insert = T)
  # save(norway_map_counties_with_insert_b2020, file=file.path("/git","/fhidata","data","norway_map_counties_with_insert_b2020.rda"), compress = "xz")
  # norway_map_municips_with_insert_b2020 <-  gen_norway_map_municips(x_year_end=2020, insert = T)
  # save(norway_map_municips_with_insert_b2020, file=file.path("/git","/fhidata","data","norway_map_municips_with_insert_b2020.rda"), compress = "xz")

  # load(file.path(base_loc,"norway_locations_b2019.rda"))
  # load(file.path(base_loc,"norway_map_municips_b2019.rda"))
  # senorge_b2019 <- gen_senorge(norway_locations_b2019, norway_map_municips_b2019)
  # save(senorge_b2019, file=file.path(base_loc,"senorge_b2019.rda"), compress = "xz")

  # load(file.path(base_loc,"norway_locations_b2020.rda"))
  # load(file.path(base_loc,"norway_map_municips_b2020.rda"))
  # senorge_b2020 <- gen_senorge(norway_locations_b2020, norway_map_municips_b2020)
  # save(senorge_b2020, file=file.path(base_loc,"senorge_b2020.rda"), compress = "xz")
}
