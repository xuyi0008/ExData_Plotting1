setwd("~/Coursera/Chap 4 - Week 1/Dataset")

plot3_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
plot3_data1 <- subset(plot3_data, Date %in% c("1/2/2007","2/2/2007"))
plot3_data1$Date <- as.Date(plot3_data1$Date, format="%d/%m/%Y")
plot3_datetime <- paste(as.Date(plot3_data1$Date), plot3_data1$Time)
plot3_data1$Datetime <- as.POSIXct(plot3_datetime)

with(plot3_data1, {
  plot(Global_active_power~Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
  })