# Exploratory Data Analysis
# March 2017

# plot3.R
# Construct a line graph and save it to a PNG file called plot2.png 
# with a width of 480 pixels and a height of 480 pixels.

 power<-read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
 #dim(power) #2075259       9

 # choose only feb 1 and 2 of 2006
 feb1_2<-subset(power, Date == "1/2/2007" | Date == "2/2/2007")
 comboTime <-strptime(paste(feb1_2$Date, feb1_2$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
 usethis <- cbind(comboTime, feb1_2)

png(filename = "plot3.png")
colors <- c("black", "red", "blue")

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(usethis$comboTime, usethis$Sub_metering_1, type="l", col=colors[1], xlab="", ylab="Energy sub metering")
lines(usethis$comboTime, usethis$Sub_metering_2, col=colors[2])
lines(usethis$comboTime, usethis$Sub_metering_3, col=colors[3])

legend("topright", legend=labels, lty="solid", col=colors)

#plot(usethis$comboTime, usethis$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()


