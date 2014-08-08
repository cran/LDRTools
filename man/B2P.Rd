\name{B2P}
\alias{B2P}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to Compute an Orthogonal Projection Matrix Based on an Arbitrary Matrix
}
\description{
Function to compute an orthogonal projection matrix based on an arbitrary matrix.
}
\usage{
B2P(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{A matrix with p rows and k columns.}
}
\details{
The orthogonal projection matrix \eqn{P} corresponding to matrix \eqn{x} is defined as \eqn{P=x(x^{T}x)^{-1}x^{T}}{P=x (x^T x)^-1 x^T}.
}
\value{The resulting orthogonal projection matrix. }

\author{
Klaus Nordhausen
}

\seealso{
\code{\link{O2P}}
}
\examples{
set.seed(1)
X <- matrix(rnorm(30),ncol=3)
P <- B2P(X)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }
