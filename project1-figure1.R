# Filip Novotný - Explanatory Data Analysis - Course Project 1 - Figure 1
# October 2017
# “Individual household electric power consumption Data Set” 

rm(list = ls())

Data <- read.table('household_power_consumption.txt', header=T, sep=";", na.strings="?")
# set time variable
finalData <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

# Generating Plot 1
png("plot1.png", width = 480, height = 480)
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()