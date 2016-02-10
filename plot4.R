#read the file
source("readdata.R")
#load the data if not already done by another plotx.R program
if(!exists("hpcfeb")) {hpcfeb<-readdata()}
png("plot4.png")
#Produce graph4 -line charts of Sub_metering1,2 and 3 by day
Sys.setlocale("LC_ALL", "English") 
#Prepare "table" that will contain the 4 graphs
#1st graph and 3 graphs are produced by plot1 and plot3
par(mfrow=c(2,2))
#1st graph 
plot(hpcfeb$Time,hpcfeb$Global_active_power,xlab="",ylab="Global Active Power", type="l")
#2d graph
plot(hpcfeb$Time,hpcfeb$Voltage,xlab="",ylab="Voltage", type="l")
#3d graph 
#start with sub metering 1...
plot(hpcfeb$Time,hpcfeb$Sub_metering_1 ,xlab="",ylab="Energy Sub metering", type="l")
#and add sub metering 2 and 3 in red and blue via points command
points(hpcfeb$Time, hpcfeb$Sub_metering_2, type="l",col="red")
points(hpcfeb$Time, hpcfeb$Sub_metering_3, type="l",col="blue")
#and add the legend
legend("topright",lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#4th graph
with(hpcfeb, plot(Time,Global_reactive_power,xlab="datetime", type="l"))
dev.off()