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

#Set working directory to where medicinal use subsets are
setwd("~/Documents/Honours/SpatialData/Subs")

#create a global 1 degree raster
gr <- raster(nrow = 360, ncol = 360, res = c(1,1))

## ------------------------------------------------------------------------------

## Rasterize each medicinal animal group - sf files created from subsetting 
#the spatial data to medicinal species (supplementary code 3.1)

## ------------------------------------------------------------------------------

#MAMMALS
shp <- read_sf("mammalsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
  writeRaster(rr, "mammalsADRast", format = "GTiff", overwrite = TRUE)

#CONUS
shp <- read_sf("conusAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
  writeRaster(rr, "conusADRast", format = "GTiff", overwrite = TRUE)
  
#REPTILES
  shp <- read_sf("reptilesAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "reptilesADRast", format = "GTiff", overwrite = TRUE)
  
#AMPHIBIANS
  shp <- read_sf("amphibsAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "amphibsADRast", format = "GTiff", overwrite = TRUE)
  
#LOBSTERS
  shp <- read_sf("lobsAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "lobsADRast", format = "GTiff", overwrite = TRUE)
  
#BIRDS
  shp <- read_sf("birdsAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "birdsADRast", format = "GTiff", overwrite = TRUE)
  
#FW PART 1
  shp <- read_sf("fwpt1AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt1ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 2
  shp <- read_sf("fwpt2AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt2ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 3
  shp <- read_sf("fwpt3AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt3ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 4
  shp <- read_sf("fwpt4AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt4ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 5
  shp <- read_sf("fwpt5AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt5ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 6
  shp <- read_sf("fwpt6AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt6ADRast", format = "GTiff", overwrite = TRUE)
  
  #SEACUCS
  shp <- read_sf("seacucsAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "seacucsADRast", format = "GTiff", overwrite = TRUE)
  
  #MARINE FISH PART 1
  shp <- read_sf("marinefishpt1AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt1ADRast", format = "GTiff", overwrite = TRUE)
  
  #MARINE FISH PART 2
  shp <- read_sf("marinefishpt2AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt2ADRast", format = "GTiff", overwrite = TRUE)
  
   #MARINE FISH PART 3
  shp <- read_sf("marinefishpt3AD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt3ADRast", format = "GTiff", overwrite = TRUE)
  
   #SHARKS RAYS CHIMAERAS
  shp <- read_sf("sharksAD.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "sharksrayschimaADRast", format = "GTiff", overwrite = TRUE)
