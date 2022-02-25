setwd("~/Coursera/Chap 4 - Week 1/Dataset")

plot2_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
plot2_data1 <- subset(plot2_data, Date %in% c("1/2/2007","2/2/2007"))
plot2_data1$Date <- as.Date(plot2_data1$Date, format="%d/%m/%Y")
plot2_datetime <- paste(as.Date(plot2_data1$Date), plot2_data1$Time)
plot2_data1$Datetime <- as.POSIXct(plot2_datetime)

with(plot2_data1, {
  plot(Global_active_power~Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
  })