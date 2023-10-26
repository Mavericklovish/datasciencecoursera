data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
head(data)
str(data)
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
plt_data <- as.numeric(subset_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(plt_data, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()