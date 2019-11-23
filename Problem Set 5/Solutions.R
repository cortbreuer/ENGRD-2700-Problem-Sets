

#(a)
Bwages = read.csv("Bwages.csv")
wage = Bwages[,1]
hist(wage,xlab = "Wages",main="Histogram of wages")




#(b)
n = length(wage) 
quantiles = (1:n - 0.5)/n 
mu = mean(wage)
sd = sd(wage)
x = qnorm(quantiles,mu,sd)
plot(x, sort(wage))
abline(0, 1)


#(d)
meanlog = 2.31
sdlog = 0.41
y = qlnorm(quantiles,meanlog,sdlog) 
plot(y, sort(wage))
abline(0, 1)