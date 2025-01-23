install.packages("dplyr")
install.packages("PerformanceAnalytics")
install.packages("ggplot2")

file.choose()
df_homes1 <- read.csv("C:\\Users\\wguti\\OneDrive\\Desktop\\Data Handling & Desition Making\\dataSet\\homstart-innsbruck.csv")
df_homes1
str(df_homes1)
summary(df_homes1)
head(df_homes1)

df_homes2 <- read.csv2("C:\\Users\\wguti\\OneDrive\\Desktop\\Data Handling & Desition Making\\dataSet\\homstart-innsbruck.dat" ,comment.char = "#")
df_homes2
str(df_homes2)
summary(df_homes2)
head(df_homes2)

flights_data <- data.frame(  FlightID = sprintf("FL%04d", 1:25),  
                             Airline = sample(c("Air Canada", "WestJet", "Delta", "American Airlines", "United"), 25, replace = TRUE), 
                             Origin = sample(c("Toronto", "Vancouver", "Montreal", "Calgary", "Ottawa"), 25, replace = TRUE),  
                             Destination = sample(c("New York", "Chicago", "Los Angeles", "Miami", "London"), 25, replace = TRUE),  
                             DepartureTime = format(as.POSIXct(runif(25, 0, 86400), origin = "1970-01-01", tz = "GMT"), "%H:%M:%S"),  
                             ArrivalTime = format(as.POSIXct(runif(25, 0, 86400), origin = "1970-01-01", tz = "GMT"), "%H:%M:%S"),  
                             Duration = round(runif(25, 1, 10), 1)) # Flight duration in hours  Passengers = sample(50:300, 25, replace = TRUE),  Status = sample(c("On Time", "Delayed", "Cancelled"), 25, replace = TRUE, prob = c(0.7, 0.25, 0.05)))
flights_data                             
                             