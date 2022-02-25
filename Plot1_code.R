setwd("~/Coursera/Chap 4 - Week 1/Dataset")

plot1_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
plot1_data1 <- subset(plot1_data, Date %in% c("1/2/2007","2/2/2007"))
plot1_data1$Date <- as.Date(plot1_data1$Date, format="%d/%m/%Y")
hist(plot1_data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
