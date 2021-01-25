.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0(
    "\033[40m\033[37m",
    "fhimaps ",
    utils::packageDescription("fhimaps")$Version,
    "\033[39m\033[49m ",
    "https://folkehelseinstituttet.github.io/fhimaps","\033[39m"
  ))
}
