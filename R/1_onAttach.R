.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0(
    "fhimaps ",
    utils::packageDescription("fhimaps")$Version,
    "https://folkehelseinstituttet.github.io/fhimaps","\033[39m"
  ))
}
