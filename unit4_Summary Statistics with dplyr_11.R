library(dplyr)
performance_scores <- c(85, 90, 78, 92, 88, 76, 95, 89, 84, 91, 87, 82, 90, 93, 88, 85, 77, 94, 80, 79)
data <- data.frame(scores = performance_scores)
summary_data <- data %>% summarise(
  mean = mean(scores), median = median(scores), min = min(scores), max = max(scores),
  range = max(scores) - min(scores), variance = var(scores), sd = sd(scores))
print(summary_data)