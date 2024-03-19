# Data Vaualization
# install Library
library(tidyverse)
data()
BOD
?BOD
ggplot(data=BOD,
       mapping = aes(x=Time,
                     y=demand))+
  geom_point(size=5)+
  geom_line(color="red")

# plot bar chart
ggplot(BOD,aes(Time,demand))+
  geom_point(size=3)+
  geom_line(color="red")

ggplot(mpg)+
  geom_bar(aes(x=class))
ggplot(mpg)+
  geom_bar(aes(x=class,fill='blue'))

?fill
#Pic chart for different product and unit sold
# Create data for the grph
x<-c(33,445,70,110)
label<-c('soup','detargent','oil','shampoo')

#plot the chart
pie(x,label)
pie(x,label,main='City Pie Chart',col=rainbow(length(x)))
piepercent<-round(100*x/sum(x),1)
pie(x,labels = piepercent,main = 'City pie chart',col = rainbow(length(x)))

# 3D piechart 
# Get the library
library(plotrix)
x<-c(33,45,70,110)
lbl<-c('soap','Detergent','Oil','shampoo','oil','Grocery')

# Plot the chart 
pie3D(x,labels=lbl,exlode=0.1,main='pie chart of courtries')

# Create data for the graph
v<-c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab='weight',col = 'green',border = 'red',xlim = c(10,40),ylim=c(0,5),breaks=5)

data("airquality")
view(airquality)

# use the plot function to draw scatter plots
# Plot a graph between the ozene & wind value
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,airquality$Wind,col='red')
plot(airquality$Ozone,airquality$Wind,type = 'h',col='blue')
plot(airquality)

# Assign labels to the plot
plot(airquality$Ozone,xlab='Ozone concentretion',ylab='No of instrance',main='ozone levels in Ny City',col='green')

#Histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R,main = 'Solar Raliation Values in air',xlab = 'sollar rad',col = 'red')

#Temperature
temperature<-airquality$Temp
hist(temperature)

#Histogram with labels
h<-hist(temperature,ylim = c(0,50))
text(h$mids,h$counts,labels=h$counts,abj=c(0.5,-0.5))

# Histogram with non-uniform width
temperature <- c(68, 70, 72, 75, 78, 80, 85, 90, 95, 100, 105)

hist(temperature,
     main='Maximum Daily Temperature at Lacivarlia Airport',
     xlab='Temperature in Degrees Fahrenheit',
     col='chocolate',
     border='brown', 
     breaks=c(40)
)
