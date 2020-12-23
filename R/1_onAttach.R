.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0("\033[32m","fhimaps ",packageDescription("fhidata")$Version),"\033[39m")
}
