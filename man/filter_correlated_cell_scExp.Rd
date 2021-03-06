% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlation_filtering_clustering.R
\name{filter_correlated_cell_scExp}
\alias{filter_correlated_cell_scExp}
\title{Filter lowly correlated cells}
\usage{
filter_correlated_cell_scExp(
  scExp,
  random_iter = 50,
  corr_threshold = 99,
  percent_correlation = 1,
  run_tsne = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{scExp}{A SingleCellExperiment object containing 'Cor', a correlation
matrix, in reducedDims.}

\item{random_iter}{Number of random matrices to create to calculate random
correlation scores. (50)}

\item{corr_threshold}{Quantile of random correlation score above which a cell
is considered to be 'correlated' with another cell. (99)}

\item{percent_correlation}{Percentage of the cells that any cell must be
'correlated' to in order to not be filtered. (1)}

\item{run_tsne}{Re-run tsne ? (FALSE)}

\item{verbose}{(TRUE)}
}
\value{
Returns a SingleCellExperiment object without lowly correlated cells.
The calculated correlation score limit threshold is saved in metadata.
}
\description{
Remove cells that have a correlation score lower than what would be expected
by chance with other cells.
}
\details{
This functions takes as input a SingleCellExperiment object that must have
correlation matrix calculated and outputs a SingleCellExperiment object
without lowly correlated cells. TSNE is recalculated.
}
\examples{
data("scExp")
dim(scExp)
scExp_cf = correlation_and_hierarchical_clust_scExp(scExp)
scExp_cf = filter_correlated_cell_scExp(scExp_cf,
corr_threshold = 99, percent_correlation = 5)
dim(scExp_cf)
}
