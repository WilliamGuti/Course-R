#Question 1

# x = initial population size
# n = number of generations
# k = growth factor
bacterial_growth <- function(x, n, k) {
  
  # Check if all inputs (x, n, k) are integers; if not, return NA
  if(!is.integer(x) | !is.integer(n) | !is.integer(k)) {
    return(NA)  # Exit the function and return NA if any input is invalid
  }
  
  # Initialize an empty numeric vector to store population size per generation
  Pop_Per_gen <- as.numeric(c())
  
  # Set the population size for the first generation as the initial population (x)
  Pop_Per_gen[1] <- x
  
  # Loop through generations 2 to n to calculate population size
  for(m in 2:n) {
    # The population size for generation m is calculated as:
    # previous generation's population squared, multiplied by the growth factor (k)
    Pop_Per_gen[m] <- k * Pop_Per_gen[m-1]^2
  }
  
  # Return the vector containing the population sizes for all generations
  return(Pop_Per_gen)
}


# Test the function with the following parameters:
bacterial_growth(as.integer(20), as.integer(4), as.integer(6))
bacterial_growth(as.integer(2), as.integer(7), as.integer(4))
bacterial_growth(as.integer(1), as.integer(4), as.integer(6))
bacterial_growth(as.integer(2), as.integer(6), as.integer(8))
bacterial_growth(as.integer(1), as.integer(9), as.integer(4))


# question 2
rm(list = ls())
# 1
# Define a function named 'powerSeq' that takes two parameters: base and maxExp.
powerSeq <- function(base, maxExp) {
  
  # Check if both inputs (base and maxExp) are integers.
  # If either is not an integer, return NA (missing value).
  if (!is.integer(base) || !is.integer(maxExp)) {
    return(NA)
  }
  
  # Initialize an empty vector 'vectorBase' to store the sequence of powers of the base.
  vectorBase <- c()
  
  # Initialize an empty vector 'names' to store the names of the elements in the sequence.
  names <- c()
  
  # Loop from 0 to maxExp (inclusive) to calculate powers of the base.
  for (i in 0:maxExp) {
    
    # Append the result of 'base^i' (base raised to the power of i) to 'vectorBase'.
    vectorBase <- c(vectorBase, base^i)
    
    # Create a name for the current power and append it to 'names'.
    names <- c(names, paste(i))
  }
  
  # Assign the 'names' vector as the names of the elements in 'vectorBase'.
  names(vectorBase) <- names
  
  # Return the 'vectorBase', which now includes both the values and their corresponding names.
  return(vectorBase)
}

# Test the function with an example:

powerSeq(as.integer(2), as.integer(3))

# 2
# Call the powerSeq function to generate powers of 3 from 3^0 to 3^10.
powerSeq3 <- powerSeq(as.integer(3), as.integer(10))

# Call the powerSeq function to generate powers of 4 from 4^0 to 4^10.
powerSeq4 <- powerSeq(as.integer(4), as.integer(10))

# Call the powerSeq function to generate powers of 5 from 5^0 to 5^10.
powerSeq5 <- powerSeq(as.integer(5), as.integer(10))

# 3

# Combine powerThree, powerFour, and powerFive into a single vector
dataPower <- c(powerSeq3, powerSeq4, powerSeq5)

# Function to create names for rows
createNames <- function(name, size) {
  names <- c() # Initialize an empty vector for names
  for (i in 0:size) { # Iterate from 0 to the specified size
    names <- c(names, paste(name, i)) # Concatenate "name" with the current index
  }
  return(names) # Return the names vector
}
  
# Create a matrix using dataPower with 11 rows and 3 columns
powerChart <- matrix(dataPower, nrow = 11, ncol = 3)
  
# Assign column names as the base values 3, 4, and 5
colnames(powerChart) <- c(3, 4, 5)
  
# Assign row names using the createNames function
rownames(powerChart) <- createNames('Exp', 10)
  
# Print the powerChart matrix
print(powerChart)

#5
# Function to describe powerChart with detailed descriptions
powerChartDescription <- function(powerChart) {
  powerChartDes <- matrix(nrow = nrow(powerChart), ncol = ncol(powerChart)) # Initialize an empty matrix
  
  for (i in 1:nrow(powerChart)) { # Iterate through rows
    for (j in 1:ncol(powerChart)) { # Iterate through columns
      base <- colnames(powerChart)[j] # Get the column name (base)
      total <- powerChart[i, j] # Get the value at position [i, j]
      powerChartDes[i, j] <- paste(base, "to the power of", i - 1, "=", total) # Create a descriptive string
    }
  }
  
  # Assign the original row and column names to the new matrix
  rownames(powerChartDes) <- rownames(powerChart)
  colnames(powerChartDes) <- colnames(powerChart)
  
  return(powerChartDes) # Return the descriptive matrix
}

# Call the powerChartDescription function and display the result
powerChartDescription(powerChart)

#5
# Function to calculate the negative powers of the base values in powerChart
negPowerChart <- function(powerChart) {
  powerChartNeg <- matrix(nrow = nrow(powerChart), ncol = ncol(powerChart)) # Initialize an empty matrix
  
  for (i in 1:nrow(powerChart)) { # Iterate through rows
    for (j in 1:ncol(powerChart)) { # Iterate through columns
      base <- as.integer(colnames(powerChart)[j]) # Convert column name to an integer (base)
      exponent <- as.integer(i - 1) # Calculate the exponent (i - 1)
      total <- as.double(1 / base^exponent) # Calculate the reciprocal of base raised to the exponent
      powerChartNeg[i, j] <- round(total, 7) # Round the value to 7 decimal places because if we add more decimals it looks pretty non-understandable
    }
  }
  
  # Assign the original row and column names to the new matrix
  rownames(powerChartNeg) <- rownames(powerChart)
  colnames(powerChartNeg) <- colnames(powerChart)
  
  return(powerChartNeg) # Return the matrix with negative powers
}

# Call the negPowerChart function and display the result
negPowerChart(powerChart)

#6
# Function to create a power sequence vector with specific rules
exerciceSeq6Vector <- function(powerChart) {
  powerSequence <- c() # Initialize an empty vector for the sequence
  
  for (i in 1:nrow(powerChart)) { # Iterate through rows
    total <- 0 # Initialize the value for each row
    for (j in 1:ncol(powerChart)) { # Iterate through columns
      base <- as.integer(colnames(powerChart)[j]) # Get the base value
      exponent <- as.integer(i - 1) # Calculate the exponent (i - 1)
      
      if (base != 4) { # If the base is not 4
        total <- total + base^exponent # Add base raised to the exponent to the value
      } else { # If the base is 4
        total <- total - base^exponent # Subtract base raised to the exponent from the value
      }
    }
    powerSequence <- c(powerSequence, total) # Append the computed value to the sequence
  }
  
  return(powerSequence) # Return the power sequence vector
}

# Call the powerSequenceVector function and display the result
exerciceSeq6Vector(powerChart)
