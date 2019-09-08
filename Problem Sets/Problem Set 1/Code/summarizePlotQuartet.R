#load libraries
library(tidyverse)
library(knitr)
library(kableExtra)

#import quartet data set
quartet <- read.csv("Data/Quartet.csv")

#summarize data by mean, median, standard deviation and show in table
colNames <- c("X1", "X2", "X3", "X4", "Y1", "Y2", "Y3", "Y4")

quartetMean <- apply(quartet, 2, mean)
quartetMedian <- apply(quartet, 2, median)
quartetSD <- apply(quartet, 2, sd)

summaryTable <- tibble(colNames, quartetMean, quartetMedian, quartetSD)

summaryTable <- summaryTable %>% rename(Column = colNames, "Sample Mean" = quartetMean, "Sample Median" = quartetMedian, "Sample Standard Deviation" = quartetSD)

kable(summaryTable) %>% kable_styling(bootstrap_options = c("striped", "hover"))

#plot all four paired data sets to compare to summary statistics
par(mfrow=c(2,2))

plot(quartet$x1, quartet$y1)
plot(quartet$x2, quartet$y2)
plot(quartet$x3, quartet$y3)
plot(quartet$x4, quartet$y4)