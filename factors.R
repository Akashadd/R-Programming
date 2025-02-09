find_factors <- function(n) {
  factors <- numeric(0)  
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)  
    }
  }
  return(factors)  
}
n <- 36
factors_of_n <- find_factors(n)
cat("Factors of", n, "are:", factors_of_n, "\n")


