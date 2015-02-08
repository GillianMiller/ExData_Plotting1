source("loadPowerData.R")
data <- loadPowerData()

png("plot4.png",
    width=480,
    height=480)

# Plot by 4
# par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
par(mfrow=c(2,2))
## , mar=c(4,4,2,1), oma=c(2,2,2,2))

with(data, 
{
  # subplot 1
  plot(Global_active_power~DateTime, 
       type="l", 
       ylab="Global Active Power", 
       xlab="")
  # subplot 2
  plot(Voltage~DateTime, 
       type="l", 
       ylab="Voltage", 
       xlab="datetime")
  # subplot 3
  plot(Sub_metering_1~DateTime, 
       type="l",
       ylab="Energy sub metering", 
       xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
  legend("topright", bty='n',
       col=c("black", "red", "blue"), lty=1, lwd=1, cex=0.8,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       )
   # subplot 4
  plot(Global_reactive_power~DateTime,
     type="l", 
     ylab="Global_reactive_power",xlab="datetime")
}
)
dev.off()
