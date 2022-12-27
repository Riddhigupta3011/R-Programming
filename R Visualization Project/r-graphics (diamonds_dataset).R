#install packages
install.packages("ggplot2")
library("ggplot2")
#data
data("diamonds")
#view data
View(diamonds)
#info
help("diamonds")
help("ggplot2")
#headers of data
names(diamonds)
#------------------------------DATA VISUALIZATION----------------------------------------








#################################  BAR CHART  ############################################

# plot the cut (quality) of diamonds (quality <-  cut <- fair,good,very good, premium, ideal)
ggplot(diamonds, aes(x = cut , fill = cut)) +
  theme_bw() +
  geom_bar()+
  labs(x = "Quality of Diamonds",
       y = "Diamonds Count",
       title = "Quality of the Diamonds")


# plot the color of diamonds (color<- D(best),E,F,G,H,I,J(WORST))
ggplot(diamonds, aes(x = color,fill = color)) +
  theme_bw()+
  geom_bar()+
  labs(x="Color of Diamonds",
       y="Diamonds Count",
       title="Color of the Diamonds")



# plot the clarity of diamonds (clarity <- l1(WORST), SL2,SL1,VS2,VS1,VVS2,VVS1,LF(BEST))
ggplot(diamonds, aes(x = clarity,fill = clarity)) +
  theme_bw()+
  geom_bar()+
  labs(x = "Clarity of Diamonds",
       y = "Diamonds Count",
       title = "Clarity of the Diamonds")




################################## BAR CHART WITH SEPERATED CLASS ###################



# plot quality of diamond with clarity
ggplot(diamonds, aes(x = cut,fill = clarity)) +
  theme_bw()+
  geom_bar()+
  labs(x="Quality of Diamonds",
       y="Diamonds Count",
       title="Quality of the Diamonds with clarity")


# plot quality of diamond with color
ggplot(diamonds, aes(x = cut,fill = color)) +
  theme_bw()+
  geom_bar()+
  labs(x="Quality of diamonds",
       y="Diamonds Count",
       title="Quality of the diamonds with color")





############################## HISTOGRAM WITH SEPERATED CLASS ########################

##histogram (price with cut of Diamonds )
ggplot(diamonds, aes(x=price, fill=cut)) + 
  geom_histogram()+
  labs(y="Count",
       x="Price",
       title="Price with cut of diamonds")



##histogram (price with color of Diamonds )
ggplot(diamonds, aes(x=price, fill=color)) + 
  geom_histogram()+
  labs(y="Count",
       x="Price",
       title="Price with color of diamonds")

##histogram (price with clarity of Diamonds )
ggplot(diamonds, aes(x=price, fill=clarity)) + 
  geom_histogram()+
  labs(y="Count",
       x="Price",
       title="Price with clarity of diamonds")


######################## histogram groups with seperated class ######################

#grouping by cut and color
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = color),
    position = "dodge"
  )+
  labs(title="grouping by cut and color")


#grouping by cut and clarity
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )+
  labs(title="Grouping by cut and clarity")




######################################## BOX PLOT ####################################

#box plot of price, grouped by cut
ggplot(data=diamonds, aes(x=cut, y=price)) + 
  theme_bw()+
  geom_boxplot(fill="light blue")+
  labs(y="price",
       x="cut",
       title="box plot of price,grouped by cut")




# box plot of price,grouped by color
ggplot(diamonds, aes(x = color, y = price)) +
  theme_bw()+
  geom_boxplot(fill="violet")+
  labs(y = "price",
       x = "color",
       title = "box plot of price,grouped by color")



# box plot of price,grouped by clarity
ggplot(diamonds, aes(x = clarity, y = price)) +
  theme_bw()+
  geom_boxplot(fill="light green")+
  labs(y = "price",
       x = "clarity",
       title = "box plot of price,grouped by clarity")


############################### DENSITY PLOT ###################################

#price grouped by cut 
ggplot(diamonds, aes(x=price))+
  geom_density(aes(fill=factor(cut)),alpha=0.5)+
  labs(title="price grouped by cut",
       x="price",
       fill="cut")



#price grouped by color
ggplot(diamonds, aes(x=price))+
  geom_density(aes(fill=factor(color)),alpha=0.5)+
  labs(title="price grouped by color",
       x="price",
       fill="color")


#price grouped by clarity
ggplot(diamonds, aes(x=price))+
  geom_density(aes(fill=factor(clarity)),alpha=0.5)+
  labs(title="Price grouped by clarity",
       x="price",
       fill="clarity")


############################## EXTRA ####################################


#histogram of values for price
ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="light blue", color="black") +
  labs(title="Histogram of Price Values")




#histogram represents the depth of diamonds 
ggplot(diamonds,aes(x=depth))+
  geom_histogram(fill="orange")





