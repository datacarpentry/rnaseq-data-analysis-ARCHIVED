---
layout: page
---

# RNA-seq data analysis

This workshop on RNA-seq data analysis directed toward life scientists with little to no experience with statistical computing or bioinformatics. Part I (QC, alignment, & counting) uses BRB Digital Gene Expression (BRB-DGE, http://linus.nci.nih.gov/bdge) tool. It takes RNA sequence data files in FASTQ format as an input and outputs raw count data in a text format. Part II (differential expression analysis) assumes basic familiarity with R.

## Data
A limited-size FASTQ data sample is available in the sample-data folder. Students should follow the excersize using this data. After the completition of the excersize students are encouraged to download ther own data from a public repositories ArrayExpress or similar and to repet the learned concepts on a full-size data set. To download the data from ArrayExpress (https://www.ebi.ac.uk/arrayexpress), click Browse and filter search results by the experiment type "RNA assay" and "Sequencing assay". Download a data set with a raw data present in FASTQ format.

## Objectives
By the end of the workshop, participants will: (1) know how to align and quantitate gene expression with RNA-seq data, and (2) know what packages to use and what steps to take to analyze RNA-seq data for differentially expressed genes.

## OS & Hardware Requirements

Ubuntu 64-bit Desktop OS (version 12.04 or 14.04) is required in order to run BRB-DGE. The recommended hardware requirement may vary depending on the size of data. It is recommended that the machine has at least 8GB of RAM and 500GB hard disk space. To install BRB-DGE please follow the instructions here: http://linus.nci.nih.gov/bdge/

BRB-DGE automatically install the following tools:

* bowtie2: <http://bowtie-bio.sourceforge.net/bowtie2/index.shtml>
* tophat2: <http://ccb.jhu.edu/software/tophat/index.shtml>
* samtools: <http://samtools.sourceforge.net/>
* SRA Toolkit: <http://www.ncbi.nlm.nih.gov/Traces/sra/?view=software>
* FastQC: <http://www.bioinformatics.babraham.ac.uk/projects/fastqc/>

Other tools that will be required:

* Basic shell utilities: gcc, make, ruby, curl, git, parallel, unzip, default-jre
* featureCounts (part of subread): <http://subread.sourceforge.net/>
* fastx-toolkit: <http://hannonlab.cshl.edu/fastx_toolkit/>
* R: <http://www.r-project.org/>
* RStudio: <http://www.rstudio.com/>
* R packages: Bioconductor core (i.e., `biocLite()`), DESeq2
