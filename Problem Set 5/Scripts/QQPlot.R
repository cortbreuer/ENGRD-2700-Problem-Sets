n = length(Bwages$wage)
qi = (1:n - 0.5)/n
mu = mean(Bwages$wage)
sigma = sd(Bwages$wage)

x = qnorm(qi, mu, sigma)
y = sort(Bwages$wage)
wages <- tibble(x, y)

ggplot(data = wages) + geom_point(mapping = aes(x = x, y = y), shape = 1) + geom_abline(intercept = 0, slope = 1, color = "#00BFC4") + xlab("Theoretical Quantiles") + ylab("Sample Quantiles") + ggtitle("Normal Q-Q Plot for Bwages")

                                                                                          