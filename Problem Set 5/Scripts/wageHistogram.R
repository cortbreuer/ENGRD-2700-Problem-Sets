Bwages <- read_csv("Bwages.csv")

ggplot(data = Bwages) + geom_histogram(mapping = aes(x = wage), 
      binwidth = 3) + xlab("Wages") + ylab("Count") + ggtitle("Wage Histogram")
