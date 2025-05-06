# Load the DESeq2 package for differential expression analysis
library(DESeq2)

# Read in the count matrix (rows: genes, columns: samples)
counts <- read.table("results/counts_matrix.txt", header = TRUE, row.names = 1)

# Read in the sample metadata (condition, replicate info)
colData <- read.csv("data/sample_metadata.csv", row.names = 1)

# Create a DESeq2 dataset object using the count matrix and metadata
# The design formula (~ condition) specifies that differences in expression
# will be modeled based on the 'condition' column in colData
dds <- DESeqDataSetFromMatrix(countData = counts,
                              colData = colData,
                              design = ~ condition)

# Run the differential expression analysis pipeline
dds <- DESeq(dds)

# Extract the results table (log2 fold changes, p-values, etc.)
res <- results(dds)

# Save the results to a CSV file for downstream analysis or visualization
write.csv(as.data.frame(res), file = "results/deseq2_results.csv")
