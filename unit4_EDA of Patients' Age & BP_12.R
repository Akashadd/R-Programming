library(moments)
ages <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)
bp <- c(120, 125, 130, 135, 140, 145, 150, 155, 160, 165)
data <- data.frame(ages, bp)
eda <- data %>% summarise(
  mean_age = mean(ages), median_age = median(ages), mode_age = as.numeric(names(sort(table(ages), decreasing=TRUE)[1])),
  sd_age = sd(ages), skewness_age = skewness(ages), kurtosis_age = kurtosis(ages),
  mean_bp = mean(bp), median_bp = median(bp), mode_bp = as.numeric(names(sort(table(bp), decreasing=TRUE)[1])),
  sd_bp = sd(bp), skewness_bp = skewness(bp), kurtosis_bp = kurtosis(bp)
)
print(eda)