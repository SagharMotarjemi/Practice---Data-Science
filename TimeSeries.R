### Time series practices - loading the data
library(datasets)
AirPassengers
str(AirPassengers)
### Loading the required packages
library(forecast)
airpass_monthly <- ts(AirPassengers, start = 1949, frequency = 12)
autoplot(airpass_monthly, facets=TRUE)

ggseasonplot(airpass_monthly, year.labels=TRUE, year.labels.left=TRUE) +
  ylab("Number of passengers") +
    xlab("year") + 
      ggtitle("Monthly totals of international airline passengers, 1949 to 1960")
