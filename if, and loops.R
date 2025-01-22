a <- TRUE
b <- FALSE
result1 <- !(a || b)
result2 <- (!a) && (!b)

# Identify the output of the following R logical statements:
#1. 
A = TRUE
B = FALSE
C = TRUE
!(A & B) | (C & B) 

#2. 
A = FALSE
B = TRUE
C = TRUE
!A | C & B 

#3. 
A = FALSE
B = TRUE
C = T
D= F
!(A & B) | !(C & D) 

#4. 
A = FALSE
B = FALSE
C = FALSE
D = TRUE
!(A & B & C) & D   

#5. 
A = FALSE
B = TRUE
C = FALSE
!A & !B | C 


# 1. Create an R function that returns the absolute value of an integer vector x of length one. If the 
# length of the vector is not 1 or the vector is not integer NA should be returned.
x <- c(1)
y <- as.integer(1)
absValue <- function(x){
  if (length(x) == 1 && is.integer(x) ){
    return(abs(x))
  }
  else{
    return(NA)
  }
}
absValue(x)
absValue(y)

# 2. Create an R function that calculates and returns the square root of a given integer vector x of 
# length one. If the length of the vector is not 1 or the vector is not integer NA should be returned. 
# If the value contained in x is negative it should return NA.

sqrRoot <- function(x){
  if (length(x) == 1 && is.integer(x) ){
    return(sqrt(x))
  }
  else if (x < 0){
    return(NA)
  }
  else{
    return(NA)
  }
}
x <- c(1)
y <- as.integer(9)
z <- c(-10)
sqrRoot(x)
sqrRoot(y)
sqrRoot(z)

# 3. Create an R function that returns TRUE if the elements of a numeric input vector x, with length 
# 10, are strictly increasing; if not it should return FALSE. If the conditions stated here are not met, 
# it should return NA.

strictlyIncreasing <- function (x){
  if(length(x) == 10 && sort(x, decreasing = FALSE)) {
    return(TRUE)
  }
}
x <- c(0,1,2,3,4,5,6,7,8,9)
strictlyIncreasing(x)

