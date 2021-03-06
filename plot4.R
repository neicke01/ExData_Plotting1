householdpowerconsumption <- subset(read.csv2("data/household_power_consumption.txt"), Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot4.png")
par(mfrow = c(2, 2))
with(householdpowerconsumption, {
     plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Global_active_power)), type ="l", xlab = "", ylab = "Global Active Power")
     plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Voltage)), type ="l", xlab = "datetime", ylab = "Voltage")
	 plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_1)), type ="l", xlab = "", ylab = "Energy sub metering")
	 lines(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_2)), col = "red")
	 lines(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_3)), col = "blue")
	 legend("topright", lty = "solid", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")
	 plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Global_reactive_power)), type ="l", xlab = "datetime", ylab = "Global_reactive_power")
})
dev.off()
