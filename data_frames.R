#dataFrames

table1 <- data.frame(c(1:3),c('a','b','c'))
table1

x <- c(1:3)
y <- c('a','b','c')
table2 <- data.frame(x,y)
table2

table3 <- data.frame(
  name = c('william', 'Ana', 'Andres'),
  age = c(29L,26L,30L),
  height = c(1.78,1.50,1.80),
  canadian = c(FALSE, TRUE, TRUE),
  stringsAsFactors = FALSE
)
table3
?stringAsFactors

#exercice 1

trees <- data.frame(
  names = c('Apple1', 'Apple2', 'Oak1',  'Oak2', 'Pine1', 'Pine2'),
  girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8),
  height = c(70,65,63,72,81,83),
  volume = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7)
)
trees

