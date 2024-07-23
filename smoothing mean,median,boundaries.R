# Define the data vector
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# (a) Smoothing by bin mean
bin_size <- 5
binned_data <- cut(data, breaks = seq(min(data), max(data), by = bin_size))
mean_smoothed <- tapply(data, binned_data, mean)
cat("Smoothing by bin mean: ", mean_smoothed, "\n")

# (b) Smoothing by bin median
median_smoothed <- tapply(data, binned_data, median)
cat("Smoothing by bin median: ", median_smoothed, "\n")

# (c) Smoothing by bin boundaries
bin_boundaries <- seq(min(data), max(data), by = bin_size)
smoothed_data <- cut(data, breaks = bin_boundaries, labels = (bin_boundaries[-1] + bin_boundaries[-length(bin_boundaries)])/2)
smoothed_data <- as.numeric(as.character(smoothed_data))
cat("Smoothing by bin boundaries: ", smoothed_data, "\n")
