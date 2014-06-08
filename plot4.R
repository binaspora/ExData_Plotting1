# Load data
data     <- read.csv2("./data/small_data.txt", dec=".");
data$utz <- paste(data$Date, data$Time, sep="-")

datetime <- strptime(data$utz, "%d/%m/%Y-%H:%M:%S")

png(file="plot4.png")
par(mfcol=c(2,2))

# Plot 1
plot(datetime, data$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power"
)

# Plot 2
plot(datetime, data$Sub_metering_1, 
     type="n", 
     xlab="", 
     ylab="Energy submetering"
)
points(datetime, data$Sub_metering_1, type="l", col="black")
points(datetime, data$Sub_metering_2, type="l", col="red")
points(datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","blue","red"),
       lwd=3
)

# Plot 3
Voltage <- data$Voltage
plot(datetime, Voltage, type="l")

#Plot 4
Global_reactive_power <- data$Global_reactive_power
plot(datetime, Global_reactive_power, type="l")
dev.off()