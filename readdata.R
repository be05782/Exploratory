#Prepare the data  if not already done
readdata<-function()
{
  i<<-1 #will indicate that the data was already loaded
  hpc<-read.csv(file="household_power_consumption.txt", sep=";", na.strings="?")
  #convert Date and time variables in class Date and Time 

  hpc$Time <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
  hpc$Date <- as.Date(as.character(hpc$Date), format="%d/%m/%Y", tz="CET")
  #filter data set on required dates 2007-02-01 and 2007-02-02
  hpcfeb<-subset(hpc, Date=="2007-02-01" | Date == "2007-02-02")
}
