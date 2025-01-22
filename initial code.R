# .R files: Program Scripts
suma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}
suma(3,5)
va1 <- 100
typeof(va1)

va2 <- 78L
typeof(va2)

var_dbl <- 100 #double 
var_int <- 69L #integer
var_char <- 'William' #string
var_logical <- TRUE #binary
var_complex <- 96+6i #complex numbers have the imaginary component

ls() #it is a function which list all variables into the script
ls.str() # list all variables in the global space with a structural description

str(var_char)


# display the type and class of each variables
typeof(var_dbl)
class(var_dbl)
typeof(var_int)
class(var_int)
typeof(var_char)
class(var_char)
typeof(var_logical)
class(var_logical)
typeof(var_complex)
class(var_complex)

#displace the type and class of var_dbl, var_int, var_char, var_logical, var_complex
# 'varName : TYPE - type  | CLASS - class '

showTypeOfClase <- function(var) {
  for (i in var) {
    cat(sprintf("%s : TYPE - %s  | CLASS - %s\n", 
                deparse(substitute(i)), 
                typeof(i),               
                class(i)))               
  }
}


var <- list(var_dbl = var_dbl, var_int = var_int, var_char = var_char, 
            var_logical = var_logical, var_complex = var_complex)

showTypeOfClase(var)


func <- function(variable){
  for (i in variable) {
    cat(sprintf("Number: \n",
                deparse(substitute(i)))
  }
}
listNumbers <- list(1,2,3,4,5,6,7,8,9,0)
func(listNumbers)


# CASTING
# AS NUMERIC FAMILY
values <- c('10.5' , '20' , 'william' , TRUE)
as.integer(values)

as.logical('F')


# if i want to remove a variable
rm(va1)


#vectors
?c
numeros <- c(1, 2, 3, 4, 5)
print(numeros)  # Imprime: 1 2 3 4 5
logicos <- c(TRUE, FALSE, TRUE)
print(logicos)  # Imprime: TRUE FALSE TRUE
frutas <- c("manzana", "banana", "cereza")
print(frutas)  # Imprime: "manzana" "banana" "cereza"
numeros <- c(1, 2, 3)
suma <- sum(numeros)
print(suma)  # Imprime: 6
vect1 <- c(1, 2, 3)
vect2 <- c(4, 5, 6)
suma <- vect1 + vect2
print(suma)  # Imprime: 5 7 9
vect <- c(10, 20, 30, 40)
print(vect[2])  # Imprime: 20 (segundo elemento del vector)
# Obtener elementos de la posición 2 a la 3
subset <- vect[2:3]
print(subset)  # Imprime: 20 30
vect[2] <- 25
print(vect)  # Imprime: 10 25 30 40

vec1 <- c(1,2,3,4,5,6,7)
typeof(vec1)

is.vector(vec1)


# generate Random numbers
?runif
r_vect1 <- runif(100, 10, 100)
r_vect1

r_vect2 <- rnorm(100, 70, 5)
r_vect2

r_vect3 <- sample(10:100, 100 , T)
r_vect3

#EXERCISE 1
vect_ex1 <- 5:12
vect_ex1

vect_ex2 <- c('william', 'Alejo', 'Shaunn' , 'Azra')
vect_ex2

vect_ex3 <- 2^(0:5)
print(vect_ex3)

#SEQUENCES
seq(from = 1, to = 10, length.out = 5) #specify lenght

seq(from = 1, to = 10, by = 2) #Specify increment

seq(from = 1L, to = 10L, by = 2L) #Specify integers

vect_ex4 = 1:10
print(vect_ex4)

vect_ex4 <- seq(from = 2, to = 10, by = 2)
print(vect_ex5)

vect6_ex4 <- rep(c(1, 2), times = 4)
vect6_ex4
vect7_ex4 <- rep(c(1), times = 4)
vect7_ex4
vect8_ex4 <- rep(seq(1, 10, by = 1), each = 2)
vect8_ex4


rm(list = ls())
vec1 = sample(20, 10 , T)
vec2 = sample(30:45, 10, T)
vec3 = sample(10,5,T)
vec4 = sample(10, 7, T)

vec1; vec2; vec3; vec4

# vectors operations
vec1; vec2
length(vec1)

vec1 + vec2
# R performs addition or any operation on corresponding elements of the two vectors
vec1 + vec2
vec1 - vec2
vec1 / vec2
vec1 %% vec2

# if the lenght of the vectors are different, R provide a recycle on each other
vec1; vec3
length(vec1)
length(vec3)
vec1 - vec3
vec1 - vec4 # longer object length is not a multiple of shorter object length

# vector's names
names(vec1)
seq_along(vec1)

paste0('s', 1:10)
names(vec1)<- paste0('s', 1:10)
vec1
