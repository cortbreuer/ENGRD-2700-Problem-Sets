quartet <- read.csv("\Data\Quartet.csv")

LinReg_1 <- lm(quartet$y1 ~ quartet$x1)
LinReg_2 <- lm(quartet$y2 ~ quartet$x2)
LinReg_3 <- lm(quartet$y3 ~ quartet$x3)
LinReg_4 <- lm(quartet$y4 ~ quartet$x4)

summary(LinReg_1)
summary(LinReg_2)
summary(LinReg_3)
summary(LinReg_4)


