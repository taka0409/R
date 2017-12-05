df <- read.table("data.csv",header = 1,sep = ",")
df <- df[complete.cases(df),]
tmp_time <- paste(paste(df$year, df$month, df$day, sep="-"),  
              paste(df$hour, 00, 00, sep=":"), sep = " ") 
tmp_time <- as.POSIXct(tmp_time)
df$timestamp <- tmp_time
df <- df[,c(1,2,6:14)]
plot(df$timestamp,df$pm2.5,type = "l")
