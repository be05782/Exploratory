#read the file
source("readdata.R")
#the data is loaded only if not already done during the session
if(!exists(hpcfeb)) {hpcfeb<-readdata()}
png("plot2.png")
#Produce graph2 -line chart of Power by day
plot(hpcfeb$Time,hpcfeb$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)", type="l")
dev.off()