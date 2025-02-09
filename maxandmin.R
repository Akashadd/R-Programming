find_max_min <- function(vec) {
  max_value <- max(vec)  
  min_value <- min(vec)  
  return(list(max = max_value, min = min_value))
}
vec <- c(3, 7, 1, 9, 4, 2, 8)
result <- find_max_min(vec)
cat("Maximum value:", result$max, "\n")
cat("Minimum value:", result$min, "\n")