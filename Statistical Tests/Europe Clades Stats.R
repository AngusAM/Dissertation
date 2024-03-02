# Europe
# How many clades in each country
data <- data.frame(
  country = c("uk", "france", "belgium", "portugal", "spain", "italy", "netherlands", "greece", "serbia", "ukraine"),
  n = c(79, 11, 16, 46, 5, 4, 4, 1, 33, 1),
  diversity = c(0.836, 0.655, 0.817, 0.809, 0.700, 0.833, 0.500, 0.000, 0.689, 0.000)
)

# Normalize the data
data$relative_abundance <- data$n / sum(data$n)

# Perform linear regression
model <- lm(diversity ~ relative_abundance, data=data)

# Print summary of the regression
summary(model)

# Clade Distribution 
data <- data.frame(
  country = c("A", "B", "C", "E", "F", "H", "I", "J"),
  n = c(35, 25, 14, 15, 10, 46, 6, 15),
  diversity = c(0.624, 0.637, 0.670, 0.848, 0.000, 0.740, 0.867, 0.590)
)

data$relative_abundance <- data$n / sum(data$n)
model <- lm(diversity ~ relative_abundance, data=data)
summary(model)
