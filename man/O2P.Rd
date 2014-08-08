\name{O2P}
\alias{O2P}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to Compute an Orthogonal Projection Matrix Based on a Matrix with Orthonormal Columns
}
\description{
Function to compute an orthogonal projection matrix based on a matrix with orthonormal columns.
}
\usage{
O2P(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a matrix with k orthonormal columns of length p.}
}
\details{
The orthogonal projection matrix \eqn{P} corresponding to matrix \eqn{x} is defined as \eqn{P=xx^{T}}{P = xx^T}.
}
\value{The resulting orthogonal projection matrix. }

\author{
Klaus Nordhausen
}
\seealso{
\code{\link{B2P}}
}
\examples{
X <- tcrossprod(matrix(rnorm(100),ncol=10))
# Orthogonal projector based on the first three eigenvectors of X
P <- O2P(eigen(X)$vectors[,1:3])
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }
