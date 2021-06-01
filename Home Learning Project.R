library(ggplot2)
data()
data(package = .packages(all.available = TRUE))
data(package = "ggplot2")

data(midwest)

?midwest

summary(midwest)

ggplot(data = midwest, 
       mapping = aes(x = percbelowpoverty)) + 
  geom_histogram()

ggplot(midwest,
       aes(x = percbelowpoverty,
           y = percollege)) + 
  geom_point()

ggplot(midwest, aes(x = state, y = percbelowpoverty)) + 
  geom_bar(aes(fill = state), stat = "identity") +
  labs(title="Percent Below Poverty per State")

gg<-ggplot(data = midwest, aes(x = area, y = poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(y="Population", 
       x="Area", 
       title="Population Analysis per Area of Midwest")
gg + scale_color_manual(name="State", 
                        labels = c("Illinois", 
                                   "Indiana", 
                                   "Michigan", 
                                   "Ohio", 
                                   "Wisconsin"), 
                        values = c("IL"="red", 
                                   "IN"="yellow", 
                                   "MI"="orange", 
                                   "OH"="green", 
                                   "WI"="blue"))

plotMidwest <- function(var1, var2) {
  ggplot(midwest) +
    geom_point(aes(x = .data[[var1]], y = .data[[var2]])) +
    labs(title="Percent Below Poverty per Population Density")
}
plotMidwest("popdensity", "percbelowpoverty")

