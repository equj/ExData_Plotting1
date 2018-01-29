#this script is for Exploratory Data Analysis: Week 1

#library to work with date/time conversion
library(lubridate)

#column names
colNewnames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
#read the file into variable commData
electdata <- read.table("household_power_consumption.txt", col.names = colNewnames, na.strings = "?", sep = ";", skip = 66635, nrows = 2900)
electdata$datetime <- dmy(electdata$Date) + hms(electdata$Time)
#Plot 2: Single line plot
#opens PNG device
png(filename = "Plot2.png", width = 480, height = 480, units = "px")
plot(electdata$datetime, electdata$Global_active_power, type = "l", lty = 1, xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()


