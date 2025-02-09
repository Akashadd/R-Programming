fib <- c(0, 1)
for (i in 3:10) {
  fib[i] <- fib[i - 1] + fib[i - 2]
}
print(fib)