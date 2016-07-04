
#.onLoad <- function(libname, pkgname) {
#    loadRcppModules(direct = FALSE)
#}

loadModule("buildM", TRUE)
loadModule("inverse", TRUE)
utils::globalVariables(c("buildM", "inverse"))

.onAttach = function(libname, pkgname)
{
    temp = packageDescription("copCAR")
    msg = paste(temp$Package, ": ", temp$Title, "\n", "Version ", temp$Version,
                " created on ", temp$Date, ".\n", sep = "")
    msg = paste(msg, "copyright (c) 2014-2016, John Hughes, University of Colorado Denver\n",
                sep = "")
    msg = paste(msg, 'For citation information, type citation("copCAR").\n', sep = "")
    msg = paste(msg, 'Type help(package = copCAR) to get started.\n', sep = "")
    packageStartupMessage(msg)
}

