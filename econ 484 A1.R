# Econ 484 Assignment 1
# Name: Yixiao Zhao
# Student number: 301322030

#read data into R
data<-read.csv("~/Desktop/LRUN64TTCAM156S.csv")

#tell it this is a time series object, the data start from 1995 and calculate at month
Time_series_data <-ts(data$LRUN64TTCAM156S,frequency = 12,start = 1995)

#Plot the time series data
plot.ts(Time_series_data, main="Unemployment Rate: All Person for Canada (1995-2019)", xlab="Year", ylab="Unemployment rate")

#Plot the time series from Jan. 2009 to Jan. 2019
plot.ts(window(Time_series_data,2009,c(2019,1)), main="Umemployment Rate: All person for Canada(2009/01-2019/01)", xlab="Year",ylab="Unemployment rate")

#Summary statistics
summary(Time_series_data)

#Summary statistic from Jan. 2009 to Jan. 2019
summary(window(Time_series_data, 2009,c(2019,1)))


