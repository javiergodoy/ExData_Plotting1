source("load_data.R")

data <-loadData()


png(filename='plot3.png', width=480, height=480, units='px')
startDay = as.POSIXct(strftime("2007-02-01 00:00:00"))
endDay = as.POSIXct(strftime("2007-02-03 00:00:00"))
plot(data$Time,
     data$Sub_metering_3,
     col="red"
     xlim=c(startDay, endDay),
     xaxt="n",
     type="l",
     xlab="",
     ylab="Energy sub metering"
)
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")
dev.off()


