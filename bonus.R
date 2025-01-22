rm(list = ls())

df_mc <- read.csv("C:\\Users\\wguti\\OneDrive\\Desktop\\Data Handling & Desition Making\\dataSet\\vec_mc.csv")
calories <- df_mc$product_calories
products <- df_mc$product_name

# 1. Clean the calories vector by removing the text of each data point and converting the vector 
# into an integer vector.

calories
calories <- sub("kcal:", "", calories) # Delete kca:
calories <- as.integer(calories) #change the type of data to Integer data
calories

# 2. Assign the products vector as the names of the calories vector.
products
names(calories) <- products
print(calories[1])


# 3. Sort the calories vector. 
calories
calories_sorted_asc <- sort(calories)
calories <- calories_sorted_asc


# 4. Display the minimum, 1st quartile, median, 2nd quartile, and maximum of calories. 
calories
?min
minimum_calories <- min(calories, na.rm = FALSE)
minimum_calories
maximum_calories <- max(calories, na.rm = FALSE)
maximum_calories
?summary
calories_summary <- summary(calories)
calories_summary

# 5. Which products have the lowest and highest calories?
products

calories_lowest <- calories[calories == min(calories)]
calories_lowest
calories_highest <- calories[calories == max(calories)]
calories_highest



#  6. Calculate the average of calories and assign it to cal_avg.
cal_avg <-  mean(calories)
cal_avg

# 7. Display the products (only the names) with above-average calories.
    
calories > cal_avg
names(calories[calories > cal_avg])
