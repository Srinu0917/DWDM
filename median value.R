# Define the intervals and frequencies
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Calculate the total number of data points
total <- sum(frequencies)

# Calculate the median index
median_index <- total / 2

# Initialize a counter
count <- 0

# Loop through the intervals and frequencies
for (i in seq_along(intervals)) {
  count <- count + frequencies[i]
  if (count >= median_index) {
    # Calculate the median value
    median_value <- (as.numeric(strsplit(intervals[i], "-")[[1]][1]) + 
                       as.numeric(strsplit(intervals[i], "-")[[1]][2])) / 2
    break
  }
}

# Print the median value
print(median_value)

