% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diff_analysis_gene_set_enrichment.R
\name{run_pairwise_tests}
\alias{run_pairwise_tests}
\title{Run pairwise tests}
\usage{
run_pairwise_tests(affectation, nclust, counts, feature, method)
}
\arguments{
\item{affectation}{An annotation data.frame with cell_cluster and cell_id
columins}

\item{nclust}{Number of clusters}

\item{counts}{Count matrix}

\item{feature}{Feature data.frame}

\item{method}{DA method, Wilcoxon or edgeR}
}
\value{
A list containing objects for DA function
}
\description{
Run pairwise tests
}
