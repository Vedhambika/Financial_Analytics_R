#How to visualize data

data=read.csv(file="D:/Rworks/data/petrol.csv")
head(data)
view(data)
library(dplyr)
head(data%>% filter(city=="Delhi"))
head(data%>% filter(city=="Delhi") %>% select(date,rate))

data_tn=data %>% filter(city=="Delhi") %>% select(date,rate)    
head(data_tn)  

data_tn$date=as.Date(data_tn$date)

str(data_tn)
 
##plotting the data
plot(x=data_tn$date,y=data_tn$rate)

plot(data_tn,type='l',col='red',lwd=5,main="Time series:Delhi Forthnightly Petrol Price Trend 2002 to 2020")
sys