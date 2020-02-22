File <- "./household_power_consumption.txt"
d <- read.table(File, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- d[d$Date %in% c("1/2/2007","2/2/2007"), ]

fulltime <- strptime(paste(data$Date, data$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(data$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(fulltime, gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()