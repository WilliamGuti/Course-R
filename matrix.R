rm(list = ls())
# matrix
sleep_hours <- round(rnorm(42,6,1),2)
sleep_hours

m_sh <- matrix(sleep_hours, nrow = 6, byrow = T)
m_sh

dim(m_sh)
length(m_sh)
typeof(m_sh)
class(m_sh)

names(m_sh)
colnames(m_sh)
rownames(m_sh)
dimnames(m_sh)

#dimanes  = list(rownames_vec, colnames_vec)
weekdays(Sys.Date() + 0:6)
m_sh <- matrix(sleep_hours, nrow = 6, byrow = T , dimnames = list(paste0('P' , 1:6) , weekdays(Sys.Date() + 0:6)))
m_sh

names(m_sh) # NULL - doesn't work with matrices
colnames(m_sh)
rownames(m_sh)
dimnames(m_sh)

colnames(m_sh)[1:3]
colnames(m_sh)[-(1:3)]

c(colnames(m_sh)[-(1:3)], colnames(m_sh)[1:3])
colnames(m_sh) <- c(colnames(m_sh)[-(1:3)], colnames(m_sh)[1:3])
m_sh


p1 <- sample(1:10, 5, T)
p2 <- sample(1:10, 5, T)
p3 <- sample(1:10, 5, T)
p4 <- sample(1:10, 5, T)
p5 <- sample(1:10, 5, T)
p6 <- sample(1:10, 5, T)

names(p1) <- names(p2) <- names(p3) <- names(p4) <- names(p5) <- paste0('M' , 1:5)

# rbind / stacking
m_players <- rbind (p1,p2,p3,p4,p5)
typeof(m_players)
class(m_players)

is.matrix(m_players)

p6 <- sample(1:10,5,T)
m_players <- rbind(m_players, p6)
p6
m_players

p7 <- sample(1:10,5,T)
p7
rbind(m_players, p7)

p8 <- sample(1:10,5,T)
names(p8) <- paste0('M' , 8:12)
p8
m_players <- rbind(m_players, p8)
m_players


#cbind / column bind

age<-sample(1:17,8,T)
color<-sample(1:4,8,T)
weight<-round(rnorm(8.12,1),2)

inPets <- cbind(age,color,weight)
inPets
class(inPets)
typeof(inPets)

#Exercise2
# 1
v1 <- sample(1:10, 5, T)
v2 <- sample(1:10, 5, T)
v3 <- sample(1:10, 5, T)
v4 <- sample(1:10, 5, T)
v5 <- sample(1:10, 5, T)
v6 <- sample(1:10, 5, T)

names(v1) <- names(v2) <- names(v3) <- names(v4) <- names(v5) <- names(v6) <- paste0('RanVec' , 1:5)
ranVect <- rbind(v1,v2,v3,v4)
ranVect

mat1 <- matrix(sample(0:50, 20, T), ncol = 5)
mat1
#2
mat2 <- matrix(sample(0:50, 30, T), ncol = 5)
mat2

ranVect1 <- rbind(v1,v2,v3,v4,v5,v6)
ranVect1


#3 
m_marks <- c(mark1 <- sample(10:25, 1),
             mark2 <- sample(10:30, 1),
             mark3 <- sample(10:25, 1),
             mark4 <- sample(10:20, 1)) 
m_marks

for (i in 1:4) {
  stm <- c(m1 <- sample(10:25, 1),
           m2 <- sample(10:30, 1),
           m3 <-sample(10:25, 1),
           m4 <- sample(10:20, 1))  
  m_marks <- rbind(m_marks, stm)
}


m_marks
rownames(m_marks) <- paste0('s' , 1:5)
colnames(m_marks) <- paste0('m' , 1:4)
m_marks

rowSums(m_marks)
colSums(m_marks)
colMeans(m_marks)
rowMeans(m_marks)

total <- rowSums(m_marks)
m_marks <- cbind(m_marks, total)
m_marks

dim(m_marks)
ncol(m_marks)
nrow(m_marks)


# subsetting
# matrix( row, column)

m_marks
m_marks[3,4] #s3's m4 --> vector
m_marks[3,3:4] #s3's m3 and m4--> vector
m_marks[3,c(3,4)]
m_marks[c(1,5), c(3,4)]
m_marks[2,]
m_marks[c(2,4),]


for(i in 1:ncol(m_marks)){
  c_name <- colnames(m_marks)[i]
  max_score <- max(m_marks[,i])
  cat('max score of' , c_name, ':' , max_score ,'\n')
  }
max_score
m_marks

for(i in 1:nrow(m_marks)){
  r_name <- rownames(m_marks)[i]
  max_score <- max(m_marks[i, 1:4])
  cat('max Test score of' , c_name, ':' , max_score ,'\n')
}
max_score
m_marks


#exercise 3
#1
seq1 <- seq(from = 10, to = 50, length.out =20)
seq1

#2
matr1 <- matrix(seq1,nrow = 5 ,ncol = 4)
matr1

#exercice 4

price <- c(200,500,300,400)
qty <- c(45,23,56,22)
damaged <- c(4,2,3,2)

# 1
product1 <- cbind(price, qty, damaged)
product1

# 2
rownames(product1) <- c('TV', 'Mobile', 'SoundBar', 'Tablet')
product1

#3 what is the price of the TV
productTV <- cat('price of the tv is: ' , product1[1,1])


#4 how many mobiles are there?
allMobiles <- cat('there are: ' , product1[2,2], 'Mobiles')

#5 how many tablets are damaged?
damagedTablets <- cat('There are ',product1[3,3],'Damaged')
