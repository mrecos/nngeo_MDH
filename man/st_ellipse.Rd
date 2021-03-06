% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/st_ellipse.R
\name{st_ellipse}
\alias{st_ellipse}
\title{Calculate ellipse polygon}
\usage{
st_ellipse(pnt, ex, ey, res = 30)
}
\arguments{
\item{pnt}{Object of class \code{sf} or \code{sfc} (type \code{"POINT"}) representing centroid locations}

\item{ex}{Size along x-axis, in CRS units}

\item{ey}{Size along y-axis, in CRS units}

\item{res}{Number of points the ellipse polygon consists of (default \code{30})}
}
\value{
Object of class \code{sfc} (type \code{"POLYGON"}) containing ellipse polygons
}
\description{
The function calculates ellipse polygons, given centroid locations and sizing on the x and y axes.
}
\examples{
# Sample data
dat = data.frame(
  x = c(1, 1, -1, 3, 3),
  y = c(0, -3, 2, -2, 0),
  ex = c(0.5, 2, 2, 0.3, 0.6),
  ey = c(0.5, 0.2, 1, 1, 0.3),
  stringsAsFactors = FALSE
)
dat = st_as_sf(dat, coords = c("x", "y"))
dat

# Plot 1
plot(dat \%>\% st_geometry, graticule = TRUE, axes = TRUE, main = "Input")
text(dat \%>\% st_coordinates, as.character(1:nrow(dat)), pos = 2)

# Calculate ellipses
el = st_ellipse(pnt = dat, ex = dat$ex, ey = dat$ey)

# Plot 2
plot(el, graticule = TRUE, axes = TRUE, main = "Output")
plot(dat \%>\% st_geometry, pch = 3, add = TRUE)
text(dat \%>\% st_coordinates, as.character(1:nrow(dat)), pos = 2)
}
\references{
Based on StackOverflow answer by user \code{fdetsch}:

\url{https://stackoverflow.com/questions/35841685/add-an-ellipse-on-raster-plot-in-r}
}
