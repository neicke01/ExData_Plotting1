householdpowerconsumption <- subset(read.csv2("data/household_power_consumption.txt"), Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot1.png")
hist(as.numeric(paste(householdpowerconsumption$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
