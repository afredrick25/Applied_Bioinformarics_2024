# load library affy
library(affy)

# reading the microarray data
setwd("/Users/anaiyafredrick/Desktop/GSE344_RAW")

# Load the dataset
data <- ReadAffy()

# Plot the dataset
boxplot(data,  xlab="Samples", ylab="Genes", main="Raw Micrarrary Plot", col="blue")