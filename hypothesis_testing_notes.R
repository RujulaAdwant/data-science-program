## Z scores and confidence intervals
## let's say we eat 100 boxes of cookies and find the average is 38.2
## number of cookies in a box is 38.2

sample_mean = 38.2
pop_mean = 40 #what our hypothesis is testing against
sd = 10 # standard deviation
n = 100 # total sample size

z = (sample_mean - pop_mean) / (sd/sqrt(n))
z


sleep_hours <- c(5,5,5,6,6,7,7,7,8,9)
mean(sleep_hours)
sd(sleep_hours)

t.test(sleep_hours, mu = 7)
t.test(sleep_hours, mu = 7, alternative = "less") 

# wrong direction
t.test(sleep_hours, mu = 7, alternative = "greater") 

# Using iris dataset
pop_mean <- mean(iris$Sepal.Length)
pop_mean

filter(iris, iris$Species == "setosa")
t.test(iris$Sepal.Length, mu = pop_mean)
