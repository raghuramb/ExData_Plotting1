source("loaddata.R")
plot2 <- function(plotdata=NULL) {
    if (is.null(plotdata)) {
        plotdata <- load_data()
    }
    png("plot2.png",width=480,height=480)
    plot(plotdata$Time, plotdata$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}