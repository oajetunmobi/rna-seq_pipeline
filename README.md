# RNA-Seq Differential Expression Analysis Pipeline

This project demonstrates a complete RNA-Seq pipeline using public data from the SRA. It includes quality control, trimming, alignment to a reference genome, quantification of gene expression, and differential expression analysis using DESeq2.

## Tools Used
- FastQC
- Trimmomatic
- HISAT2
- featureCounts
- R + DESeq2

## Project Workflow
1. Quality control of FASTQ files
2. Trimming adapters and low-quality reads
3. Alignment to reference genome
4. Generating count matrix
5. DESeq2-based differential expression analysis

## Data
We use SRA data from project **[SRP010091](https://www.ncbi.nlm.nih.gov/sra/?term=SRP010091)** (Zhang et al.). See `data/README.md` for links and download commands.
