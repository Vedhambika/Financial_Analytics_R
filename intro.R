
#Basics of R

##Practice operations
5+8
99/100
?lm
getwd()
9+19
a=3
a
b=2
b
a+b
a=67
b=77
a*b^3
log(100,10)
x=2
y=2
x==y
x<y
x=33
y=99
x>=y
x<y
x!=y
a=(8==8)
a
a=60
b=30
F*20
T*20

T&T
T&F
F&F
F&T
F|T
F|F
T|F
T|T
v= c(7,8,9,1,2,3)
v
head(v)
tail(v)

v1=5:100
v1
head(v1)
tail(v1)

v2=4.8:9.6
v2

v3=seq(4,9,by=0.4)
v3

v4=seq(10,20,length=5)
v4

v5=seq(10,90,by=5)
v5
v5[2]
v5[1:7]

v6 = c(1,2,3)
v7 = c(7,6,8)
v6+v7
v6/v7
getwd()
8%%2
9%%2
5%%3
a=8
b=7
b%%a
a%%b
x=57
y=82
T&T
T&F
F&F
F&T
T|F
F|T
F|T
T|F
F|T
v = c(0,9,19,15,25,625)
v[3]
v1 = c(1,2,3)
v2 = c(2,2)
v1+v2
a = 2.9
str(a)
class(a)
n = 3
str(n)
class(n)
j="apple456"
str(j)
class(j)

x=3
y=4
z=x>y
z
class(z)

k=5:50
k
class(k)

s=c("Male","Female","Male")
s
class(s)
s1=as.factor(s)
s1
class(s1)

bonds=c("investment grade","junk bonds","masala bonds","inflation protected bonds","treasury bonds")
class(bonds)
bonds_2=as.factor(bonds)
bonds_2
class(bonds_2)

Company=c("RIL","ITC","SBI","Ashok Leyland","INOX","Zuari","Uttam sugar")
mcap_types = c("large","large","large","mid","mid","small","small")
mcap_type_2 = as.factor(mcap_types)

data=data.frame(Company,mcap_types,mcap_type_2)
data
View(data)

scores_tennis=c(66,82,54,98,67,46,21)
mean(scores_tennis)
max(scores_tennis)
min(scores_tennis)
sd(scores_tennis)
mode(scores_tennis)

data=read.csv(file="D:/Rworks/data/scores_fin_ac.csv")
data
head(data)

u=data$score
class(u)

hist(u)
