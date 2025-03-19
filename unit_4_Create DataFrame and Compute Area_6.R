calculate_area <- function(length = 1, width = 1) {
  return(length * width)
}

lengths <- c(5, NA, 7, 8, NA, 6)
widths <- c(4, 5, NA, 6, 7, NA)

data <- data.frame(length = ifelse(is.na(lengths), 1, lengths),
                   width = ifelse(is.na(widths), 1, widths))
data$area <- mapply(calculate_area, data$length, data$width)
print(data)