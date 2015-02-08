source("loadPowerData.R")
data <- loadPowerData()

png("plot3.png",
    width=480,
    height=480)

with(data, {
  plot(Sub_metering_1~DateTime, 
       type="l",
       ylab="Energy sub metering", 
       xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
  }
)
legend("topright", 
       col=c("black", "red", "blue"), lty=1, lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()