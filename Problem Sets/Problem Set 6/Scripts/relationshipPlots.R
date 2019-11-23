ggplot(data = data) + geom_point(aes(x = data$`Temperature(Celsius)`, 
      y = data$`Ice Cream Sales($)`)) + xlab("Temperature (Celsius)") + 
      ylab("Ice Cream Sales ($)") + ggtitle("Ice Cream vs. Temperature Plot")

ggplot(data = data) + geom_point(aes(x = data$`Ice Cream Sales($)`, 
      y = data$`Sunglass Sales($)`)) + xlab("Ice Cream Sales ($)") + 
      ylab("Sunglasses Sales ($)") + ggtitle("Sunglasses vs. Ice Cream Plot")

ggplot(data = data) + geom_point(aes(x = data$`Temperature(Celsius)`, 
      y = data$`Sunglass Sales($)`)) + xlab("Temperature (Celsius") + 
      ylab("Sunglasses Sales ($)") + ggtitle("Sunglasses vs. Temperature Plot")