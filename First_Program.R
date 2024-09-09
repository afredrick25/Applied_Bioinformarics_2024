# load library affy
library(affy)

# reading the microarray data
setwd("/Users/anaiyafredrick/Desktop/GSE344_RAW")

# Load the dataset
data <- ReadAffy()

# Plot the dataset
boxplot(data,  xlab="Samples", ylab="Genes", main="Raw Micrarrary Plot", col="blue")

# perform normalizatio on raw datasets
data_norm <- rma(data)

data_norm <- exprs(data_norm)

#plot normalized dataset
boxplot(data_norm,  xlab="Samples", ylab="Genes", main="Normalized Micrarrary Plot", col="green")
