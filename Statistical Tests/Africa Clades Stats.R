# Africa
# Country Clades
data <- data.frame(
  country = c("ken", "tanzania", "sa", "nam", "ic", "uga", "zam"),
  n = c(27, 11, 7, 1, 1, 4, 4),
  diversity = c(0.769, 0.836, 0.762, 0.000, 0.000, 0.000, 0.000)
)

data$relative_abundance <- data$n / sum(data$n)
model <- lm(diversity ~ relative_abundance, data=data)
summary(model)

# Clade Diversity
data <- data.frame(
  country = c("A", "B", "H", "I"),
  n = c(12, 8, 11, 12),
  diversity = c(0.79, 0.61, 0.80, 0.17) 
)

data$relative_abundance <- data$n / sum(data$n)
model <- lm(diversity ~ relative_abundance, data=data)
summary(model)
