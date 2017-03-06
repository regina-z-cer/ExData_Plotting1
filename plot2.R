# plot2.R
# Construct a line graph and save it to a PNG file called plot2.png 
# with a width of 480 pixels and a height of 480 pixels.
íº—
# power<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
# dim(power)

# feb1_2<-subset(power, Date == "1/1/2007" | Date == "1/2/2007")

# print(feb1_2)

png(filename = "plot2.png")

line( 
     as.numeric(as.character(feb1_2$Global_active_power)),
     feb1_2$Date,
     ylab="Global Active Power (kilowatts)"
     
    )

dev.off()


