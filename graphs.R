Histogram
hist(table_final$Positive, col=rainbow(10))
hist(table_final$Negative, col=rainbow(10))
hist(table_final$Score, col=rainbow(10))
slices <- c(sum(table_final$Positive), sum(table_final$Negative))
labels <- c("Positive", "Negative")
library(plotrix)
pie3D(slices, labels = labels, col=rainbow(length(labels)),explode=0.00, main="positive and negative score in pie chats")