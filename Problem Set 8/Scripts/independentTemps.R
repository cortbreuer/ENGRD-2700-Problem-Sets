ithacaTemp <- read_csv("Data/ithaca.csv")
syracuseTemp <- read_csv("Data/syracuse.csv")

n <- length(ithacaTemp$maxtemp)
mu_i <- mean(ithacaTemp$maxtemp)
mu_s <- mean(syracuseTemp$maxtemp)
sd_i <- sd(ithacaTemp$maxtemp)
sd_s <- sd(syracuseTemp$maxtemp) 
  
T <- (mu_i - mu_s)/(sqrt(sd_i^2 / n) + sqrt(sd_s^2 / n))
p <- pnorm(-T) + 1 - pnorm(T)