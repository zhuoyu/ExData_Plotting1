# Plot 3
# load the data set
DT <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?" )
# subtract data for the specified two days
DT<- DT[DT$Date=="1/2/2007"|DT$Date=="2/2/2007",]
# transform Time and Data format - Deleted
# DT$Time <- strptime(DT$Time,format="%H:%M:%S")
# DT$Date <- as.Date(DT$Date, format="%d/%m/%y")
# Combine Data and Time to form the complete DataTime variable
DT$DateTime <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
# specify output device
png("plot3.png", width=480, height=480)
# plot 
plot(DT$DateTime, DT$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(DT$DateTime, DT$Sub_metering_2, type="l", col="red")
lines(DT$DateTime, DT$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)
# close png device
dev.off()
