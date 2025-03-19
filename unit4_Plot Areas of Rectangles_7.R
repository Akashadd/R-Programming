lengths <- 1:10
widths <- 1:10
areas <- outer(lengths, widths, calculate_area)
image(lengths, widths, areas, col=heat.colors(10), xlab="Length", ylab="Width", main="Rectangle Areas")