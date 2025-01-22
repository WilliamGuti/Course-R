#1
randomNumber = sample(5:45,10)
for (i in randomNumber){
  if (i > 5){
    print("Great Job")
  }else{
    print("Try Again!")
  }
}

#2
count <- 0
count1 <- 0
count_above_mean <- 0
randomNumber <- sample(5:45, 10)
mean_value <- mean(randomNumber)

for (i in randomNumber) {
  if (i > 25) {
    count1 <- count1 + 1
    
  } else if (i > 15) {
    count <- count + 1
    
  }
  if (i > mean_value) {
    count_above_mean <- count_above_mean + 1
  }
}
cat('Numbers greater than 25:', count1, "\n")
cat('Numbers greater than 15 but less than or equal to 25:', count, "\n")
cat('Numbers greater than the mean:', count_above_mean, "\n")

#3 
randomNumber <- sample(5:45, 10)
count_15_to_25 <- sum(randomNumber > 15 & randomNumber <= 25)
count_above_25 <- sum(randomNumber > 25)
mean_value <- mean(randomNumber)
cat('Numbers greater than 15 and less than or equal to 25:', count_15_to_25, "\n")
cat('Numbers greater than 25:', count_above_25, "\n")
cat('Numbers greater than the mean:', count_above_mean, "\n")


#4
randomNumber <- sample(51:100,1)


name <- readline(prompt = 'Write your name: ')
age <- as.integer(readline(prompt = 'How old are you? '))
city <- readline(prompt = 'Where are you born? ')

cat('Hello ' , name , 'are you ' , age , 'years old', ', you are from ' , city)


# exercise 5

simulate_tokens <- function() {
  
  tokens <- sample(10:20, 1)
  
  cat("Initial tokens:", tokens, "\n")
  
  task_number <- 0
  
  while (tokens >= 3) {
  
    tokens <- tokens - 3
    task_number <- task_number + 1
 
    cat("Task", task_number, "completed. Remaining tokens:", tokens, "\n")
  }
  
  cat("No more tokens to perform tasks.\n")
}


simulate_tokens()


# excercise 6

#6.1
# %in%: search left operand in the right. IF the left operand is found in the right,
# %in% returns TRUE, if not FALSE.

exercise61 <- function(){
  correctNumber <- c(1:10, 1)
  repeat {
    inputValue <- as.integer(readline(prompt = "Insert a number: "))
    if (inputValue >= 1 & inputValue <= 10) { 
      print("thank you!")
      break 
    } else {
      print("Incorrect number, try again.")
    }
  }
}


exercise61()

#6.2
exercice62 <- function(numOfStartItems){
  ranVec <- sample(15:25, numOfStartItems, T)
  repeat{
    if (sum(ranVec) >= 500){
      cat('Your final vector is: ', ranVec, "\n")
      cat('Total: ', sum(ranVec))
      break
    }else{
      newValue <- sample(seq(15, 25, 2), 1)
      ranVec <- c(ranVec, newValue)
      print(ranVec)
    }
  }
}
exercice62(2)

# Bonus exercise
rm(list = ls())

deckA <- sample(1:100,10)
deckB <- deckA

gameCard <- function(){
  rounds <- as.integer(readline(prompt = 'How many rounds do you want? '))
  pickA <- deckA[1] 
  points <- 0 
  
  for (i in 1:rounds) {
    pickB <- sample(deckB, 1)  
    
  
    if (pickA == pickB) {
      cat('your cards matched! ', pickA, pickB, '\n')
      cat('your final score is:', points)
      points <- + 15
    } else {
      points <- points - 2
      cat('Try again! Current points:', points, '\n')
    }
  }

  cat('game over your final score is:', points)
}
gameCard()

