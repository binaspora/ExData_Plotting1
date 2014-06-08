# Load data
data <- read.csv2("./data/small_data.txt", dec=".");

# Print the plot
png(file="plot1.png")
hist(data$Global_active_power, 
     main="Global Active Power", 
     col="red", 
     xlab="Global Active Power (kilowatts)"   
)

dev.off()