% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{BirdFlowModels}
\alias{BirdFlowModels}
\alias{amewoo}
\alias{rewbla}
\title{Birdflow Example Models}
\format{
\code{BirdFlow} model
}
\source{
Trained on eBird Status and Trends 2019 and 2021 Data.
}
\usage{
amewoo  # American Woodcock

rewbla # Red-winged Blackbird
}
\description{
These BirdFlow models are intended for for testing code and
demonstrating usage in \pkg{BirdFlowR}; they are not fully vetted and
should not be used for research or inference.
}
\references{
Fink, D., T. Auer, A. Johnston, M. Strimas-Mackey, S. Ligocki, O.
Robinson, W. Hochachka, L. Jaromczyk, A. Rodewald, C. Wood, I. Davies, A.
Spencer. 2022. eBird Status and Trends, Data Version: 2021; Released: 2022.
Cornell Lab of Ornithology, Ithaca, New York.
https://doi.org/10.2173/ebirdst.2021
}
\seealso{
\code{\link[BirdFlowR:load_model]{BirdFlowR::load_model()}} will load a vetted model from a
BirdFlow model collection.  \code{BirdFlowR::load_collection_index()} will
return a data frame with information on available models.
}
\keyword{datasets}
