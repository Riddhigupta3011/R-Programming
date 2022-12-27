# INSTALL PACKAGES
install.packages("rlang")
install.packages("dplyr")
install.packages("viridis")
install.packages("hrbrthemes")
install.packages("tidyverse")

# LOAD PACKAGES
library(dplyr)
library(ggplot2)
library(tidyverse)
library(hrbrthemes)
library(tidyr)
library(viridis)


# LOAD DATASET
covid_data <- read.csv("D:/Downloads/WHO-COVID-19-global-data.csv")
covid_data

# View Dataset
View(covid_data)
 
# Create New dataset from the existing data by applying filter for thailand and palau
df <- covid_data%>% 
  filter(Country=='Thailand'|Country=='Palau')
View(df)

#################################        box plot       ################
#Boxplot of Thailand and palau for New-cases
ggplot(df,aes(x=Country, y=New_cases, fill=New_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-cases") +
  xlab("new_cases")


#Boxplot of Thailand and palau for New-deaths
ggplot(df,aes(x=Country, y=New_deaths, fill=New_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-deaths") +
  xlab("new_deaths")


#Boxplot of Thailand and palau for cumulative cases
ggplot(df,aes(x=Country, y=Cumulative_cases, fill=Cumulative_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")

#Boxplot of Thailand and palau for cumulative deaths
ggplot(df,aes(x=Country, y=Cumulative_deaths, fill=Cumulative_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")

# Histogram of Thailand and palau for cumulative deaths
ggplot(df,aes(x=Cumulative_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum()+
  ggtitle("Histogram
Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")


# Histogram of Thailand and palau for cumulative cases
ggplot(df,aes(x=Cumulative_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  ggtitle("Histogram
Thailand and palau for cumulative cases") +
  xlab("cumulative cases")


# Histogram of Thailand and palau for New_cases
ggplot(df,aes(x=New_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  ggtitle("Histogram
Thailand and palau for New_cases") +
  xlab("New_Cases")


# Histogram of Thailand and palau for New_deaths
ggplot(df,aes(x=New_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  ggtitle("Histogram
Thailand and palau for New_deaths") +
  xlab("New_deaths")

# LINE PLOT FOR NEW CASES
ggplot(df, aes(x=ï..Date_reported, y=New_cases, color = Country, group=1)) +
  geom_line()+
  xlab("Date reported")+
  ylab("New Cases")+
  ggtitle("LINE PLOT FOR NEW CASES")


# LINE PLOT FOR NEW deaths
ggplot(df, aes(x=ï..Date_reported, y=New_deaths, color = Country, group=1)) +
  geom_line()+
  xlab("date reported")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR NEW deaths")


# LINE PLOT FOR cumulative deaths
ggplot(df, aes(x=ï..Date_reported, y=Cumulative_deaths, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")


# LINE PLOT FOR cumulative cases
ggplot(df, aes(x=ï..Date_reported, y=Cumulative_cases, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")


#year -2020
# filter for year wise analysis
df2020 <- df %>%
  filter( ï..Date_reported < '2021-01-01')
View(df2020)

#year - 2021
df2021  <- df %>%
  filter(ï..Date_reported < '2022-01-01' & ï..Date_reported > '2020-12-31')

View(df2021)
#year - 2022

df2022  <- df %>%
  filter(ï..Date_reported > '2021-12-31')
View(df2022)


#################################        box plot       ################
#Boxplot of Thailand and palau for New-cases
ggplot(df2020,aes(x=Country, y=New_cases, fill=New_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-cases") +
  xlab("new_cases")


#Boxplot of Thailand and palau for New-deaths
ggplot(df2020,aes(x=Country, y=New_deaths, fill=New_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-deaths") +
  xlab("new_deaths")


#Boxplot of Thailand and palau for cumulative cases
ggplot(df2020,aes(x=Country, y=Cumulative_cases, fill=Cumulative_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")

#Boxplot of Thailand and palau for cumulative deaths
ggplot(df2020,aes(x=Country, y=Cumulative_deaths, fill=Cumulative_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")

# Histogram of Thailand and palau for cumulative deaths
ggplot(df2020,aes(x=Cumulative_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")


# Histogram of Thailand and palau for cumulative cases
ggplot(df2020,aes(x=Cumulative_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")


# Histogram of Thailand and palau for New_cases
ggplot(df2020,aes(x=New_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_cases") +
  xlab("New_Cases")


# Histogram of Thailand and palau for New_deaths
ggplot(df2020,aes(x=New_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_deaths") +
  xlab("New_deaths")

# LINE PLOT FOR NEW CASES
ggplot(df2020, aes(x=ï..Date_reported, y=New_cases, color = Country, group=1)) +
  geom_line()+
  xlab("Date reported")+
  ylab("New Cases")+
  ggtitle("LINE PLOT FOR NEW CASES")


# LINE PLOT FOR NEW deaths
ggplot(df2020, aes(x=ï..Date_reported, y=New_deaths, color = Country, group=1)) +
  geom_line()+
  xlab("date reported")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR NEW deaths")


# LINE PLOT FOR cumulative deaths
ggplot(df2020, aes(x=ï..Date_reported, y=Cumulative_deaths, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")


# LINE PLOT FOR cumulative cases
ggplot(df2020, aes(x=ï..Date_reported, y=Cumulative_cases, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")


#################################        box plot       ################
#Boxplot of Thailand and palau for New-cases
ggplot(df2021,aes(x=Country, y=New_cases, fill=New_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-cases") +
  xlab("new_cases")


#Boxplot of Thailand and palau for New-deaths
ggplot(df2021,aes(x=Country, y=New_deaths, fill=New_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-deaths") +
  xlab("new_deaths")


#Boxplot of Thailand and palau for cumulative cases
ggplot(df2021,aes(x=Country, y=Cumulative_cases, fill=Cumulative_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")

#Boxplot of Thailand and palau for cumulative deaths
ggplot(df2021,aes(x=Country, y=Cumulative_deaths, fill=Cumulative_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")

# Histogram of Thailand and palau for cumulative deaths
ggplot(df2021,aes(x=Cumulative_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")


# Histogram of Thailand and palau for cumulative cases
ggplot(df2021,aes(x=Cumulative_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")


# Histogram of Thailand and palau for New_cases
ggplot(df2021,aes(x=New_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_cases") +
  xlab("New_Cases")


# Histogram of Thailand and palau for New_deaths
ggplot(df2021,aes(x=New_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_deaths") +
  xlab("New_deaths")

# LINE PLOT FOR NEW CASES
ggplot(df2021, aes(x=ï..Date_reported, y=New_cases, color = Country, group=1)) +
  geom_line()+
  xlab("Date reported")+
  ylab("New Cases")+
  ggtitle("LINE PLOT FOR NEW CASES")


# LINE PLOT FOR NEW deaths
ggplot(df2021, aes(x=ï..Date_reported, y=New_deaths, color = Country, group=1)) +
  geom_line()+
  xlab("date reported")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR NEW deaths")


# LINE PLOT FOR cumulative deaths
ggplot(df2021, aes(x=ï..Date_reported, y=Cumulative_deaths, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")


# LINE PLOT FOR cumulative cases
ggplot(df2021, aes(x=ï..Date_reported, y=Cumulative_cases, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")





#################################        box plot       ################
#Boxplot of Thailand and palau for New-cases
ggplot(df2022,aes(x=Country, y=New_cases, fill=New_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-cases") +
  xlab("new_cases")


#Boxplot of Thailand and palau for New-deaths
ggplot(df2022,aes(x=Country, y=New_deaths, fill=New_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for New-deaths") +
  xlab("new_deaths")


#Boxplot of Thailand and palau for cumulative cases
ggplot(df2022,aes(x=Country, y=Cumulative_cases, fill=Cumulative_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")

#Boxplot of Thailand and palau for cumulative deaths
ggplot(df2022,aes(x=Country, y=Cumulative_deaths, fill=Cumulative_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")

# Histogram of Thailand and palau for cumulative deaths
ggplot(df2022,aes(x=Cumulative_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative deaths") +
  xlab("cumulative deaths")


# Histogram of Thailand and palau for cumulative cases
ggplot(df2022,aes(x=Cumulative_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for cumulative cases") +
  xlab("cumulative cases")


# Histogram of Thailand and palau for New_cases
ggplot(df2022,aes(x=New_cases, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_cases") +
  xlab("New_Cases")


# Histogram of Thailand and palau for New_deaths
ggplot(df2022,aes(x=New_deaths, fill= Country)) +
  geom_histogram(bins=20) +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Histogram of Thailand and palau for New_deaths") +
  xlab("New_deaths")

# LINE PLOT FOR NEW CASES
ggplot(df2022, aes(x=ï..Date_reported, y=New_cases, color = Country, group=1)) +
  geom_line()+
  xlab("Date reported")+
  ylab("New Cases")+
  ggtitle("LINE PLOT FOR NEW CASES")


# LINE PLOT FOR NEW deaths
ggplot(df2022, aes(x=ï..Date_reported, y=New_deaths, color = Country, group=1)) +
  geom_line()+
  xlab("date reported")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR NEW deaths")


# LINE PLOT FOR cumulative deaths
ggplot(df2022, aes(x=ï..Date_reported, y=Cumulative_deaths, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")+
  theme_bw()


# LINE PLOT FOR cumulative cases
ggplot(df2022, aes(x=ï..Date_reported, y=Cumulative_cases, color = Country, group=1)) +
  geom_line()+
  xlab(" Cases in 2020")+
  ylab("New deaths")+
  ggtitle("LINE PLOT FOR CUMULATIVE DEATHS")





#####################  3.  Region Specific    #######################################################
ggplot(covid_data, aes(x=WHO_region, fill=WHO_region)) + geom_bar() + 
  coord_flip()+
  theme_ipsum()

ggplot(covid_data, aes(x=WHO_region, fill=WHO_region)) + geom_bar() + 
  coord_polar()+
  theme_ipsum()

#################    4.  #######################################3

countrycomp<-covid_data%>% 
  filter(Country=='Thailand'| Country =='China'| Country == 'Palau')
View(countrycomp)


ggplot(countrycomp, aes(x = ï..Date_reported, y = New_deaths, color = Country, group = Country))+
  geom_line(size = 1.0)+
  scale_x_discrete(breaks=c(2020,2021,2022))+
  xlab("Year")+
  ylab("New Deaths in years")+
  ggtitle("Comparing New Covid Deaths for Thailand, Palau and China over the Years")+
  theme_ipsum()


ggplot(countrycomp, aes(x = ï..Date_reported, y = New_cases, color = Country, group = Country))+
  geom_line(size = 1.0)+
  scale_x_discrete(breaks=c(2020,2021,2022))+
  xlab("Year")+
  ylab("New Deaths in years")+
  ggtitle("Comparing New Covid cases for Thailand, Palau and China over the Years")+
  theme_ipsum()

ggplot(countrycomp, aes(x = ï..Date_reported, y = Cumulative_cases, color = Country, group = Country))+
  geom_line(size = 1.0)+
  scale_x_discrete(breaks=c(2020,2021,2022))+
  xlab("Year")+
  ylab("New Deaths in years")+
  ggtitle("Comparing cumulative cases for Thailand, Palau and China over the Years")+
  theme_ipsum()



ggplot(countrycomp, aes(x = ï..Date_reported, y = Cumulative_deaths, color = Country, group = Country))+
  geom_line(size = 1.0)+
  scale_x_discrete(breaks=c(2020,2021,2022))+
  xlab("Year")+
  ylab("New Deaths in years")+
  ggtitle("Comparing cumulative death for Thailand, Palau and China over the Years")+
  theme_ipsum()

#################################        box plot       ################
#Boxplot of Thailand , china and palau for New-cases
ggplot(countrycomp,aes(x=Country, y=New_cases, fill=New_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand, china and palau for New-cases") +
  xlab("new_cases")


#Boxplot of Thailand , china and palau for New-deaths
ggplot(countrycomp,aes(x=Country, y=New_deaths, fill=New_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand , china and palau for New-deaths") +
  xlab("new_deaths")


#Boxplot of Thailand , china and palau for cumulative cases
ggplot(countrycomp,aes(x=Country, y=Cumulative_cases, fill=Cumulative_cases, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand, china and palau for cumulative cases") +
  xlab("cumulative cases")

#Boxplot of Thailand , china and palau for cumulative deaths
ggplot(countrycomp,aes(x=Country, y=Cumulative_deaths, fill=Cumulative_deaths, color = Country)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("Boxplot of Thailand, china and palau for cumulative deaths") +
  xlab("cumulative deaths")
