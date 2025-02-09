sieve <- function(n) {
  if (n < 2) return()
  p <- rep(TRUE, n); p[1] <- FALSE
  for (i in 2:sqrt(n)) if (p[i]) p[seq(i^2, n, i)] <- FALSE
  which(p)
}
cat("Primes:", sieve(as.integer(readline("Enter n: "))), "\n")