library(dplyr)
library(data.table)
library(xts)
library(dygraphs)
library(shinydashboard)
library(shiny)
library(DT)

PMI <- read.csv('./PMI.csv',header = T,stringsAsFactors = F)
NMI <- read.csv('./NMI.csv',header = T,stringsAsFactors = F)
UMCSI <- read.csv('./UMCSI.csv',header = T,stringsAsFactors = F)
GDP <- read.csv('./US_Real_GDP.csv',header = T,stringsAsFactors = F)
Housing.starts <- read.csv('./US_housing_starts.csv',header = T,stringsAsFactors = F)
SP500.daily <- read.csv('./SP500_daily.csv',header = T,stringsAsFactors = F)
SP500.weekly <- read.csv('./SP500_weekly.csv',header = T,stringsAsFactors = F)
SP500.monthly <- read.csv('./SP500_monthly.csv',header = T,stringsAsFactors = F)
All_data <- read.csv('./all_data.csv',header = T,stringsAsFactors = F)

date_PMI <- as.Date(PMI$Date, format = "%m/%d/%Y")
PMI_Index <- PMI[,2:12]
PMI_xts <- xts(PMI_Index, date_PMI)

# GDP
GDP <- GDP %>% rename(Real.GDP =  X..Real.GDP) 
gdp_xts

# PMI
PMI
PMI_xts

#NMI
NMI
nmi_xts

# UMCSI
UMCSI
umcsi_xts

# Housing Starts
Housing.starts
housing_starts_xts

# All_data
date_all <- as.Date(All_data$Date, format = "%m/%d/%Y")
all_index <- All_data[,2:31]
all_xts <- xts(all_index, date_all)
tail(all_xts)

combine = cbind.zoo(all_xts,gdp_xts)
combine1 = cbind.zoo(PMI_xts[,1],nmi_xts[,1],umcsi_xts[,1],housing_starts_xts[,1],gdp_xts[,1])


