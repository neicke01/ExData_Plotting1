householdpowerconsumption <- subset(read.csv2("data/household_power_consumption.txt"), Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot3.png")
with(householdpowerconsumption, plot(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_1)), type ="l",
    xlab = "", ylab = "Energy sub metering"))
with(householdpowerconsumption, lines(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_2)), col = "red"))
with(householdpowerconsumption, lines(strptime(paste (Date, Time), "%d/%m/%Y %H:%M:%S"), as.numeric(paste(Sub_metering_3)), col = "blue"))
legend("topright", lty = "solid", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
