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
All_data <- read.csv('./All_data.csv',header = T,stringsAsFactors = F)



# GDP
GDP <- GDP %>% rename(Real.GDP =  X..Real.GDP) 
gdp <- GDP[,2]
date_GDP <- as.Date(GDP$DATE, format = "%m/%d/%Y")
gdp_xts <- xts(gdp, date_GDP)


# PMI
# PMI_xts
date_PMI <- as.Date(PMI$Date, format = "%m/%d/%Y")
PMI_Index <- PMI[,2:12]
PMI_xts <- xts(PMI_Index, date_PMI)

#NMI
# NMI
# nmi_xts
date_nmi <- as.Date(NMI$Month, format = "%m/%d/%Y")
nmi_Index <- NMI[,2:12]
nmi_xts <- xts(nmi_Index, date_nmi)

 
# UMCSI
date_umcsi <- as.Date(UMCSI$Date, format = "%m/%d/%Y")
umcsi <- UMCSI[,2:4]
umcsi_xts <- xts(umcsi, date_umcsi)


 
# Housing Starts
date_housing_starts <- as.Date(Housing.starts$Date, format = "%m/%d/%Y")
housing_starts <- Housing.starts[,2:4]
housing_starts_xts <- xts(housing_starts, date_housing_starts)

# S&P 500
date_sp_monthly <- as.Date(SP500.monthly$Date, format = "%m/%d/%Y")
price_sp_monthly <- SP500.monthly[,2]
sp_monthly_xts <- xts(price_sp_monthly, date_sp_monthly)


# All_data
date_all <- as.Date(All_data$Date, format = "%m/%d/%Y")
all_index <- All_data[,2:31]
all_xts <- xts(all_index, date_all)




