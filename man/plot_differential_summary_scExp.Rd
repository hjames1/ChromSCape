% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting_functions.R
\name{plot_differential_summary_scExp}
\alias{plot_differential_summary_scExp}
\title{Differential summary barplot}
\usage{
plot_differential_summary_scExp(scExp_cf)
}
\arguments{
\item{scExp_cf}{A SingleCellExperiment object}
}
\value{
A barplot summary of differential analysis
}
\description{
Differential summary barplot
}
\examples{
data("scExp")
scExp_cf = correlation_and_hierarchical_clust_scExp(scExp)
scExp_cf = choose_cluster_scExp(scExp_cf,nclust=2,consensus=FALSE)
scExp_cf = differential_analysis_scExp(scExp_cf)
plot_differential_summary_scExp(scExp_cf)
}
