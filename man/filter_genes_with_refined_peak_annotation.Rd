% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diff_analysis_gene_set_enrichment.R
\name{filter_genes_with_refined_peak_annotation}
\alias{filter_genes_with_refined_peak_annotation}
\title{Filter genes based on peak calling refined annotation}
\usage{
filter_genes_with_refined_peak_annotation(
  refined_annotation,
  peak_distance,
  signific,
  over,
  under
)
}
\arguments{
\item{refined_annotation}{A data.frame containing each gene distance to real
peak}

\item{peak_distance}{Minimum distance to an existing peak to accept a given
gene}

\item{signific}{Indexes of all significantly differential genes}

\item{over}{Indexes of all significantly overexpressed genes}

\item{under}{Indexes of all significantly underexpressed genes}
}
\value{
List of significantly differential, overexpressed
and underexpressed genes close enough to existing peaks
}
\description{
Filter genes based on peak calling refined annotation
}
