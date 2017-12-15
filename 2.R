
df <- read.table("data.csv",header = 1,sep = ",")
df <- df[complete.cases(df),]
df <- df[,c(6:9,11:13)]
for(i in 1:ncol(df)){
  hist(df[,i],xlab=colnames(df[i]),main=colnames(df[i]))
}
