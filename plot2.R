
png("plot2.png")

subdat<-read.table("household_power_consumption.txt", sep = ";", na.string = "?", nrows=2880, skip = 66637, col.names = names(read.table("household_power_consumption.txt", header=TRUE, nrows = 1, sep = ";"))   )

subdat[,1] <- as.Date(subdat[,1],format="%d/%m/%Y")

datetime<-paste(subdat$Date, subdat$Time)
DT<-strptime(datetime, "%Y-%m-%d %H:%M:%S")
dat<-cbind(subdat, DT)

par(mar=c(6,6,4,4), mfrow=c(1,1))


plot(dat$DT, dat$Global_active_power, type="l", xlab = " ", ylab = "Global Active Power (kilowatts)")


dev.off()