install.packages("dplyr")
library(dplyr)

data=read.csv(file = "unpopular_songs.csv", header = TRUE,sep = ",")
head(data)
summary(data)
nrow(data)
ncol(data)
dim(data)


#Третье и чётвортое наблюдение 
data[3:4,-1]

data[,1]

data$track_artist

data[["energy"]]


#Отбразим все пескни где танцевальность больше 0.5
data[data$danceability>0.5,]

subset(data,danceability>0.5)


#Вывод данных где танцевальность больше 0.5 и вывод только энергичности и ключа
subset(data,danceability>0.5,select=c(energy,key))


df1 <- data.frame(x = 5:8, y = LETTERS[5:8], z = c(T, F))
df1

df2<-data[1:4,1:3]
df2

cbind(df1,df2)


df1<-data[1:4,1:3]
df2<-data[5:8,1:3]
df1
df2

rbind(df1,df2)

#По ключу
df1<-data[1:4,1:3]
df1

df2<-data[1:4,3:5]
df2

merge(df1,df2,by="key")


#ПРимер 2.7
typeof(data)

str(data)
summary(data)
str(data)
data$popularity <- as.factor(data$popularity)
data$track_name <- as.factor(data$track_name)
data$mode <- as.factor(data$mode)

summary(data)

filter(data,popularity==9,danceability<0.5)

slice(data,3:7)

arrange(data,popularity)


arrange(data,desc(popularity))





select(data,popularity,energy )

rename(data,k=key)

data$k

distinct(data,key)


str(data)

mutate(data,rofl=danceability+energy)

transmute(data,rofl=danceability+energy)


str(data)
summarise(data,delay=mean(dep_delay,na.rm=TRUE))

sample_n(data,10)







start.time1<-Sys.time()
filter(data,popularity==9,danceability<0.5)
filter(data,popularity==8,danceability<0.5)
filter(data,popularity==7,danceability<0.5)
filter(data,popularity==6,danceability<0.5)
filter(data,popularity==5,danceability<0.5)
filter(data,popularity==4,danceability<0.5)
filter(data,popularity==3,danceability<0.5)
filter(data,popularity==2,danceability<0.5)
filter(data,popularity==1,danceability<0.5)
end.time1<-Sys.time()
time.taken1<-end.time1-start.time1
time.taken1


start.time2<-Sys.time()
data[data$popularity==9 |data$danceability<0,5,]
data[data$popularity==8 |data$danceability<0,5,]
data[data$popularity==7 |data$danceability<0,5,]
data[data$popularity==6 |data$danceability<0,5,]
data[data$popularity==5 |data$danceability<0,5,]
data[data$popularity==4 |data$danceability<0,5,]
data[data$popularity==3 |data$danceability<0,5,]
data[data$popularity==2 |data$danceability<0,5,]
data[data$popularity==1 |data$danceability<0,5,]
end.time2<-Sys.time()
time.taken2<-end.time2-start.time2
time.taken2


print(time.taken1)
print(time.taken2)


