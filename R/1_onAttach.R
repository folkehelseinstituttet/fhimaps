.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste(
    "fhimaps",
    utils::packageDescription("fhimaps")$Version,
    "https://folkehelseinstituttet.github.io/fhimaps"
  ))
}
