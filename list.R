# LISTS
list1 <- list( 45 , 23, 21 , 23, 11, 32)
list1

list2 <- list( 45:50 , 23, 21 , matrix(1:6, ncol = 2), 11, 32)
list2


list3 <- list( 45:50 , 
               list(c(23,45,6), 
                    matrix(5:10, ncol = 2)), 
               21 , 
               matrix(1:6, ncol = 2), 
               11, 
               32)
list3


# Cities/temps
weather_data <- list(city = list(name='Toronto', country = 'Canada'),
                     today_temp = list(high=-4, low = -15),
                     humidity = 0.56,
                     presp = 20)
weather_data