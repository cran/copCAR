\name{rcopCAR}
\alias{rcopCAR}
\title{Simulate areal data.}
\usage{
rcopCAR(rho, beta, X, A, family)
}
\arguments{
  \item{rho}{the spatial dependence parameter \eqn{\rho}
  such that \eqn{\rho \in [0, 1)}.}

  \item{beta}{the vector of regression coefficients
  \eqn{\beta = (\beta_1, \dots, \beta_p)'}.}

  \item{X}{the \eqn{n} by \eqn{p} design matrix \eqn{X}.}

  \item{A}{the symmetric binary adjacency matrix for the
  underlying graph. \code{\link{adjacency.matrix}}
  generates an adjacency matrix for the \eqn{m} by \eqn{n}
  square lattice.}

  \item{family}{the marginal distribution of the
  observations and link function to be used in the model.
  This can be a character string naming a family function,
  a family function or the result of a call to a family
  function. (See \code{\link{family}} for details of family
  functions.) Supported familes are \code{binomial} and
  \code{poisson}.}
}
\value{
A vector of length \eqn{n} distributed according to the
copCAR model with the given design matrix and parameter
values.
}
\description{
\code{rcopCAR} simulates areal data from the copCAR model.
}
\details{
This function randomly generates Poisson or Bernoulli areal
data with adjacency matrix \eqn{A} from the copCAR model
with the given spatial dependence parameter \eqn{\rho},
regression coefficients \eqn{\beta = (\beta_1, \dots,
\beta_p)'}, and design matrix \eqn{X}. For more details on
the copCAR model, see \code{\link{copCAR}}.
}
\examples{
\dontrun{
require(lattice)

# Use the 20 x 20 square lattice as the underlying graph.
m = 20
A = adjacency.matrix(m)

# Set dependence parameter and regression coefficients.
rho = 0.8
beta = c(1, 1)

# Create design matrix by assigning coordinates to each vertex
# such that the coordinates are restricted to the unit square.
x = rep(0:(m - 1) / (m - 1), times = m)
y = rep(0:(m - 1) / (m - 1), each = m)
X = cbind(x, y)

# Draw Poisson data from copCAR model.
Z.pois = rcopCAR(rho, beta, X, A, family = poisson(link = "log"))

# Create a level plot of the simulated data.
dev.new()
levelplot(Z ~ x * y, aspect = "iso")

# Draw Bernoulli data from copCAR model.
Z.ber = rcopCAR(rho, beta, X, A, family = binomial(link = "logit"))

# Create a level plot of the simulated data.
dev.new()
levelplot(Z2 ~ x * y, aspect = "iso")
}
}

