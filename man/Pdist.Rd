\name{Pdist}
\alias{Pdist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to Compute the Distances Between Orthogonal Projection Matrices
}
\description{
The function computes distances between orthogonal projection matrices that might have different ranks. Different weight functions for the ranks are available.
}
\usage{
Pdist(x, weights = "constant")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{List of othogonal projection matrices (can have different ranks).}
  \item{weights}{The weight function used for the individual ranks. Possible inputs are \code{constant}, \code{inverse} and \code{sq.inverse} (see details).}
}
\details{
A weighted distance between subspaces  \eqn{P_1}{P_1} and \eqn{P_2}{P_2} with ranks \eqn{k_1}{k_1} and \eqn{k_2}{k_2} is given by 
\eqn{D_{w}^2(P_1,P_2)=\frac{1}{2} ||w(k_1)P_1-w(k_2)P_2||^2}{D_{w}^2(P_1,P_2)=0.5||w(k_1)P_1-w(k_2)P_2||^2}, 
where \eqn{w} denotes the weight function. 
The possible weights are defined as \code{constant}: 
\eqn{w(k)=1}, \code{inverse}: \eqn{w(k)=1/k} and \code{sq.inverse}: \eqn{w(k)=1/\sqrt k}{w(k)=1/sqrt(k)}. The \code{constant} weight corresponds to the so called Crone & Crosby distance. Orthogonal projection matrices of zero rank 
are also possible inputs for the function. 
}
\value{
an object of class \code{dist} having the attributes:
  \item{Size}{number of orthogonal projection matrices.}
  \item{Labels}{names of orthogonal projection matrices if available.}
  \item{Diag}{FALSE.}
  \item{Upper}{FALSE.}
  \item{methods}{The name of the weights used.}
}

\references{
\cite{Crone, L. J., and Crosby, D. S. (1995), Statistical Applications of a Metric on Subspaces to Satellite Meteorology, Technometrics 37, 324-328. }

\cite{Liski, E., Nordhausen, K., Oja, H. and Ruiz-Gazen, A. (201?), Combining Linear Dimension Reduction
Subspaces, to appear in the proceedings of ICORS 2015. } 
}
\author{
Eero Liski and Klaus Nordhausen
}

\seealso{
 \code{\link{AOP}}
}
\examples{
# Ex.1
X.1 <- tcrossprod(matrix(rnorm(16),ncol=4))
X.2 <- tcrossprod(matrix(rnorm(16),ncol=4))
X.3 <- tcrossprod(matrix(rnorm(16),ncol=4))
U1 <- eigen(X.1)$vectors
U2 <- eigen(X.2)$vectors
U3 <- eigen(X.3)$vectors

PRO <- list(P1=O2P(U1),P2=O2P(U2),P3=O2P(U3))

DIST.MAT<-Pdist(PRO)
str(DIST.MAT)
as.matrix(DIST.MAT)
print(DIST.MAT, diag=TRUE)
print(DIST.MAT, diag=TRUE, upper=TRUE)

PRO2 <- list(O2P(U1),O2P(U2),O2P(U3))
Pdist(PRO2, weights="inverse")

#############################
# Ex.2
a <- c(1,1,rep(0,8))
A <- diag(a)
b <- c(1,1,1,1,rep(0,6))
B <- diag(b)
P.A <- O2P(A[,1:2])
P.B <- O2P(B[,1:4])

proj.list <- list(P.A,P.B)
Pdist(proj.list, weights="constant")
Pdist(proj.list, weights="inverse")
Pdist(proj.list, weights="sq.inverse")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }
