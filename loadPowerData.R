loadPowerData <- function(){

filename <- "household_power_consumption.txt"
powerData_full <- read.csv(filename,
  header=T, 
  sep=';',
  na.strings="?",
  stringsAsFactors=F
)

powerData <- powerData [powerData_full$Date == '1/2/2007' | powerData_full$Date == '2/2/2007', ]

# set up DateTime
powerData$DateTime <- as.POSIXct(strptime(paste(powerData$Date,powerData$Time), "%d/%m/%Y %H:%M:%S"))
return(powerData)
}