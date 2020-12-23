.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0(
    "\033[32m","fhimaps ","\033[39m",
    "\033[30m",packageDescription("fhidata")$Version,"\033[39m",
    "\033[35m"," https://folkehelseinstituttet.github.io/fhimaps","\033[39m"
    ))
}
