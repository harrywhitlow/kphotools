% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kpho_map.r
\name{kpho_map}
\alias{kpho_map}
\title{kpho_map}
\usage{
kpho_map(
  data,
  joining_code,
  values,
  timeperiods,
  description,
  stat_type,
  boundaries,
  year
)
}
\arguments{
\item{data}{A dataframe to be plotted on the map.}

\item{joining_code}{A unique variable found in 'data' and 'boundaries'.}

\item{values}{A unique variable found in 'data' containing numeric values to be plotted.}

\item{timeperiods}{A unique variable found in 'data' which list the different timeperiods which the values are calculated for.}

\item{description}{A string describing what the values show.}

\item{stat_type}{A string describing the units of the values presented.}

\item{boundaries}{Spatial boundaries for the data to be plotted on. These should be spatial objects that correspond to the same geography type that the data is calculated for (e.g. lower-super output area boundaries) and should be an sf object.}

\item{year}{A timeperiod or year to filter the data shown on the map.}
}
\value{
A patchwork object.
}
\description{
This function creates a map using data and boundaries passed to the function. The parameters passed to the function have minimum column name requirements. Please check these below before using the function.
}
\examples{
smoking_map <- kpho_map(data = smoking_prevalence,
                        joining_code = "area_code",
                        values = "value",
                        timeperiods = "years",
                        description = "Number of people smoking in Kent",
                        stat_type = "Rate per 100,000 people",
                        boundaries = msoa, 
                        year = "2013/14-2014/15")

}
