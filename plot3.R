# Load data
data     <- read.csv2("./data/small_data.txt", dec=".");
data$utz <- paste(data$Date, data$Time, sep="-")

png(file="plot3.png")
dates <- strptime(data$utz, "%d/%m/%Y-%H:%M:%S")
# Print the plot
plot(dates, data$Sub_metering_1, 
     type="n", 
     xlab="", 
     ylab="Energy submetering"
)
points(dates, data$Sub_metering_1, type="l", col="black")
points(dates, data$Sub_metering_2, type="l", col="red")
points(dates, data$Sub_metering_3, type="l", col="blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","blue","red"),
       lwd=3
)
dev.off()