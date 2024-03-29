% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_read_AHCCD_monthly.R
\name{ch_read_AHCCD_monthly}
\alias{ch_read_AHCCD_monthly}
\title{Reads AHCCD monthly file}
\usage{
ch_read_AHCCD_monthly(monthly_file = NULL)
}
\arguments{
\item{monthly_file}{Required. Name of the file to be read.}
}
\value{
If successful, returns the values in a dataframe, consisting of the \code{year},
the \code{month}, the value and the data \code{code}.
}
\description{
This program reads an Adjusted and Homogenized Canadian Climate Data (AHCCD) data of 
precipitation or temperatures. The values are arranged as year x month, 
which makes them difficult to read using standard \R functions.
}
\examples{
\dontrun{
# Don't run these examples as use of the dummy
# files will cause error messages

Stoon_monthly_precip <- ch_read_AHCCD_monthly("mt4057120.txt")
NB_monthly_tmean <- ch_read_AHCCD_monthly("mm4045695.txt") }
}
\references{
Any use of the data must cite \cite{Mekis, E and L.A. Vincent, 2011: An overview of 
the second generation adjusted daily temperature and precipitation dataset for trend analysis in Canada. 
Atmosphere-Ocean, 49 (2), 163-177.}
}
\seealso{
\code{\link{ch_read_AHCCD_daily}}
}
\author{
Kevin Shook
}
