# strings functions
char1 <- 'Apples are Red'
substr(char1, start = 12, stop = 14)
substr(char1, 12, 14) <- 'green'
char1
substr(char1, 12, 16) <- 'green'
char1

char1 <- 'Apples are Red'
char2 <- sub('Red', 'Green', char1)
char1 ; char2

char2 <- 'It is a .happy. Friday. But, I am& not feeling well.'
char2
sub("&", "", char2)
char2
gsub("&", "", char2)
char2
?grep
pets <- c('cat' , 'cat' , 'dog' , 'dog' , 'fish' , 'cat' , 'dog' , 'donkey')
names(pets) <- paste0('p', 1:length(pets))
pets                      
grep('dog', pets, ignore.case = T, fixed = T)

# uppercase

toupper(pets)
tolower(pets)

# split
char2
char3 <- gsub('&', '', char2)
char3
strsplit(char3, split = ' ')

# exercise 6
# 1) input: ['Red' , 'Green', 'Yellow' , 'Orange']
# output: ['Apples are Red' , 'Apples are Green', 'Apples are Yellow' , 'Apples are Orange']
# solution
color <- c('Red' , 'Green', 'Yellow' , 'Orange')
fruits <- paste('Apples are', colors)
fruits

#2 
str1 <- "Fist at all+ let's discuss what exactly a function means*In order to perform a particular task% we make use of the function+ which is a piece of codein R^"
gsub('^', ',' , gsub('%', ',', gsub('+' , ',',str1, fixed = T), fixed = T), fixed = T)
r1 <- gsub('^', ',' , str1, fixed = T)
r2 <- gsub('+', ',' , str1, fixed = T)
r3 <- gsub('*', ',' , str1, fixed = T)
r4 <- gsub('%', ',' , str1, fixed = T)
str1_sol <- gsub("[+*%^]", ",", str1)
str1_sol

#3 input 'that is a large dog', output: 'that is small dog'

str2 <- 'that is a large dog'
sub('large', 'small', str2)

#4
str3 <- 'that is a very large dog'
sub('very', '', str3)

#5
str4 <- 'that is a large dog'
sub('large', toupper(large), str4)



#---------------------------------------


?sample
sub1 <- sample(5:20, 10, T)
sub2 <- sample(5:20, 10, T)
names(sub1) <- names(sub2) <- paste0('w', 1:10)
sub1; sub2

sub1 > sub2

# Logical sub settings
# Attendance of week 1 of subject 1
sub1
sub1[1]
# Attendance of week 1,2 and 3 of subject 1
sub1
sub1[c(1,2,3)]
sub1[1:3]

# Attendance of week 5 through 10 of subject 1
sub1
sub1[5:10]
sub1[-c(1,2,3,4)]
sub1[-(1:4)]

#
head(sub1)
tail(sub1)
head(sub1, 2) #you can control how many samples you want
tail(sub1, 2)



#
sub1
sub1['w4']
sub1[c('w4' , 'w5' , 'w6')]

#
sub1
selects <- c(T,T,F,F,T,F,F,T,F,T)
selects
sub1[selects]

#
sub1 > 15
sub1[sub1 >15]


# modifying a vector
sub1['w2'] <- 15
sub1

sub2[3:5] <- 16
sub2

# combine 2 vectors
sub12 <- c(sub1, sub2)
sub12

rbind(sub1, sub2)


# exercise 7

emp_id <- c('person1' , 'person2')
age <- c(29 , 35)
height <- c(178 , 200)
weight <- c(90.5 , 108.2)

names(emp_id) <- paste0('person', 12:length(emp_id))
names(age) <- paste0('age', 1:length(age))
names(height) <- paste0('height', 1:length(height))
names(weight) <- paste0('weight', 1:length(weight))
emp_id; age; height; weight

generalInfo <- rbind(emp_id, age, height, weight)
generalInfo


calculateBMI(emp_id, age, height, weight)

calculateBMI <- function(emp_id, age, height, weight){
  BMI <-round(weight / ((height /100) ^2),2)
  
  result <- rbind(emp_id , age, BMI)
  return(result)
}
BMI_values <- calculateBMI(emp_id, age, height, weight)
print(BMI_values)

