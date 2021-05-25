print("hello world")
pi<-3.1415
dozen<-12L
print(paste("Type of pi:",typeof(pi)))
print(paste("Type of dozen:",typeof(dozen)))
flag<-T
print(paste("Is flag logical:",is.logical(flag)))

name <- readline(prompt="Please enter your name: ");
age <- readline(prompt="Please enter your age: ")
print(paste("Hello,", name, "you are", age, "years old."))

x <- 5
print(x)

name <- Dimpal
print(name)

vec1 <- c(2, 4, 6)
print (vec1)

vec2 <- c("A", "B", "C")
print (vec2)

listOfNumber = list(
  "Numbers" = vec1,
  "Characters" = vec2
)
print(listOfNumber)

myDataFrame = data.frame(
  "Numbers" = vec1,
  "Characters" = vec2
)
print(myDataFrame)

cat("Using object()\n")
print(objects())

cat("Using ls()\n")
print(ls())

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)