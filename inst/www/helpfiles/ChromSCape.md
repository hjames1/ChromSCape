# ChromSCape: Analysis of single-cell ChIP-seq data in a Shiny App


## What is ChromSCape ?

**ChromSCape** - Single-Cell Chromatin Landscape profiling - is a ready-to-launch user-friendly **Shiny App** for analysis of single-cell epigenomic datasets (scChIP-seq, scATAC-seq...). It takes as input single-cell count matrices and let the user filter & cluster cells, run differential analysis & gene set enrichment analysis between epigenomic subpopulations, in an unsupervised manner.  
Various existing technologies allow to produce single-cell epigenomic datasets : scChIP-seq, scATAC-seq, scCUT&TAG, scChIL-seq, scChIC-seq ...

## Contents

- [What is ChromSCape ?](#what-is-chromscape-)
- [Launch the App](#Launch-the-App)
- [Docker version ](#Docker-version)
- [Test datasets](#Test-datasets)
- [Run Time](#Run-Time)
- [Walkthrough of the App with screencast](#Walkthrough-of-the-App-with-screencast)
- [Output](#Output)
- [Detailed walkthrough of the App](#Detailed-walkthrough-of-the-App)
- [Authors](#Authors)
- [Session Info](#Session-Info)

## Launch the App 

**ChromSCape** requires R version 3.5 or 3.6 (does not work on R 4.0 yet!).
To install **ChromSCape**, open **R** or **Rstudio** and copy the following commands : 

```
install.packages("devtools")
devtools::install_github("vallotlab/ChromSCape", ref = "package")
```

Once the installation was sucessful, launch **ChromSCape** using the following command :

```
library(ChromSCape)
ChromSCape::launchApp()
```

It is recommended to use Chrome browser for optimal display of graphics & table.
If no browser opens, copy the url after 'Listening on ...' and paste in your browser.

Play around by inputing a simple matrix (unzip first): [single-cell ChIP-seq matrix - HBCx95 (H3K27me3 mark)](inst/extdata/example_matrix.tsv.zip)

## Test datasets

ChromSCape takes as input one tab-separated count matrice (in .tsv or .txt) per sample. In order to upload multiple matrices, the matrices should be placed in the same folder of your computer. Before
you input your own matrices, it is recommended you try playing around and familiarize
with ChromSCape by downloading our example matrices and uploading them in ChromSCape :

Input count matrices corresponding to mouse cells from 2 PDX models, luminal and triple negative breast cancer tumours resistant or not to cancer therapy (respectively HBCx_22 & HBCx_95, see Grosselin et al., 2019) are available at https://figshare.com/projects/Single-Cell_ChIP-seq_of_Mouse_Stromal_Cells_in_PDX_tumour_models_of_resistance/66419 (theses count matrices have been processed using our latest data engineering pipeline, see https://github.com/vallotlab/scChIPseq_DataEngineering). The optional peak calling step requires  BAM files (also available on Figshare) to improve gene set enrichment analysis.

Alternatively, a ready-to-use pre-compiled analysis folder for HBCx22 & HBCx95 mouse H3K27me3 datasets is available at : https://figshare.com/articles/ChromSCape_scChIP_scATAC_compiled_datasets/11854371. A similar pre-compiled folder is available for the analysis of single-cell ATAC seq datasets from (Buenrostro et al., 2015, Corces et al., 2016, Schep et al., 2017). Download and uncompress the directory. Once in ChromSCape, select the directory containing the "dataset" folder to start exploring. 

## Run Time

On a Intel® Core™ i5-6500 CPU @ 3.20GHz × 4 with 31,3 Gio RAM, the installation took less than one hour. The running time of of scChIP_H3K27me3 test dataset was 25 minutes without peak calling and 35 minutes with peak calling.

## Input

The matrix format should be tab-separated file, with Cells as column & Features 
as rows. The first line should be cell names, the first column should be feature 
names. Feature names can be either genomic coordinate in the format 'chr:start-end'
or 'chr_start_end' or gene symbols (e.g: A1BG, A1BG-AS1 for hg38 or Rab23, Bag2 
for mm10). 
Example matrix :

![](inst/www/example_matrix_format.png)


## Output

The app automatically creates a directory **Chromscape_analysis** in which a new directory is created for each analysis with a different input name. Inside that directory are created a directory for each part of the analysis, containing RData and figures.
  
## Other

The Gene Set Enrichment Analysis is based on MSIG database (http://software.broadinstitute.org/gsea/msigdb).

## Advanced requirements for optional Peak Calling step

The peak calling step is important for Gene Set Enrichment Analysis particularly 
for features defined as genomic bins >= 20kbp or broad peaks. It will
aggregate signal of cells in each cluster ('in-silico cell sorting') and call peaks
separately for each cluster using MACS2 peak caller. Then the annotation of genes to
bins is refined and genes TSS not falling closer to 1000bp of any peaks are removed 
from annotation. This exclude any 'false' association of large genomic bins/regions to genes.  
This step requires **BAM files** of each sample (one BAM file must contains reads of all
 cells of a given sample) as input. 
The user should be on a Unix system (Mac, Linux) and have installed samtools & MACS2:

```
  samtools 1.9 (Using htslib 1.9) (http://www.htslib.org/doc/samtools.html)
  macs2 2.1.2 (https://github.com/taoliu/MACS)
```
The application will automatically check if these tools are available and will give
you a warning if they are not installed/available.

## Detailed walkthrough of the App
### 1. Upload your matrice(s)
### 2. Name & compile dataset
### 3. Fix filters to keep most covered regions & cells
### 4. Vizualize data in reduced dimension
### 5. Correlate cells and filter out cells with low correlation scores
### 6. Cluster cells
### 7. Peak call to refine signal (optional)
### 8. Find differentially bound regions in each cluster
### 9. Find enriched gene sets in differentially bound regions


# Authors
Please do not hesitate to post an issue or contact the authors :

Celine Vallot : celine.vallot@curie.fr

Pacome Prompsy : pacome.prompsy@curie.fr
