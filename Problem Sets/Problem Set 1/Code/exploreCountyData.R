#load libraries
library(tidyverse)
library(knitr)
library(kableExtra)

#import CountyData data set
countyData <- read.csv("Data/CountyData.csv")
countyData <- as_tibble(countyData)

#plot histogram of languages spoken at home
ggplot(data = countyData) + 
  geom_histogram(mapping = aes(foreign_spoken_at_home), binwidth = 5) + 
  labs(x = "Percent of Residents Who Speak a Foreign Language at Home", y = "Number of Counties")

#find median federal spending per county
median(countyData$fed_spending, na.rm = TRUE)

#plot relationship between bachelor degrees and poverty
theme_set(theme_bw())

ggplot(data = countyData) + geom_point(mapping = aes(x = bachelors, y = poverty)) + 
  xlim(0, 80) + ylim(0, 80) + coord_fixed() + ggtitle("Poverty vs. Bachelors") + 
  theme(panel.border = element_rect(colour = "black", fill=NA, size=1))

    #alternative core r plot
    #par(pty = "s")
    #plot(countyData$bachelors, countyData$poverty, xlim = c(0, 80), ylim = c(0, 80), 
        #main = "Poverty vs. Bachelors", 
        #xlab = "Percent of County with Bachelors Degrees", 
        #ylab = "Percent of County Below Poverty Line")