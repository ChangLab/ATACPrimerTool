args <- commandArgs(TRUE)


if (require("DESeq2")){
  print("Loaded DESeq2 package")
} else {
  print("Installing DESeq2 package")
  source("http://bioconductor.org/biocLite.R")
  biocLite("DESeq2")
  if(require("DESeq2")){
    print("Loaded DESeq2 package")
  } else {
    stop("Could not load DESeq2")
  }
}

counts_file <- args[1]
return_n <- as.numeric(args[2])
out_file <- args[3]


Mergedpeak_counts <- read.delim(counts_file, "\t", header = FALSE)
m <- ncol(Mergedpeak_counts)
rownames(Mergedpeak_counts) <- Mergedpeak_counts$V4
countsTable <- Mergedpeak_counts[,5:m]
n <- ncol(countsTable)
colData <- data.frame(condition = factor(c(paste(rep("Sample", n),seq(n)))))
dds <- DESeqDataSetFromMatrix(countsTable,colData, design = ~1)
dds <-estimateSizeFactors(dds)
normalizedCounts <- cbind(Mergedpeak_counts[,1:4],data.frame(t(t(counts(dds)) /sizeFactors(dds))))
normalizedCounts$mean <- rowMeans(normalizedCounts[,5:m])
normalizedCounts$cv <- apply(normalizedCounts[,5:m], 1, sd)/normalizedCounts$mean
normalizedCounts <- normalizedCounts[order(normalizedCounts$cv),]
normalizedCounts <- normalizedCounts[normalizedCounts$mean > mean(normalizedCounts$mean),]
normPeaks <- normalizedCounts[1:return_n,]
write.table(normPeaks
            , out_file
            , sep = "\t"
            , col.names = FALSE
            , row.names = FALSE
            , quote = FALSE)	