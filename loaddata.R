load_data <- function () {
#Read the file
consumptiondata <- read.table("household_power_consumption.txt",sep=";",na.strings="?",
                              header=TRUE,colClasses="character")
consumptiondata$Date <- as.Date(consumptiondata$Date,format="%d/%m/%Y")
#filter to fetch the required data alone
reqdata <- consumptiondata[consumptiondata$Date == as.Date("2007-02-01") 
            | consumptiondata$Date == as.Date("2007-02-02"),]
#delete the original data 
rm(consumptiondata)
#convert to numeric 
reqdata$Global_active_power <- as.numeric(reqdata$Global_active_power)
reqdata$Time <- strptime(reqdata$Time,format="%H:%M:%S")
return(reqdata)
}