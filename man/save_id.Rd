% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_id.R
\name{save_id}
\alias{save_id}
\title{Automate saving with appropriate id code}
\usage{
save_id(obj, file = "./data/", no, id = saveid)
}
\arguments{
\item{obj}{object to save}

\item{file}{directory into which I wish to save}

\item{id}{identification of the code that I am using ("107", etc.)}

\item{nm}{name of the file}
}
\value{
No return, simply the object gets saved to the desired directory
}
\description{
Automate saving with appropriate id code
}
\examples{
save_id(obj, file = "./data/", id = "107", "data_df.Rda")
Alternatively, save_id(obj) works, as long as saveid is already defined,
name of the obj is data_df, and desired dir is "./data/".
}
