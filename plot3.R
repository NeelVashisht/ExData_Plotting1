File <- "./household_power_consumption.txt"
d <- read.table(File, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- d[d$Date %in% c("1/2/2007","2/2/2007") ,]
fulltime <- strptime(paste(data$Date, data$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 
#globalActivePower <- as.numeric(data$Global_active_power)
Sub_metering_1 <- as.numeric(data$Sub_metering_1)
Sub_metering_2 <- as.numeric(data$Sub_metering_2)
Sub_metering_3 <- as.numeric(data$Sub_metering_3)

png("plot3.png", width = 480, height = 480)
plot(fulltime, Sub_metering_1, type = "l", ylab = "Energy Sub metering", xlab = "")
lines(fulltime, Sub_metering_2, type = "l", col = "red")
lines(fulltime, Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()