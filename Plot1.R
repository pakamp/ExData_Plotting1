## read in data
consumption <- read.csv("./household_power_consumption.txt",sep=";",na.strings='?',header=TRUE,colClasses = c("character",rep("factor",1),rep("numeric",7)))
## select desired dates
selection<-consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]

## make a histogram
hist(selection$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")

## copy to the PNG file
dev.copy(png, file = "plot1.png", h=480, w=480)  
## close PNG device
dev.off() 