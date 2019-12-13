




#1(e)
x = c(33, 21, 28, 25, 24, 31, 17, 31, 29, 30, 29, 31)
y = (mean(x) - 25)/(sd(x)/sqrt(12))
1 - pt(y, 11)
1 - pt(1.760, 11)


1 - pnorm(y)
1-pnorm(1.760)


#2(a)
z = (0.6-0.5)/sqrt(0.5*0.5/40)
z
2*pnorm(-z)

#2(b)
0.5 + sqrt((qnorm(0.0125)^2)/160)
0.5 - sqrt((qnorm(0.0125)^2)/160)


40*(0.5 + sqrt((qnorm(0.0125)^2)/160))
40*(0.5 - sqrt((qnorm(0.0125)^2)/160))



#3(a)
(0.22-0.17)/sqrt(0.17*(1-0.17)/90147)
2*pnorm(-(0.22-0.17)/sqrt(0.17*(1-0.17)/90147), log.p=T)
2*pnorm(-39.965)


#3(b)
(0.25 - 0.338)/sqrt(0.338*(1-0.338)/4784)
pnorm(-12.867)







#4(a)
syracuse = read.csv("syracuse.csv")
ithaca = read.csv("ithaca.csv")
x_i = mean(ithaca$maxtemp)
s_i = sd(ithaca$maxtemp)
x_s = mean(syracuse$maxtemp)
s_s = sd(syracuse$maxtemp)


T = (x_i - x_s)/sqrt(s_i^2/31 + s_s^2/31)
2*pnorm(-T)




#4(b)

diff = ithaca$maxtemp - syracuse$maxtemp
mean(diff)
sd(diff)
n = length(diff)
T = mean(diff)/(sd(diff)/sqrt(31))

2*pnorm(-1.23)
2*pnorm(-T)




#5(a)

T = (0.6 - 0.5)/sqrt(0.5*(1-0.5)/10)
pt(T, 9)
1-pt(T, 9)
1-pt(0.632,9)





#5(b) method 1
(0.25*(-qnorm(0.1) - qnorm(0.025))^2)/(0.7 - 0.5)^2
(0.25*(-qnorm(0.1) - qnorm(0.025))^2)/(0.6 - 0.5)^2
(0.25*(-qnorm(0.1) - qnorm(0.025))^2)/(0.51 - 0.5)^2



2.63/(0.7 - 0.5)^2
2.63/(0.6 - 0.5)^2
2.63/(0.51 - 0.5)^2






#5(b) method 2
((-0.5*qnorm(0.1) - qnorm(0.025)*sqrt((0.7)*(1-0.7)))/(0.7 - 0.5))^2
((-0.5*qnorm(0.1) - qnorm(0.025)*sqrt((0.6)*(1-0.6)))/(0.6 - 0.5))^2
((-0.5*qnorm(0.1) - qnorm(0.025)*sqrt((0.51)*(1-0.51)))/(0.51 - 0.5))^2


((0.64 + 1.96*sqrt((0.7)*(1-0.7)))/(0.7 - 0.5))^2
((0.64 + 1.96*sqrt((0.6)*(1-0.6)))/(0.6 - 0.5))^2
((0.64 + 1.96*sqrt((0.51)*(1-0.51)))/(0.51 - 0.5))^2






















