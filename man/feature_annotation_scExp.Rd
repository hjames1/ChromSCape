% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing_filtering_reduction.R
\name{feature_annotation_scExp}
\alias{feature_annotation_scExp}
\title{Add gene annotations to features}
\usage{
feature_annotation_scExp(scExp, ref = "hg38", reference_annotation = NULL)
}
\arguments{
\item{scExp}{A SingleCellExperiment object.}

\item{ref}{Reference genome. Either 'hg38' or 'mm10'. ('hg38')}

\item{reference_annotation}{A data.frame containing gene (or else) annotation
with genomic coordinates.}
}
\value{
A SingleCellExperiment object with annotated rowData.
}
\description{
Add gene annotations to features
}
\examples{
scExp = create_scExp(create_scDataset_raw()$mat,create_scDataset_raw()$annot)
scExp = feature_annotation_scExp(scExp)
head(SummarizedExperiment::rowRanges(scExp))

# Mouse
scExp = create_scExp(create_scDataset_raw(ref="mm10")$mat,
  create_scDataset_raw(ref="mm10")$annot)
scExp = feature_annotation_scExp(scExp,ref="mm10")
head(SummarizedExperiment::rowRanges(scExp))
}
