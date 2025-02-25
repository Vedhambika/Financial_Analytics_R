library(ggplot2)

### Petrol Price trend in Chennai
data= read.csv(file="D:/Rworks/data/petrol.csv")
head(data)
View(data)

summary(data)
sum(is.na(data))
str(data)
data$date=as.Date(data$date)
str(data)

### Filtering data for KA only
library(dplyr)
head(data %>% filter(state=="Karnataka"))
head(data %>% filter(state=="Karnataka")) %>% select(date,rate)     

data_tn=data %>% filter(state=="Karnataka") %>% select(date,rate) 
head(data_tn)

### Plotting the data 
ggplot(data=data_tn,aes(x=date,y=rate))+geom_point(col="blue",size=3)+ggtitle("Scatterplot: Petrol Prices in Chennai from 2002 to 2022")
ggplot(data=data_tn,aes(x=date,y=rate))+geom_line(col="red",size=1)+ggtitle("Scatterplot: Petrol Prices in Chennai from 2002 to 2022")

### Visualization of Economic indicators
data= read.csv(file="D:/Rworks/data/economic_data.csv")
head(data)
summary(data)
str(data)

data$Moodys_Rating=as.factor(data$Moodys_Rating)
levels(data$Moodys_Rating)
data$Economic_Outlook=as.factor(data$Economic_Outlook)
levels(data$Economic_Outlook)
table(data$Economic_Outlook)

ggplot(data=data,aes(x=Economic_Outlook))+geom_bar()
ggplot(data=data,aes(x=Economic_Outlook,fill=Economic_Outlook))+geom_bar()

#Plotting Per Capita GDP vs Trade Deficit
ggplot(data=data,aes(x=Trade_Deficit,y=Per_Capita_GDP))+geom_point()
ggplot(data=data,aes(x=Trade_Deficit,y=Per_Capita_GDP))+geom_point(size=3,col="Green",shape=56)
ggplot(data=data,aes(x=Trade_Deficit,y=Per_Capita_GDP,colour=Country))+geom_point(size=3,shape=15)
ggplot(data=data,aes(x=Economic_Outlook,fill=Economic_Outlook))+geom_bar()+coord_polar(theta = "y") + theme_void() + labs(title = "Economic outlook of countries in a Pie Chart ") +scale_fill_brewer(palette = "Set2")

ggplot(data=data,aes(x=Trade_Deficit,))+geom_bar()
