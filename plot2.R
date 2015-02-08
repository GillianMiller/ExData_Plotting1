source("loadPowerData.R")
data <- loadPowerData()

png("plot2.png",
    width=480,
    height=480)

plot(data$Global_active_power~data$DateTime, 
     type="l",
     ylab="Global Active Power (kilowatts)", 
     xlab="")

dev.off()
