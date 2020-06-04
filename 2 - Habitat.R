# Set working directory

setwd("~/Documents/Honours")
getwd()

# Read data file
use.data<- read.csv("./DATA/Shortdata.csv")

# Remove any species duplicates
use_clean <- use.data[!duplicated(use.data),]
use_clean <- use_clean[!duplicated(use_clean$scientific_name),]

# Create data subset of medicinal use species 
med <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
med <- med[!duplicated(med$scientific_name),]
obsnum <- nrow(med)

#Habitat type
#Terrestrial
TR <- med[which(med$Terrestrial == "TRUE"),]
TRnum <- nrow(TR)
TRper <-round((TRnum/obsnum * 100), dig=2)

#Freshwater
FW <- med[which(med$Freshwater == "TRUE"),]
FWnum <- nrow(FW)
FWper <-round((FWnum/obsnum * 100), dig=2)

#Marine
MA <- med[which(med$Marine == "TRUE"),]
MAnum <- nrow(MA)
MAper <-round((MAnum/obsnum * 100), dig=2)

