# Define the data vector
data <- c(200, 300, 400, 600, 1000)

# (a) Min-max normalization
min_max_normalized <- (data - min(data)) / (max(data) - min(data))
cat("Min-max normalized data: ", min_max_normalized, "\n")

# (b) Z-score normalization
z_score_normalized <- (data - mean(data)) / sd(data)
cat("Z-score normalized data: ", z_score_normalized, "\n")

