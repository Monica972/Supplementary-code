#Set working directory
setwd("~/Documents/Honours/SpatialData/Subs")

#load required packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)
## ---------------------------------------------------------------------

               #Combine medicinal use species rasters

## ---------------------------------------------------------------------
mammals <- raster("mammalsADRast.tif")
conus <- raster("conusADRast.tif")
amphibs <-raster("amphibsADRast.tif")
lobs <- raster("lobsADRast.tif")
reptiles <- raster("reptilesADRast.tif")
seacucs <- raster("seacucsADRast.tif")
fwpt1 <- raster("fwpt1ADRast.tif")
fwpt2 <- raster("fwpt2ADRast.tif")
fwpt3 <- raster("fwpt3ADRast.tif")
fwpt4 <- raster("fwpt4ADRast.tif")
fwpt5 <- raster("fwpt5ADRast.tif")
fwpt6 <- raster("fwpt6ADRast.tif")
mfpt1 <- raster("mfpt1ADRast.tif")
mfpt2 <- raster("mfpt2ADRast.tif")
mfpt3 <- raster("mfpt3ADRast.tif")
sharksrayschima <- raster("sharksrayschimaADRast.tif")

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
setwd("~/Documents/Honours/SpatialData/Ends")

endmammals <- raster("EndmammalsADRast.tif")
endamphibs <-raster("EndamphibsADRast.tif")
endreptiles <- raster("EndreptilesADRast.tif")
endseacucs <- raster("EndseacucsADRast.tif")
endfwpt1 <- raster("Endfwpt1ADRast.tif")
endfwpt2 <- raster("Endfwpt2ADRast.tif")
endfwpt3 <- raster("Endfwpt3ADRast.tif")
endfwpt4 <- raster("Endfwpt4ADRast.tif")
endfwpt5 <- raster("Endfwpt5ADRast.tif")
endfwpt6 <- raster("Endfwpt6ADRast.tif")
endmfpt1 <- raster("Endmfpt1ADRast.tif")
endmfpt2 <- raster("Endmfpt2ADRast.tif")
endmfpt3 <- raster("Endmfpt3ADRast.tif")
endsharksrayschima <- raster("EndsharksrayschimaADRast.tif")

combinelayersend <- merge(endmammals, endamphibs)
combinelayers2end <- merge(combinelayersend, endreptiles)
combinelayers3end <- merge(combinelayers2end, endseacucs)
combinelayers4end <- merge(combinelayers3end, endfwpt1)
combinelayers5end <- merge(combinelayers4end, endfwpt3)
combinelayers6end <- merge(combinelayers5end, endfwpt4)
combinelayers7end <- merge(combinelayers6end, endfwpt5)
combinelayers8end <- merge(combinelayers7end, endfwpt6)
combinelayers9end <- merge(combinelayers8end, endsharksrayschima)
plot(combinelayers9end)

writeRaster(combinelayers9end, "CombinedEndADRast", format = "GTiff", overwrite = TRUE)

#Check rasters
comboAD <- raster("CombinedRastAD.tif")
endcomboAD <-raster("CombinedEndADRast.tif")

plot(comboAD)
plot(endcomboAD)
