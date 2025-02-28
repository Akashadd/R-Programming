data(mtcars)
mean_mpg <- mean(mtcars$mpg)
median_mpg <- median(mtcars$mpg)
mode_mpg <- as.numeric(names(sort(table(mtcars$mpg), decreasing = TRUE)[1]))