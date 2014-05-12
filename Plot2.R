## read in data
consumption <- read.csv("./household_power_consumption.txt",sep=";",na.strings='?',header=TRUE,colClasses = c("character",rep("factor",1),rep("numeric",7)))
## select desired dates
selection<-consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]

## make a plot 2
plot(strptime(paste(selection$Date,selection$Time),"%d/%m/%Y %H:%M:%S"),selection$Global_active_power,ylab="Global Active Power (kilowatts)",xlab="",type="l")

## copy the plot to a PNG file
dev.copy(png, file = "plot2.png", h=480, w=480)  
## close PNG device
dev.off()  