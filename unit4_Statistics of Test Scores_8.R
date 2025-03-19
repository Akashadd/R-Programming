scores <- c(85, 90, 78, 92, 88, 76, 95, 89, 84, 91, 87, 82, 90, 93, 88, 85, 77, 94, 80, 79)
summary_stats <- list(
  min = min(scores),
  max = max(scores),
  range = range(scores),
  variance = var(scores),
  sd = sd(scores)
)
print(summary_stats)