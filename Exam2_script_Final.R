getwd()
setwd("/Users/Laura/Desktop")
library(RColorBrewer)
library(gplots)
data <- read.csv("/Users/Laura/Desktop/Exam2data.csv")
data.class(data)
matrix_data <- data.matrix(data[2:5])
rnames <- data[,1]
rownames(matrix_data) <- rnames
data.class(matrix_data)
 my_palette <- colorRampPalette(c("orange","green","blue"))
 
 png("/Users/Laura/Desktop/Exam2_heatmap2.png", res = 300, height = 5*300, width = 5*300, pointsize = 8)
 
 heatmap.2(matrix_data, main="Exam 2 heatmap", notecol="purple", col=my_palette, margins=c(12,19), dendrogram="row")

dev.off