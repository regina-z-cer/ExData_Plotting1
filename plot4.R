# Exploratory Data Analysis
# March 2017

# plot4.R
# Construct 4 graphs in 2 columns and 2 rows
# with a width of 480 pixels and a height of 480 pixels.

power<-read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
#dim(power) #2075259       9

# choose only feb 1 and 2 of 2006
feb1_2<-subset(power, Date == "1/2/2007" | Date == "2/2/2007")
comboTime <-strptime(paste(feb1_2$Date, feb1_2$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
usethis <- cbind(comboTime, feb1_2)

png(filename = "plot4.png")
colors <- c("black", "red", "blue")

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
# 2 rows 2 columns
par(mfrow=c(2,2))

plot(usethis$comboTime, usethis$Global_active_power, type="l",  ylab="Global Active Power")
plot(usethis$comboTime, usethis$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(usethis$comboTime, usethis$Sub_metering_1, type="l", ylab="Energy sub metering")

lines(usethis$comboTime, usethis$Sub_metering_2, type="l", col="red")
lines(usethis$comboTime, usethis$Sub_metering_3, type="l", col="blue")

legend("topright", bty="n", legend=labels, lty=1, col=colors)

plot(usethis$comboTime, usethis$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()


