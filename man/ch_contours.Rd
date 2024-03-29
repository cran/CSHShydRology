% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_contours.R
\name{ch_contours}
\alias{ch_contours}
\title{Create Contours}
\usage{
ch_contours(dem, zmin = NULL, zmax = NULL, n_levels = 10, z_levels = NULL)
}
\arguments{
\item{dem}{Raster object of your dem in the desired projection (note: should have had sinks removed).}

\item{zmin}{Minimum elevation value for contours. If not specified, minimum value \option{dem} is used.}

\item{zmax}{Maximum elevation value for contours. If not specified, maximum value \option{dem} is used.}

\item{n_levels}{Number of contour lines. Default is 10.}

\item{z_levels}{Levels at which to plot contours. If specified, overrides \option{zmin}, \option{zmax} and
\option{n_levels}.}
}
\value{
\item{contours_sf}{sf object containing contours}
}
\description{
Creates contour lines from a DEM.
}
\details{
Generates contour lines from a DEM, which are returned as an \pkg{sf} object. 
The user can either provide a vector of elevation values by specifying the \code{z_levels} argument, 
or by supplying the minimum and maximum elevations (\code{zmin} and \code{zmax}) 
and the number of contour lines (\code{n_levels}).
}
\examples{
# use volcano DEM
dem <- ch_volcano_raster()
# generate contours
contours <- ch_contours(dem)

# plot contours map
plot(contours)

}
\author{
Dan Moore
}
