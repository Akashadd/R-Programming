#9. Exploratory data analysis on 'iris' dataset
print(dim(iris))
print(str(iris))
print(summary(iris))
print(sapply(iris[,1:4], sd))

# (ii) Mean and SD grouped by species
library(dplyr)
grouped_stats <- iris %>% group_by(Species) %>% summarise(across(everything(), list(mean = mean, sd = sd)))
print(grouped_stats)

# (iii) Quantiles of Sepal.Width and Sepal.Length
print(quantile(iris$Sepal.Width))
print(quantile(iris$Sepal.Length))

# (iv) Categorize Sepal.Length by quantile
iris$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), include.lowest = TRUE)
print(head(iris))

# (v) Average of numerical variables by Species and Sepal.Length.Cate
avg_values <- iris %>% group_by(Species, Sepal.Length.Cate) %>% summarise(across(where(is.numeric), mean))
print(avg_values)

# (vi) Average mean values by Species and Sepal.Length.Cate
avg_mean_values <- iris %>% group_by(Species, Sepal.Length.Cate) %>% summarise(across(where(is.numeric), mean))
print(avg_mean_values)

# (vii) Pivot table based on Species and Sepal.Length.Cate
library(tidyr)
pivot_table <- iris %>% count(Species, Sepal.Length.Cate)
print(pivot_table)
