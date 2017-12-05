df <- read.table("data.csv",header = 1,sep = ",")
df <- df[complete.cases(df),]
tmp_time <- paste(paste(df$year, df$month, df$day, sep="-"),  
              paste(df$hour, 00, 00, sep=":"), sep = " ") 
tmp_time <- as.POSIXct(tmp_time)
df$timestamp <- tmp_time
df <- df[,c(1,2,6:14)]
x<-df$TEMP
y<-df$PRES
Sx<-0
Sy<-0
Sxy<-0
for(i in 1:length(x)){
	Sxy<-Sxy+(x[i]-mean(x))*(y[i]-mean(y))
	Sx<-Sx+(x[i]-mean(x))^2/length(x)
	Sy<-Sy+(y[i]-mean(y))^2/length(y)
}
Sxy<-Sxy/length(x)
Sxy/sqrt(Sx)/sqrt(Sy)
cor(x,y)
