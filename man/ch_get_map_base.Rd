% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_get_map_base.R
\name{ch_get_map_base}
\alias{ch_get_map_base}
\title{ch_get_map_base}
\usage{
ch_get_map_base(
  maplat,
  maplong,
  map_proj = NA,
  map_directory = ".",
  map_type = "nps"
)
}
\arguments{
\item{maplat}{vector of latitudes (2)}

\item{maplong}{vector of longitudes (2)}

\item{map_proj}{map projection currently NA/"latlong" or "albers"/"equalarea"}

\item{map_directory}{directory where map data will be stored; will be 
created if it does not exist.}

\item{map_type}{map type: select one of  \option{osm},  \option{bing},
\option{stamen-toner}, \option{stamen-terrain}, \option{stamen-watercolor},
\option{apple-iphoto}, \option{opencyclemap}, \option{osm-transport},
\option{osm-public-transport}, \option{nps [default]},}
}
\value{
Returns a list containing:
\describe{
\item{map_d}{map data directory}
\item{plines10}{provincial and state boundaries}
\item{rlines10}{rivers and lakes}
\item{map_proj}{projection used}
\item{latitude}{bottom and top latitudes}
\item{longitude}{east and west longitudes}
}
}
\description{
Prepares for mapping by acquiring the base map and ancillary data: 
boundaries and rivers.  The maps are obtained using OpenStreetMap::openmap which 
originally accessed the following map types:
"osm", "osm-bw", "maptoolkit-topo", "waze", "bing", "stamen-toner", 
"stamen-terrain", "stamen-watercolor", "osm-german", "osm-wanderreitkarte", 
"mapbox", "esri", "esri-topo", "nps", "apple-iphoto", "skobbler", 
"hillshade", "opencyclemap", "osm-transport", "osm-public-transport", 
"osm-bbike", "osm-bbike-german".

In April 2022 access all of these failed, limiting the available 
maps to: one of "osm", "bing", "stamen-toner",
"stamen-terrain", "stamen-watercolor", "apple-iphoto", "opencyclemap",
"osm-transport", "osm-public-transport".

In January 2023, ne_download failed as it produced an incorrect url.

Access to "nps" [default] was added as a work around until OpenstreetMap is updated.

"nps": This layer presents the U.S. National Park Service (NPS) Natural Earth 
physical map at 1.24km per pixel for the world and 500m for the coterminous 
United States.
}
\examples{
\donttest{
# Note: example not tested automatically as it is very slow to execute due to the downloading
latitude <- c(48.0,  61.0)
longitude <- c(-110.0, -128.5)
mapdir <- tempdir()
# get map data
m_map <- ch_get_map_base(latitude,longitude, 
                     map_proj = "Albers", 
                     map_directory = mapdir, 
                     map_type = "nps")
}                      
}
\author{
Paul Whitfield
}
