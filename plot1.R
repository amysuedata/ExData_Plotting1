
png("plot1.png")


subdat<-read.table("household_power_consumption.txt", sep = ";", na.string = "?", nrows=2880, skip = 66637, col.names = names(read.table("household_power_consumption.txt", header=TRUE, nrows = 1, sep = ";"))   )

subdat[,1] <- as.Date(subdat[,1],format="%d/%m/%Y")



par(mar=c(6,6,4,4), mfrow=c(1,1))

hist(subdat$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()