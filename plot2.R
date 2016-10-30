householdpowerconsumption <- subset(read.csv2("data/household_power_consumption.txt"), Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot2.png")
with(householdpowerconsumption, plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Global_active_power)), type ="l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
