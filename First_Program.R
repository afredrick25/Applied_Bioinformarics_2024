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

# preview data in rows using head(data_norm)

#assign first two samples as treatment and next two as control
Treatment <- data_norm[,1:2]
Control <- data_norm[,3:4]

#preview treament and control samples by head(Treatment) and head(Control)

#compare treatment and control groups using fold-change analysis
Average_Treatment <- rowMeans(Treatment)
Average_Control <- rowMeans(Control)

#preview using head(Average_Treatment) and head(Average_Control)






