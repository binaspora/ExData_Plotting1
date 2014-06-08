# Load data
data     <- read.csv2("./data/small_data.txt", dec=".");
data$utz <- paste(data$Date, data$Time, sep="-")

png(file="plot2.png")
dates <- strptime(data$utz, "%d/%m/%Y-%H:%M:%S")
# Print the plot
plot(dates, data$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)"
)
dev.off()