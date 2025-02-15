suppressPackageStartupMessages(library(stars))
tif = system.file("tif/L7_ETMs.tif", package = "stars")
r = read_stars(list(a = c(tif,tif), b = c(tif, tif)), proxy = TRUE)
(xx = st_redimension(r, along = list(foo = 1:4)))
(rr = c(xx, xx))
st_as_stars(rr)
(rrr = st_redimension(rr, along = list(bar = as.Date(c("2001-01-01", "2002-01-01")))))
