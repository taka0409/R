df <- read.table("data.csv",header = 1,sep = ",")
df <- df[complete.cases(df),]
pairs(df[c("pm2.5","DEWP","TEMP")])
