% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/view_top.R
\name{view_top}
\alias{view_top}
\alias{View_top}
\title{Get only the most common occurrences and their frequencies}
\usage{
view_top(vec, num)

View_top(vec, num)
}
\arguments{
\item{vec}{vector of observations}

\item{num}{how many top results to see}
}
\value{
Top \code{num} common occurrences among \code{vec}.

If \code{num} is not present, then all results will be shown
}
\description{
Get only the most common occurrences and their frequencies

View only the most common occurrences and their frequencies
}
\section{Functions}{
\itemize{
\item \code{View_top()}: To directly "View" the resulting dataframe

}}
\examples{
view_top(c(1,1,2,2,2,3,3,3,3,4), 2)
}
