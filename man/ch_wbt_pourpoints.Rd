% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_wbt_pourpoints.R
\name{ch_wbt_pourpoints}
\alias{ch_wbt_pourpoints}
\title{Snap pour points to channels}
\usage{
ch_wbt_pourpoints(
  pp_sf = NULL,
  fn_flowacc,
  fn_pp,
  fn_pp_snap,
  check_crs = TRUE,
  snap_dist = NULL,
  ...
)
}
\arguments{
\item{pp_sf}{\pkg{sf} object containing pour points. These must be supplied by the user. See
the code in \code{\link{ch_volcano_pourpoints}} for an example of creating the object.}

\item{fn_flowacc}{Name of file containing flow accumulations.}

\item{fn_pp}{File name to create un-snapped pour points.}

\item{fn_pp_snap}{File name for snapped pour points.}

\item{check_crs}{If \code{TRUE} the projections of the pour points and flow
accumulation files will be checked to ensure they are identical.}

\item{snap_dist}{Maximum snap distance in map units.}

\item{...}{Additional parameters for \pkg{whitebox} function \code{wbt_snap_pour_points}.}
}
\value{
Returns a \pkg{sf} object of the specified pour points snapped to the
channel network.
}
\description{
Pour points describe the outlets of sub-basins within a DEM. To use
the pour points to delineate catchments, they must align with the drainage
network. This function snaps (forces the locations) of pour points to the
channels.
}
\examples{
# Only proceed if Whitebox executable is installed
library(whitebox)
if (check_whitebox_binary()){
  library(raster)
  test_raster <- ch_volcano_raster()
  dem_raster_file <- tempfile(fileext = c(".tif"))
  no_sink_raster_file <- tempfile("no_sinks", fileext = c(".tif"))

  # write test raster to file
  writeRaster(test_raster, dem_raster_file, format = "GTiff")

  # remove sinks
  removed_sinks <- ch_wbt_removesinks(dem_raster_file, no_sink_raster_file, method = "fill")

  # get flow accumulations
  flow_acc_file <- tempfile("flow_acc", fileext = c(".tif"))
  flow_acc <- ch_wbt_flow_accumulation(no_sink_raster_file, flow_acc_file)

  # get pour points
  pourpoint_file <- tempfile("volcano_pourpoints", fileext = c(".shp"))
  pourpoints <- ch_volcano_pourpoints(pourpoint_file)
  snapped_pourpoint_file <- tempfile("snapped_pourpoints", fileext = c(".shp"))
  snapped_pourpoints <- ch_wbt_pourpoints(pourpoints, flow_acc_file, pourpoint_file,
  snapped_pourpoint_file, snap_dist = 10)
} else {
  message("Examples not run as Whitebox executable not found")
}
}
\seealso{
\code{\link{ch_volcano_pourpoints}}
}
\author{
Dan Moore
}
