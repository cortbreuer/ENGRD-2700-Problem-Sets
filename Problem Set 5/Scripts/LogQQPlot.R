meanlog <- 2.31
sdlog <- .41

n = length(Bwages$wage)
qi = (1:n - 0.5)/n

x = qlnorm(qi, meanlog, sdlog)
y = sort(Bwages$wage)
wages <- tibble(x, y)

ggplot(data = wages) + geom_point(mapping = aes(x = x, y = y), shape = 1) + geom_abline(intercept = 0, slope = 1, color = "#F8766D") + xlab("Theoretical Quantiles") + ylab("Sample Quantiles") + ggtitle("Lognormal Q-Q Plot for Bwages")
