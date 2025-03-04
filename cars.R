

mtcars
head(mtcars)
?mtcars

data=mtcars

library(ggplot2)

ggplot(data=data,aes(x=hp,y=mpg))+geom_point(col='red')
ggplot(data=data,aes(x=wt,y=mpg))+geom_point(col='red')

mod=lm(data=data,formula=mpg~hp+wt)
summary(mod)

library(wooldridge)
ggplot(data=data,aes(x=am,y=mpg))+geom_point(col='red')

mod=lm(data=data,formula=mpg~am)
summary(mod)
