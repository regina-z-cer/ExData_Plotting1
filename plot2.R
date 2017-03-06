# Exploratory Data Analysis
# March 2017

# plot2.R
# Construct a line graph and save it to a PNG file called plot2.png 
# with a width of 480 pixels and a height of 480 pixels.

 power<-read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
 #dim(power) #2075259       9

 #df[format(as.Date(row.names(df)), '%A')=='Monday',]
 #Thur<-power[format(as.Date(power$Date), '%A')=='Thursday',]
 #Fri<-power[format(as.Date(power$Date), '%A')=='Friday',]
 #Sat<-power[format(as.Date(power$Date), '%A')=='Saturday',]
 
# df[format(as.Date(power$Date)), '%A') == 'Thursday',]
 # choose only feb 1 and 2 of 2006
 feb1_2<-subset(power, Date == "1/2/2007" | Date == "2/2/2007")
 comboTime <-strptime(paste(feb1_2$Date, feb1_2$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
 usethis <- cbind(comboTime, feb1_2)

png(filename = "plot2.png")
plot(usethis$comboTime, usethis$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


