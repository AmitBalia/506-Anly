---
  title: "week 10"
author: "Amit Balia"
date: "7/28/2019"
output: html_document
---
  
  
#K-means sample
set.seed(1234)
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))
#Using the kmeans() function
dataFrame <- data.frame(x, y)
kmeansObj <- kmeans(dataFrame, centers = 3)
names(kmeansObj)
#cluster each data point
set.seed(8567)
dataMatrix <- as.matrix(dataFrame)[sample(1:12), ]
kmeansObj <- kmeans(dataMatrix, centers = 3)
image(t(dataMatrix)[, nrow(dataMatrix):1], yaxt = "n", main = "Original Data")
#Image turning
image(t(dataMatrix)[, order(kmeansObj$cluster)], yaxt = "n", main = "Clustered Data")
