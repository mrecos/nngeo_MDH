% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{towns}
\alias{towns}
\title{Point layer of towns in Israel}
\format{
A \code{sf} POINT layer with 193 features and 4 attributes:
\describe{
  \item{name}{Town name}
  \item{country.etc}{Country name}
  \item{pop}{Population size}
  \item{capital}{Is it a capital?}
}
}
\usage{
towns
}
\description{
A \code{sf} POINT layer of towns in Israel, based on a subset from the \code{maps::world.cities} dataset.
}
\examples{
plot(towns)
}
\keyword{datasets}
