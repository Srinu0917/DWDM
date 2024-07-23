# Define the age vector
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate the mean
mean_age <- mean(age)
print(paste("Mean: ", mean_age))

# Calculate the median
median_age <- median(age)
print(paste("Median: ", median_age))

# Calculate the mode
mode_age <- names(which.max(table(age)))
print(paste("Mode: ", mode_age))

# Comment on modality
if (length(unique(mode_age)) == 1) {
  print("Unimodal")
} else if (length(unique(mode_age)) == 2) {
  print("Bimodal")
} else {
  print("Multimodal")
}

# Calculate the midrange
midrange_age <- (min(age) + max(age)) / 2
print(paste("Midrange: ", midrange_age))

# Calculate the quartiles
quartiles_age <- quantile(age, c(0.25, 0.75))
print(paste("Q1: ", quartiles_age[1]))
print(paste("Q3: ", quartiles_age[2]))
