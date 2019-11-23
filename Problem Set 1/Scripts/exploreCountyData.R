#load libraries
library(tidyverse)
library(knitr)
library(kableExtra)
library(gridExtra)
theme_set(theme_bw())

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
ggplot(data = countyData) + geom_point(mapping = aes(x = bachelors, y = poverty)) + 
  xlim(0, 80) + ylim(0, 80) + coord_fixed() + ggtitle("Poverty Rate vs. Bachelors Degrees Per County") + 
  ylab("Percent of County Below Poverty Line") + xlab("Percent of County with Bachelors Degrees")

#percent of counties with more than 30% population under 30
over30 <- countyData %>% filter(age_under_18 > 30)
over30 <- nrow(over30)
percOver30 <- 100  * (over30 / nrow(countyData))