## read in data
consumption <- read.csv("./household_power_consumption.txt",sep=";",na.strings='?',header=TRUE,colClasses = c("character",rep("factor",1),rep("numeric",7)))
## select desired dates
selection<-consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]

## make plot 3
plot(strptime(paste(selection$Date,selection$Time),"%d/%m/%Y %H:%M:%S"),
     selection$Sub_metering_1,ylab="Energy sub metering",xlab="",type="l")
lines(strptime(paste(selection$Date,selection$Time),"%d/%m/%Y %H:%M:%S"),selection$Sub_metering_2,col="red")
lines(strptime(paste(selection$Date,selection$Time),"%d/%m/%Y %H:%M:%S"),selection$Sub_metering_3,col="blue")

## make a legend
legend(cex=0.65,"topright", lty=c(1,1,1), col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

## copy the plot to a PNG file
dev.copy(png, file = "plot3.png", h=480, w=480)  
## close PNG device
dev.off()  