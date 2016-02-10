#Prepare the data  if not already done
#just to avoid to reload the data, test if dta wad loaded by another plotx.R program
source("readdata.R")
if(!exists("hpcfeb")) {hpcfeb<-readdata()}
#Produce graph1 -red histogram
png("plot1.png")
hist(hpcfeb$Global_active_power, xlab="Global active power(kilowatts)", ylab="Frequency", col="red", main="Global Active Power")
dev.off()
