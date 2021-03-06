% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlation_filtering_clustering.R
\name{num_cell_after_cor_filt_scExp}
\alias{num_cell_after_cor_filt_scExp}
\title{Number of cells before & after correlation filtering}
\usage{
num_cell_after_cor_filt_scExp(scExp, scExp_cf)
}
\arguments{
\item{scExp}{SingleCellExperiment object before correlation filtering.}

\item{scExp_cf}{SingleCellExperiment object atfer correlation filtering.}
}
\value{
A colored kable with the number of cells per sample before and after
filtering for display
}
\description{
Number of cells before & after correlation filtering
}
\examples{
data("scExp")
scExp_cf = correlation_and_hierarchical_clust_scExp(scExp)
scExp_cf = filter_correlated_cell_scExp(scExp_cf,
corr_threshold = 99, percent_correlation = 5)
num_cell_after_cor_filt_scExp(scExp,scExp_cf)

}
