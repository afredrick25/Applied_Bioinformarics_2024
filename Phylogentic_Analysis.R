#Author: Anaiya; Date: September 18, 2024; Purpose: Create dummy data, generate phylogenetic tree plot

#load tree libraries
library(ape)

#generate some dummy data
text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

#read the dummy data as a tree structure
vert.tree<-read.tree(text=text.string)

#genersate a basic plot of dummy data
plot(vert.tree,no.margin=TRUE,edge.width=2)