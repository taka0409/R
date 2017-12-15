df <- read.table("data.csv",header = 1,sep = ",")
df <- df[complete.cases(df),]
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
