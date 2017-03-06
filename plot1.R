# plot1.R
# Construct the plot and save it to a PNG file 
# with a width of 480 pixels and a height of 480 pixels.
# power<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
# dim(power)

# feb1_2<-subset(power, Date == "1/1/2007" | Date == "1/2/2007")

# print(feb1_2)

png(filename = "plot1.png")

hist(as.numeric(as.character(feb1_2$Global_active_power)), 
     col="red", 
     main="Global active power",
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency"
    )
dev.off()


