% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlation_filtering_clustering.R
\name{num_cell_before_cor_filt_scExp}
\alias{num_cell_before_cor_filt_scExp}
\title{Table of number of cells before correlation filtering}
\usage{
num_cell_before_cor_filt_scExp(scExp)
}
\arguments{
\item{scExp}{A SingleCellExperiment Object}
}
\value{
A colored kable with the number of cells per sample for display
}
\description{
Table of number of cells before correlation filtering
}
\examples{
data("scExp")
num_cell_before_cor_filt_scExp(scExp)

}
