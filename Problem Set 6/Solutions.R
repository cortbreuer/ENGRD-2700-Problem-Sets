

setwd('/Users/duke/Desktop/HW6')

mydata = read.csv("DataForSunglasses.csv") 


t = mydata$Temperature.Celsius.

ic = mydata$Ice.Cream.Sales...

s = mydata$Sunglass.Sales...


plot(ic , t, pch=19, main = "Scatter Plot for Ice Cream Sales vs Temperature" , xlab="Ice Cream Sales($)",ylab="Temperature(Celsius)")
cor(ic,t)


plot(s , t, pch=19, main = "Scatter Plot for Sunglasses Sales vs Temperature" , xlab="Sunglasses Sales($)",ylab="Temperature(Celsius)")
cor(s,t)


plot(s , ic, pch=19, main = "Scatter Plot for Sunglasses Sales vs Ice Cream Sales" , xlab="Sunglasses Sales($)",ylab="Ice Cream(Celsius)")
cor(s,ic)
