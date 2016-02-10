#read the file
source("readdata.R")
if(!exists("hpcfeb")) {hpcfeb<-readdata()}
png("plot3.png")
#Produce graph3 -line charts of Sub_metering1,2 and 3 by day
Sys.setlocale("LC_ALL", "English") 
#start with sub metering 1...
plot(hpcfeb$Time,hpcfeb$Sub_metering_1 ,xlab="",ylab="Energy Sub metering", type="l")
#and add sub metering 2 and 3 in red and blue via points command
points(hpcfeb$Time, hpcfeb$Sub_metering_2, type="l",col="red")
points(hpcfeb$Time, hpcfeb$Sub_metering_3, type="l",col="blue")
#and add the legend
legend("topright",lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
