## Exploratory Data Analysis Course Project Code Problem 1

## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

nei_pm_1999 <- subset(NEI$Emissions, NEI$year == 1999)
nei_pm_2002 <- subset(NEI$Emissions, NEI$year == 2002)
nei_pm_2005 <- subset(NEI$Emissions, NEI$year == 2005)
nei_pm_2008 <- subset(NEI$Emissions, NEI$year == 2008)

sum_1999 <- sum(nei_pm_1999, na.rm = TRUE)
sum_2002 <- sum(nei_pm_2002, na.rm = TRUE)
sum_2005 <- sum(nei_pm_2005, na.rm = TRUE)
sum_2008 <- sum(nei_pm_2008, na.rm = TRUE)

nei_yr_1999 <- 1999
nei_yr_2002 <- 2002
nei_yr_2005 <- 2005
nei_yr_2008 <- 2008

timevec <-c(nei_yr_1999,nei_yr_2002,nei_yr_2005,nei_yr_2008)
emisvec <-c(sum_1999,sum_2002,sum_2005,sum_2008)
vec <- cbind(timevec, emisvec)
png(file="/Users/nicholashitt/Dropbox/My Mac (Nicholas’s MacBook Pro)/Documents/R/Coursera Class/exdata-data-NEI_data/plot1.png",
    width=480, height=480)
plot(vec[,1], vec[,2], type = "o", xlab = "Year", ylab = "PM2.5 Emissions")
title("Total US PM2.5 Emissions by Year")


