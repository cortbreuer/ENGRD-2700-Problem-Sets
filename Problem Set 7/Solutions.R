


#1(a)

9+qt(.975, df=99)*6/sqrt(100)
9-qt(.975, df=99)*6/sqrt(100)



9+1.96*6/sqrt(100)
9-1.96*6/sqrt(100)


#1(b)

(8*6*qnorm(0.975,mean = 0, sd = 1))^2
(8*6*2)^2





#2(a)
x = c(31, 23, 42, 44, 28, 34, 19, 29, 30, 25, 28, 27)
mean(x)+1.96*5/sqrt(12)
mean(x)-1.96*5/sqrt(12)



#2(b)
mean(x)+1.645*5/sqrt(12)
mean(x)-1.645*5/sqrt(12)


mean(x)+2.576*5/sqrt(12)
mean(x)-2.576*5/sqrt(12)


#2(c)
(1.96*5)^2
(qnorm(0.975,mean = 0, sd = 1)*5)^2




#4(a)
syracuse = read.csv("syracuse.csv")
ithaca = read.csv("ithaca.csv")
diff = ithaca$maxtemp - syracuse$maxtemp
n = length(diff)
left = mean(diff)-qnorm(0.985)*sd(diff)/sqrt(n)
right = mean(diff)+qnorm(0.985)*sd(diff)/sqrt(n)



#4(b)
x_i = mean(ithaca$maxtemp)
s_i = sd(ithaca$maxtemp)
x_s = mean(syracuse$maxtemp)
s_s = sd(syracuse$maxtemp)

(x_i - x_s) + qnorm(0.985,mean = 0, sd = 1)*sqrt(((s_i)^2)/31 + ((s_s)^2)/31)
(x_i - x_s) - qnorm(0.985,mean = 0, sd = 1)*sqrt(((s_i)^2)/31 + ((s_s)^2)/31)



#5(a)
(393.08 + 400.92)/2
(400.92-397)*9/1.96

#5(c)
397 + qnorm(0.95,mean = 0, sd = 1)*18/sqrt(81)
397 - qnorm(0.95,mean = 0, sd = 1)*18/sqrt(81)


397 + 1.645*18/sqrt(81)
397 - 1.645*18/sqrt(81)


397 + qnorm(0.995,mean = 0, sd = 1)*18/sqrt(81)
397 - qnorm(0.995,mean = 0, sd = 1)*18/sqrt(81)



397 + 2.576*18/sqrt(81)
397 - 2.576*18/sqrt(81)









