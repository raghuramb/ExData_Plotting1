source("loaddata.R")
plot4 <- function(plotdata=NULL) {
    if (is.null(plotdata)) {
        plotdata <- load_data()
    }
    png("plot4.png",width=480,height=480)
    par(mfrow=c(2,2))
    # 1
    plot(plotdata$Time, plotdata$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power")
    # 2
    plot(plotdata$Time, plotdata$Voltage, type="l",
         xlab="datetime", ylab="Voltage")
    # 3
    plot(plotdata$Time, plotdata$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(plotdata$Time, plotdata$Sub_metering_2, col="red")
    lines(plotdata$Time, plotdata$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1,
           box.lwd=0)
    # 4
    plot(plotdata$Time, plotdata$Global_reactive_power, type="n",
         xlab="datetime", ylab="Global_reactive_power")
    lines(plotdata$Time, plotdata$Global_reactive_power)
    
    dev.off()
}