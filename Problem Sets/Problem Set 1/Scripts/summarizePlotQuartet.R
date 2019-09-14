#load libraries
library(tidyverse)
library(knitr)
library(kableExtra)
library(gridExtra)
theme_set(theme_bw())

#import quartet data set
quartet <- read.csv("Data/Quartet.csv")

#summarize data by mean, median, standard deviation and show in table
colNames <- c("X1", "Y1", "X2", "Y2", "X3", "Y3", "X4", "Y4")

quartetMean <- apply(quartet, 2, mean)
quartetMedian <- apply(quartet, 2, median)
quartetSD <- apply(quartet, 2, sd)

summaryTable <- tibble(colNames, quartetMean, quartetMedian, quartetSD) %>% 
  rename(Column = colNames, "Sample Mean" = quartetMean, "Sample Median" = quartetMedian, 
         "Sample Standard Deviation" = quartetSD) %>% mutate_if(is.numeric, round, digits = 2)

kable(summaryTable) %>% kable_styling(bootstrap_options = c("striped", "hover"))

#plot all four paired data sets to compare to summary statistics
p1 <- ggplot(data = quartet, aes(x = x1, y = y1)) + geom_point(size = 3) + xlim(0, 19) + ylim(0, 15)
p2 <- ggplot(data = quartet, aes(x = x2, y = y2)) + geom_point(size = 3) + xlim(0, 19) + ylim(0, 15)
p3 <- ggplot(data = quartet, aes(x = x3, y = y3)) + geom_point(size = 3) + xlim(0, 19) + ylim(0, 15)
p4 <- ggplot(data = quartet, aes(x = x4, y = y4)) + geom_point(size = 3) + xlim(0, 19) + ylim(0, 15)

grid.arrange(p1, p2, p3, p4)