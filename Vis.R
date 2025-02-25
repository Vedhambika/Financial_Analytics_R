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
data=read.csv(file="D:/Rworks/data/economic_data.csv")
head(data)
view(data)
summary(data)
str(data)

data$Moodys_Rating=as.factor(data$Moodys_Rating)
levels(data$Moodys_Rating)

data$Economic_Outlook=as.factor(data$Economic_Outlook)
levels(data$Economic_Outlook)

table(data$Economic_Outlook) #Returns the count of each level

barplot(table(data$Economic_Outlook),main="Barplot")
pie(table(data$Economic_Outlook),main="piechart")
barplot(table(data$Economic_Outlook),main="Barplot",horiz = T)
barplot(table(data$Economic_Outlook),main="Barplot: 50 Countries Economic Outlook",col=rainbow(3),border="dark green",ylab="Frequency",xlab="Economic Outlook")

plot(data$Trade_Deficit,data$Per_Capita_GDP)
cor(data$Trade_Deficit,data$Per_Capita_GDP)

library(ggplot2)
ggplot(data=data,aes(x=Trade_Deficit,y=Per_Capita_GDP))+geom_point()
ggplot(data=data,aes(x=Trade_Deficit,y=Per_Capita_GDP,colour=Country))+geom_point(size=3,shape=8)
library(dplyr)
data2 = data %>% filter(Country=="India"| Country=="United States" | Country=="China" | Country=="Pakistan")

ggplot(data=data,aes(x=Country,y=Moodys_Rating))+geom
