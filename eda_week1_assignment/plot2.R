data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
head(data)
str(data)
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plt_data <- as.numeric(subset_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, plt_data, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()