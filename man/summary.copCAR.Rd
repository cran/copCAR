\name{summary.copCAR}
\alias{summary.copCAR}
\title{Print a summary of a copCAR model fit.}
\usage{
\method{summary}{copCAR}(object, ...)
}
\arguments{
  \item{object}{an object of class \code{copCAR}, the
  result of a call to \code{\link{copCAR}}.}

  \item{\dots}{additional arguments.}
}
\description{
Print a summary of a copCAR model fit.
}
\details{
This function displays (1) the call to
\code{\link{copCAR}}, (2) the values of the control
parameters, (3) a table of estimates, and (4) confidence
intervals.

Each row of the table of estimates shows a parameter
estimate, the confidence interval for the parameter, and,
where applicable, the Monte Carlo standard error.
}
\seealso{
\code{\link{copCAR}}
}

