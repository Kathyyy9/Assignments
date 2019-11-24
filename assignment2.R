#assignment 2

rm(list=ls())
graphics.off()

install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)
devtools::install_github("tidyverse/dplyr")

set.seed(1)
data<- rnorm(500,0,1)
data_lag<-lag(data,1)

y1<-data+3*data_lag
y2<-data+1/3*data_lag

acf(y1,main="acf plot when theta=3",na.action = na.pass)
acf(y2,main="acf plot when theta=1/3",na.action=na.pass)