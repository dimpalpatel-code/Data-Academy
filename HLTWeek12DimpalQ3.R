install.packages("ggplot2", dependencies = TRUE)

library (ggplot2)

x <- 1:20
y <- x^2

qplot (x,y)