#!/bin/bash

# Download FASTQ from SRA (using fasterq-dump)
fasterq-dump SRR1234567 -O data/

# Run FastQC
fastqc data/SRR1234567.fastq -o results/

# Run Trimmomatic
trimmomatic SE -threads 4 data/SRR1234567.fastq results/SRR1234567_trimmed.fastq \
ILLUMINACLIP:TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:36
