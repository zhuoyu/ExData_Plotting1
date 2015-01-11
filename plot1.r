# Plot 1
# load the data set
DT <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?" )
# subtract data for the specified two days
DT<- DT[DT$Date=="1/2/2007"|DT$Date=="2/2/2007",]
# specify output device
png("plot1.png", width=480, height=480)
# plot
hist(DT$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", ylab="February")
# close png device
dev.off()