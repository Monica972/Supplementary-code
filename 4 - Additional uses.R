# Set working directory
setwd("~/Documents/Honours")
getwd()

# Read in data
use.data<- read.csv("./DATA/Shortdata.csv")

#Remove any duplicated species
use_clean <- use.data[!duplicated(use.data),]
use_clean <- use_clean[!duplicated(use_clean$scientific_name),]

# Filter to medicinal use species
med <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
obsnum <- nrow(med)

# Medicinal species with other uses
# Medicinal use only
Medonly <- med[which(med$useTradeId..19 =="FALSE" & med$useTradeId..23 == "FALSE" & med$useTradeId..23 == "FALSE" & med$useTradeId..27 == "FALSE" & med$useTradeId..20 =="FALSE" & med$useTradeId..32 =="FALSE" & med$useTradeId..24 =="FALSE" & med$useTradeId..29 =="FALSE" & med$useTradeId..33 =="FALSE" & med$useTradeId..25 =="FALSE" & med$useTradeId..28 =="FALSE" & med$useTradeId..22 =="FALSE" & med$useTradeId..21 =="FALSE" & med$useTradeId..35 =="FALSE" &  med$useTradeId..36 =="FALSE" & med$useTradeId..34 =="FALSE" & med$useTradeId..31 =="FALSE"),]
Medonlynum <- nrow(Medonly)
Medonlyper <-round((Medonlynum/obsnum * 100), digits = 2)

# Additional use of human food
foodm <- med[which(med$useTradeId..19=="TRUE"),]
foodmnum <- nrow(foodm)
foodmPer <-round((foodmnum/obsnum * 100), digits = 2)

# Additional use of pets/display animals
petm <- med[which(med$useTradeId..23 =="TRUE"),]
petmnum <- nrow(petm)
petmPer <-round((petmnum/obsnum * 100), digits = 2)

# Additional use of Establishing ex situ production
exsitm <- med[which(med$useTradeId..26 =="TRUE"),]
exsitmnum<- nrow(exsitm)
exsitmPer <-round((exsitmnum/obsnum * 100), digits = 2)

# Other additional use 
otherm <- med[which(med$useTradeId..27 =="TRUE"),]
othermnum <- nrow(otherm)
othermPer <-round((othermnum/obsnum * 100), digits = 2)

# Additional use of Wearing apparel, accessories
wearm <- med[which(med$useTradeId..20 =="TRUE"),]
wearmnum <- nrow(wearm)
wearmPer <-round((wearmnum/obsnum * 100), digits = 2)

# Additional use of Manufacturing chemicals
chemm <- med[which(med$useTradeId..32 =="TRUE"),]
chemmnum <- nrow(chemm)
chemmPer <-round((chemmnum/obsnum * 100), digits = 2)

# Additional use of Research
edum <- med[which(med$useTradeId..24 =="TRUE"),]
edumnum <- nrow(edum)
edumPer <-round((edumnum/obsnum * 100), digits = 2)

# Additional use of Animal food
animfood <- med[which(med$useTradeId..29 =="TRUE"),]
animfoodnum <- nrow(animfood)
animfoodPer <-round((animfoodnum/obsnum * 100), digits = 2)

# Additional use of Other chem
OthmChem <- med[which(med$useTradeId..33 =="TRUE"),]
OthmChemnum <- nrow(OthmChem)
OthmChemPer <-round((OthmChemnum/obsnum * 100), digits = 2)

# Additional use of Sport hunting/specimen collection
sportm <- med[which(med$useTradeId..25 =="TRUE"),]
sportmnum <- nrow(sportm)
sportmPer <-round((sportmnum/obsnum * 100), digits = 2)

# unknown additional use
UKm <- med[which(med$useTradeId..28 =="TRUE"),]
UKmnum <- nrow(UKm)
UKmPer <-round((UKmnum/obsnum * 100), digits = 2)

# Additional use of Handicrafts, jewellery
jewelm <- med[which(med$useTradeId..22 =="TRUE"),]
jewelmnum <- nrow(jewelm)
jewelmPer <-round((jewelmnum/obsnum * 100), digits = 2)

# Additional use of Other household goods
housem <- med[which(med$useTradeId..21 =="TRUE"),]
housemnum <- nrow(housem)
housemPer <-round((housemnum/obsnum * 100), digits = 2)

# Additional use of Fibre
fibrem <- med[which(med$useTradeId..35 =="TRUE"),]
fibremnum <- nrow(fibrem)
fibremPer <-round((fibremnum/obsnum * 100), digits = 2)

# Additional use of Construction or structural materials
constm <- med[which(med$useTradeId..36 =="TRUE"),]
constmnum <- nrow(constm)
constmPer <-round((constmnum/obsnum * 100), digits = 2)

# Additional use of Fuels
fuelm <- med[which(med$useTradeId..34 =="TRUE"),]
fuelmnum <- nrow(fuelm)
fuelmPer <-round((fuelmnum/obsnum * 100), digits = 2)

# Additional use of Poisons
poisonm <- med[which(med$useTradeId..31 =="TRUE"),]
poisonmnum <- nrow(poisonm)
poisonmPer <-round((poisonmnum/obsnum * 100), digits = 2)
