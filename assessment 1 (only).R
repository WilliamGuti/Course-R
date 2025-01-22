podium <- c(1,2,3) # creation vector
names(podium) <- c('first place' , 'second place' , 'third place') # adding their names
print(podium) # print the result

# accesing named components
#by names
podium['second place']

#by position
podium[3]


podium_matrix <- matrix(1:9, nrow = 3, byrow = TRUE) # matrix creation
rownames(podium_matrix) <- c("first place", "second place", "third place") # adding names on rows
colnames(podium_matrix) <- c("A", "B", "C") # adding names on columns
print(podium_matrix) # print the results


# Accessing by names
podium_matrix["first place", "A"] 

# Accessing by numeric index
podium_matrix[2, 3]  



# 2
#A. 
sequenceA <- seq(1,25,3)
sequenceA
#B. 
sequenceB <- (1:6)^(1:6)
sequenceB
#C
sequenceC1 <- seq(1,5)
sequenceC1
sequenceC2 <- seq(4,1)
sequenceC2
result <- c()  
# loop for the first values (10*1, 9*2, 8*3, etc.)
for (i in sequenceC1) {
  result <- c(result, (10 - (i - 1)) * i)
}
# loop for values reflected (7*4, 8*3, 9*2, 10*1)
for (i in sequenceC2) {
  result <- c(result, (10 - (i - 1)) * i)
}
print(result)

#D
repeD <- c(rep(1, 5), rep(3, 4), rep(5, 3), rep(7, 2), 9)
print(repeD)


#3

#2

ranInt <- sample(20:100, 10, T)
ranInt


#3
# Define the function named function3point that takes one input vector x
function3point <- function(x) {
  print(x)  # Print the input vector for checking the values
  
  # Check if x is an integer vector and has at least one element
  # If the condition is not met, return NA
  if (!is.integer(x) || length(x) < 1) {
    return(NA)
  }
  
  # Initialize an empty numeric vector with the same length as the input x
  # This will store the transformed values
  outputVector <- numeric(length(x))
  
  # Iterate through the indices of the input vector x
  for (i in seq(x)) {
    if (i %% 2 == 0) {  # Check if the index is even
      # Square the element at the current index and store it in outputVector
      outputVector[i] <- (x[i]^2)
    } else {  # Index is odd
      # Calculate the square root of the element and store it in outputVector
      outputVector[i] <- sqrt(x[i])
    }
  }
  
  # Return the final output vector, rounded to 2 decimal places
  return(round(outputVector, 2))
}

# Create a test integer vector with specific values
testVector <- as.integer(c(1,2,3,4,5,6,7,8,9,10,0))
# Call the function with the test vector and store the result in resultOf3Point
resultOf3Point <- function3point(testVector)
# Print the final transformed vector
print(resultOf3Point)



