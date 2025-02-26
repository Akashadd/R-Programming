data(airquality)
print(is.data.frame(airquality))
airquality <- airquality[order(airquality$Ozone, airquality$Temp), ]
airquality <- subset(airquality, select = -c(Solar.R, Wind))
print(head(airquality))