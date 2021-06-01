library (ggplot2)

data <- data.frame(
  StudentName=c("Anne","Ben","Catherine","David","Edward") ,
  Score=c(65, 87, 33, 98, 54)
)
ggplot(data, aes(x=StudentName, y=Score)) + 
  geom_bar(stat = "identity", color="blue", fill="orange")
