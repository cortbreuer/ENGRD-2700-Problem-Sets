deltaTemp <- ithacaTemp$maxtemp - syracuseTemp$maxtemp

n <- length(deltaTemp)
mu <- mean(deltaTemp)
sd <- sd(deltaTemp)

T <- mu / (sd / sqrt(n))
p <- pnorm(-T) + 1 - pnorm(T)
