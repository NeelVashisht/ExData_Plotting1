File <- "./household_power_consumption.txt"
d <- read.table(File, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- d[d$Date %in% c("1/2/2007","2/2/2007"), ]
gap <- as.numeric(data$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(gap, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
