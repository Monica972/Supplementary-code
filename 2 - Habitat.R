# Set working directory

setwd("~/Documents/Short")
getwd()

# Read data file
use.data<- read.csv("./Shortdata.csv")

# Remove any species duplicates
use_clean <- use.data[!duplicated(use.data),]
use_clean <- use_clean[!duplicated(use_clean$scientific_name),]

# Create data subset of medicinal use species 
med <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
med <- med[!duplicated(med$scientific_name),]
obsnum <- nrow(med)

#proportions of species that have known and unknown habitats
Unkn <- med[which(med$Terrestrial == "FALSE" & med$Freshwater == "FALSE" & med$Marine == "FALSE"),]
Unknnum <- nrow(Unkn)
Unknper <- round((Unknnum/obsnum * 100), dig = 2)

Know <- med[which(med$Terrestrial == "TRUE" | med$Freshwater == "TRUE" | med$Marine == "TRUE"),]
Knownum <- nrow(Know)
Knowper <- round((Knownum/obsnum * 100), dig = 2)

#Habitat type
#Terrestrial
TR <- med[which(med$Terrestrial == "TRUE"),]
TRnum <- nrow(TR)
TRper <-round((TRnum/Knownum * 100), dig=2)

#Freshwater
FW <- med[which(med$Freshwater == "TRUE"),]
FWnum <- nrow(FW)
FWper <-round((FWnum/Knownum * 100), dig=2)

#Marine
MA <- med[which(med$Marine == "TRUE"),]
MAnum <- nrow(MA)
MAper <-round((MAnum/Knownum * 100), dig=2)
