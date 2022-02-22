
# Matrix

a <- c(2,4,6,8,10)
b <- c(3,6,9,12,15)
c <- c(4,8,12,16,20)

newMatrix <- rbind(a,b,c)
print(newMatrix)


matplot (newMatrix, main="First Graph", xlab = "X Axis", ylab = "Y Axis", type = "o", pch = 17)


# Dataframes

Name <- c("Tracey", "Karen", "Charmaine", "Mark", "Joshua")
Age <- c(58, 59, 54, 52, 38)
Role <- c("Analyst", "Manager", "Accountant", "Programmer", "Apprentice")
YearsOfService <- c(15, 20, 12, 8, 2)

frame <- data.frame(Name, Age, Role, YearsOfService)
print(frame)


install.packages("ggplot2")
library("ggplot2")


# Use ggplot

x <- c(1:20)
print(x)
y <- x^2
print(y)

qplot(x, y, xlab = "numbers", ylab = "square of numbers")



# Bar chart

subjects <- c("Maths", "Chemistry", "Biology", "Art", "English")
grades <- c(90, 85, 80, 95, 53)

barplot(grades, names.arg=subjects, main="Bar Chart", xlab="Subjects", ylab="Grades", col="yellow", border="red")



# Input from user
name <- readline("Enter your name:- ")
age <- readline("Enter your age:- ")
display <- paste("Hi", name, "you do not look like", age,"!!!")
print(display)



# Create a sequence find the mean and the sum
sequ <- c(20:50)
print(sequ)
mean <- mean(sequ)
sum <- sum(sequ)
statem <- paste("the mean of the numbers is", mean, "the sum of the numbers is", sum)
print(statem)


# show random numbers

data <- c(-50:50)
print("10 Random numbers between -50 and 50")
sample(x=data, size=10)
