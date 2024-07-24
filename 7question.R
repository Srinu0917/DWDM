pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_pencils <- mean(pencils)

median_pencils <- median(pencils)

get_mode <- function(x) 
{
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_pencils <- get_mode(pencils)

print(paste("Mean:", mean_pencils))
print(paste("Median:", median_pencils))
print(paste("Mode:", mode_pencils))
