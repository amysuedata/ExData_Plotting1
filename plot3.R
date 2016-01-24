
png("plot3.png")

subdat<-read.table("household_power_consumption.txt", sep = ";", nrows=2880, skip = 66637, col.names = names(read.table("household_power_consumption.txt", header=TRUE, nrows = 1, sep = ";"))   )

subdat[,1] <- as.Date(subdat[,1],format="%d/%m/%Y")

datetime<-paste(subdat$Date, subdat$Time)
DT<-strptime(datetime, "%Y-%m-%d %H:%M:%S")
dat<-cbind(subdat, DT)

par(mar=c(6,6,4,4), mfrow=c(1,1))

plot(dat$DT, dat$Sub_metering_1, type="n", xlab = " ", ylab = "Energy sub metering", col="#424242")
lines(dat$DT, dat$Sub_metering_1, col="#424242")
lines(dat$DT, dat$Sub_metering_2, col="red")
lines(dat$DT, dat$Sub_metering_3, col="blue")

legend("topright", lty = c(1,1,1), lwd = c(1,1,1), col=c("#424242", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = .8)

dev.off()