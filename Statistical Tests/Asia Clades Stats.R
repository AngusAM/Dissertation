# Asia
# Clades in each country
data <- data.frame(
  country = c("nepal", "china", "thailand", "india", "turkey", "japan"),
  n = c(26, 18, 2, 2, 7, 1),
  diversity = c(0.573, 0.752, 0.000, 0.000, 0.667, 0.000)
)

data$relative_abundance <- data$n / sum(data$n)
model <- lm(diversity ~ relative_abundance, data=data)
summary(model)

# Clade distribution
data <- data.frame(
  country = c("A", "B", "D", "F"),
  n = c(14, 7, 12, 6),
  diversity = c(0.624, 0.637, 0.670, 0.848)
)

data$relative_abundance <- data$n / sum(data$n)
model <- lm(diversity ~ relative_abundance, data=data)
summary(model)
