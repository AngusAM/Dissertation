# load packages 
library(ggplot2)

# retrieve data
world <- map_data("world")

# generate map 
ggplot(data = world, aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "white", color = "black") +
  theme_void()
