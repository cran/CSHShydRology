% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_read_ECDE_flows.R
\name{ch_read_ECDE_flows}
\alias{ch_read_ECDE_flows}
\title{Reads a file of WSC daily flows from ECDataExplorer (ECDE)}
\usage{
ch_read_ECDE_flows(filename)
}
\arguments{
\item{filename}{Datafile retrieved from ECDataExplorer.}
}
\value{
Returns a dataframe with the last three rows removed:
\item{ID}{stationID}
\item{PARAM}{Parameter 1 for Flow 2 for Level}
\item{Date}{original charater string converted to date format}
\item{Flow}{Daily mean flow m\eqn{^3}{^3}/sec}
\item{SYM}{Quality flag}
}
\description{
Reads in a file WSC daily flows as returned from the Windows program ECDataExplorer, converts the Date,
and omits the last 3 lines as these contain the data disclaimer and not data. The function
can read values from a url.
}
\examples{
\dontrun{
# Not run as requires a file returned by the Windows program ECDataExplorer
# Using a dummy file name as an example
mfile <- "04JD005_Daily_Flow_ts.csv"
mdata <- ch_read_ECDE_flows(mfile)}

\donttest{
# Not tested automatically as it is slow to read from a url
url1 <- "https://zenodo.org/record/7007830/files/08NL007_Daily_Flow_ts.csv"
values <- ch_read_ECDE_flows(url1)
}

}
\author{
Paul Whitfield
}
