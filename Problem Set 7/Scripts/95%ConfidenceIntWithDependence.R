joint <- ithaca$maxtemp - syracuse$maxtemp
n <- length(joint)
mu <- mean(joint)
stDev <- sd(joint)
z <- qnorm(.985)
lowInterval <- mu - (z*stDev/sqrt(n))
highInterval <- mu + (z*stDev/sqrt(n))