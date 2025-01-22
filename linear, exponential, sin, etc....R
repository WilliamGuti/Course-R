data()
iris
plot(iris)
plot(iris$Petal.Length,iris$Petal.Width)

file.choose()
df <- read.csv("C:\\Users\\wguti\\OneDrive\\Desktop\\Data Handling & Desition Making\\dataSet\\cod.csv")
plot(df)
plot(df$weight, df$lenght)

plot(log(df$weight), log(df$length))

rm(list = ls())

# 1- linear
# y = m2*x+c

x <- round(rnorm(1000, 500, 50), 2)
hist(x, breaks = 100)

y = 4 * x + 100
plot(x, y)
y = runif(1000, 4 , 5) *x + runif(1000 , 80, 100)
plot(x,y)

# 2 - Quadratic
# y = m1*x^2 + m2*x+c

x <- round(runif(1000, -100, 100), 2)
y <- 4*x^2 + 3*x+100
plot(x,y)


# 3 - cubic
# y <- m1*x^3 + m2 * x^2 + m3x+c

x <- round(runif(1000, -100, 100), 2)
y <- 2*x^3 + 4*x^2 + 2*x + 100
plot(x,y)

#4 - log
#y <= log(x)

x <- round(runif(1000,0,500), 2)
hist(x)
y <- log(x)
plot(x, y)

#5 - sin/cos/tan
#y <- sin(x) / cos(x)  / tan(x)
x <- round(runif(1000,-2*pi,2*pi), 2)
hist(x)
y <- sin(x)
plot(x, y)

y <- cos(x)
points(x, y , col= 'red')

x <- round(runif(1000,-100, 100 ), 2)
y <- tan(x)
points(x, y , col= 'green')
