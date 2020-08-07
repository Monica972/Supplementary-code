#Set working directory
setwd("~/Documents/SpatialData/Subsets")

#load required packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)
## ---------------------------------------------------------------------

#Combine medicinal use species rasters

## ---------------------------------------------------------------------
mammals <- raster("mammalsRast.tif")
conus <- raster("conusRast.tif")
amphibs <-raster("amphibsRast.tif")
lobs <- raster("lobsRast.tif")
reptiles <- raster("reptilesRast.tif")
seacucs <- raster("seacucsRast.tif")
fwpt1 <- raster("fwpt1Rast.tif")
fwpt2 <- raster("fwpt2Rast.tif")
fwpt3 <- raster("fwpt3Rast.tif")
fwpt4 <- raster("fwpt4Rast.tif")
fwpt5 <- raster("fwpt5Rast.tif")
fwpt6 <- raster("fwpt6Rast.tif")
mfpt1 <- raster("mfpt1Rast.tif")
mfpt2 <- raster("mfpt2Rast.tif")
mfpt3 <- raster("mfpt3Rast.tif")
sharksrayschima <- raster("sharksrayschimaRast.tif")

combinelayers <- merge(mammals, conus)
combinelayers2 <- merge(combinelayers, reptiles)
combinelayers3 <- merge(combinelayers2, seacucs)
combinelayers4 <- merge(combinelayers3, fwpt1)
combinelayers5 <- merge(combinelayers4, fwpt2)
combinelayers6 <- merge(combinelayers5, fwpt3)
combinelayers7 <- merge(combinelayers6, fwpt4)
combinelayers8 <- merge(combinelayers7, fwpt5)
combinelayers9 <- merge(combinelayers8, fwpt6)
combinelayers10 <- merge(combinelayers9, mfpt1)
combinelayers11 <- merge(combinelayers10, mfpt2)
combinelayers12 <- merge(combinelayers11, mfpt3)
combinelayers13 <- merge(combinelayers12, sharksrayschima)
combinelayers14 <- merge(combinelayers13, amphibs)
plot(combinelayers14)
writeRaster(combinelayers14, "CombinedRastAD", format = "GTiff", overwrite = TRUE)


## ---------------------------------------------------------------------

#Combine at-risk species rasters

## ---------------------------------------------------------------------

#Change working directory
setwd("~/Documents/SpatialData/AtRisk")

Riskmammals <- raster("RiskmammalsRast.tif")
Riskamphibs <-raster("RiskamphibsRast.tif")
Riskreptiles <- raster("RiskreptilesRast.tif")
Riskseacucs <- raster("RiskseacucsRast.tif")
Riskfwpt1 <- raster("Riskfwpt1Rast.tif")
Riskfwpt2 <- raster("Riskfwpt2Rast.tif")
Riskfwpt3 <- raster("Riskfwpt3Rast.tif")
Riskfwpt4 <- raster("Riskfwpt4Rast.tif")
Riskfwpt5 <- raster("Riskfwpt5Rast.tif")
Riskfwpt6 <- raster("Riskfwpt6Rast.tif")
Riskmfpt1 <- raster("Riskmfpt1Rast.tif")
Riskmfpt2 <- raster("Riskmfpt2Rast.tif")
Riskmfpt3 <- raster("Riskmfpt3Rast.tif")
Risksharksrayschima <- raster("RisksharksrayschimaRast.tif")

combinelayersRisk <- merge(Riskmammals, Riskamphibs)
combinelayers2Risk <- merge(combinelayersRisk, Riskreptiles)
combinelayers3Risk <- merge(combinelayers2Risk, Riskseacucs)
combinelayers4Risk <- merge(combinelayers3Risk, Riskfwpt1)
combinelayers5Risk <- merge(combinelayers4Risk, Riskfwpt3)
combinelayers6Risk <- merge(combinelayers5Risk, Riskfwpt4)
combinelayers7Risk <- merge(combinelayers6Risk, Riskfwpt5)
combinelayers8Risk <- merge(combinelayers7Risk, Riskfwpt6)
combinelayers9Risk <- merge(combinelayers8Risk, Risksharksrayschima)
plot(combinelayers9Risk)

writeRaster(combinelayers9Risk, "CombinedRiskRast", format = "GTiff", overwrite = TRUE)

#Check rasters
setwd("~/Documents/SpatialData/Subsets")
comboAD <- raster("CombinedRastAD.tif")

setwd("~/Documents/SpatialData/AtRisk")
RiskcomboAD <-raster("CombinedRiskRast.tif")

plot(comboAD)
plot(RiskcomboAD)
