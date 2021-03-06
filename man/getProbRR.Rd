% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getProbScalarRR.R
\name{getProbRR}
\alias{getProbRR}
\title{Calculate risks from log RR and log OP (vectorised)}
\usage{
getProbRR(logrr, logop = NA)
}
\arguments{
\item{logrr}{log of relative risk}

\item{logop}{log of odds product}
}
\value{
a matrix \eqn{(P(y=1|x=0),P(y=1|x=1))} with two columns
}
\description{
Calculate risks from log RR and log OP (vectorised)
}
\details{
The \eqn{log OP} is defined as \eqn{log OP = log[(P(y=1|x=0)/P(y=0|x=0))*(P(y=1|x=1)/P(y=0|x=1))]}.
}
\examples{
getProbRR(0,0)

set.seed(0)
logrr = rnorm(10,0,1)
logop = rnorm(10,0,1)
probs = getProbRR(logrr, logop)
colnames(probs) = c("P(y=1|x=0)","P(y=1|x=1)")
probs

}
