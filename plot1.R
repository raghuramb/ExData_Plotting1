source("loaddata.R")
plot1 <- function(plotdata=NULL) {
    if (is.null(plotdata)) { 
        plotdata <- load_data()
    }
    png("plot1.png",width=480,height=480)
    hist(plotdata$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    dev.off()
}