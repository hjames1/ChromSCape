% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing_filtering_reduction.R
\name{index_peaks_barcodes_to_matrix_indexes}
\alias{index_peaks_barcodes_to_matrix_indexes}
\title{Read index-peaks-barcodes trio files on interval to create count indexes}
\usage{
index_peaks_barcodes_to_matrix_indexes(
  peak_file,
  index_file,
  name_cells,
  binarize = FALSE,
  ref = "hg38"
)
}
\arguments{
\item{peak_file}{A file containing the peak genomic locations}

\item{index_file}{A file containing the indexes of non-zeroes values and
their value (respectively i,j,x,see sparseMatrix)}

\item{name_cells}{A vector with cell names}

\item{binarize}{Binarize matrix ?}

\item{ref}{Reference genome}
}
\value{
A list containing a "feature index" data.frame and a region
GenomicRange object both used to form the sparse matrix
}
\description{
Read index-peaks-barcodes trio files on interval to create count indexes
}
