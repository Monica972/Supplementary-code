# Supplementary code for Short et al. Part 3.4 - rasterize at-risk medicinal species spatial data
# Monica Short, August 2020

# Set working directory
setwd("~/Documents/SpatialData/AtRisk")

#Install packages
install.packages("fasterize") #a lot faster than rasterize but only works with sf polygons
install.packages("raster")
install.packages("tidyverse")
install.packages("sf")
install.packages("sp")
install.packages("rdgal")

#Load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)
library(fasterize)

#create a global 1 degree raster
gr <- raster(nrow = 360, ncol = 360, res = c(1,1))

## ------------------------------------------------------------------------------

## Rasterize each animal group of at risk species - sf files created from 
#subsetting spatial data to at-risk medicinal species (supplementart code 3.2)

## ------------------------------------------------------------------------------

#MAMMALS
shp <- read_sf("Riskmammals.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RiskmammalsRast", format = "GTiff", overwrite = TRUE)

#REPTILES
shp <- read_sf("Riskreptiles.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RiskreptilesRast", format = "GTiff", overwrite = TRUE)

#AMPHIBIANS
shp <- read_sf("Riskamphibs.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RiskamphibsRast", format = "GTiff", overwrite = TRUE)

#LOBSTERS
shp <- read_sf("Risklobs.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RisklobsRast", format = "GTiff", overwrite = TRUE)

#BIRDS
shp <- read_sf("Risksbirds.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RiskbirdsRast", format = "GTiff", overwrite = TRUE)

#FW PART 1
shp <- read_sf("Riskfwpt1.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt1Rast", format = "GTiff", overwrite = TRUE)

#FW PART 2
shp <- read_sf("Riskfwpt2.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt2Rast", format = "GTiff", overwrite = TRUE)

#FW PART 3
shp <- read_sf("Riskfwpt3.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt3Rast", format = "GTiff", overwrite = TRUE)

#FW PART 4
shp <- read_sf("Riskfwpt4.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt4Rast", format = "GTiff", overwrite = TRUE)

#FW PART 5
shp <- read_sf("Riskfwpt5.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt5Rast", format = "GTiff" , overwrite = TRUE)

#FW PART 6
shp <- read_sf("Riskfwpt6.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Riskfwpt6Rast", format = "GTiff", overwrite = TRUE)

#SEACUCS
shp <- read_sf("Riskseacucs.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RiskseacucsRast", format = "GTiff", overwrite = TRUE)

#SHARKS RAYS CHIMAERAS
shp <- read_sf("Riskssharks.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "RisksharksrayschimaRast", format = "GTiff", overwrite = TRUE)
