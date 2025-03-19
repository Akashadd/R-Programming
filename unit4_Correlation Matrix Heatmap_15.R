library(ggplot2)
library(reshape2)
dataset <- data.frame(A = rnorm(10), B = rnorm(10), C = rnorm(10), D = rnorm(10))
corr_matrix <- cor(dataset)
melted_corr <- melt(corr_matrix)
ggplot(data = melted_corr, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() + scale_fill_gradient2(low="blue", high="red", mid="white", midpoint=0, limit=c(-1,1)) + 
  theme_minimal() + ggtitle("Correlation Heatmap")