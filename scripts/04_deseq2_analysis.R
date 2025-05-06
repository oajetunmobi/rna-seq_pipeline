library(DESeq2)
counts <- read.table("results/counts_matrix.txt", header=TRUE, row.names=1)
colData <- read.csv("data/sample_metadata.csv", row.names=1)

dds <- DESeqDataSetFromMatrix(countData = counts,
                              colData = colData,
                              design = ~ condition)
dds <- DESeq(dds)
res <- results(dds)
write.csv(as.data.frame(res), file="results/deseq2_results.csv")
