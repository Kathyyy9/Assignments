
wages <- read.csv("~/Desktop/wages.txt", sep="")
wages.ts<- ts(wages,start=c(1981,7),frequency = 12)
plot(wages.ts,ylab = "Wages", xlab = "Year",main="Graph 1")

#linear regression model fit with output
fit<-lm(wages.ts~time(wages.ts))
summary(fit)
plot(wages.ts,ylab="Wages",xlab="Year",type="o",main="Graph 2")
abline(fit)

#residuals from the line regression model fit
residuals<-ts(resid(fit),start=c(1981,7),frequency = 12)
plot(residuals,ylab="Residuals",xlab="Year",main="Graph 3")

#Standardised residuals
#histogram and Q-Q plot
hist(rstudent(fit),main="Histogram of studentized residuals",xlab="Studentized residuals")
qqnorm(rstudent(fit),main="Q-Q plot of studentized residuals")
qqline(rstudent(fit))

#shapiro_wilk test for normality
shapiro.test(rstudent(fit))

#Jarque-Bera test for normality 
install.packages("tseries")
library(tseries)
jarque.bera.test(rstudent(fit))

#sample ACF for studentized residuals
acf(rstudent(fit),main="Sample ACF for studentized residuals")

#runs test
runs.test(factor(rstudent(fit)>0))

#BDS test 
install.packages("fNonlinear")
library(fNonlinear)
bdsTest(residuals)


