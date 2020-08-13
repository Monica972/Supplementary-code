# Supplementary code for Short et al. Part 3.2 - subset at-risk medicinal species spatial data
# Monica Short, August 2020

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
setwd("~/Documents/SpatialData/Subsets")

#create a global 1 degree raster
gr <- raster(nrow = 360, ncol = 360, res = c(1,1))

## ------------------------------------------------------------------------------

## Rasterize each medicinal animal group - sf files created from subsetting data to medicinal species (supplementary code 3.1)

## ------------------------------------------------------------------------------

#MAMMALS
shp <- read_sf("mammals.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
  writeRaster(rr, "mammalsRast", format = "GTiff", overwrite = TRUE)

#CONUS
shp <- read_sf("conus.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
  writeRaster(rr, "conusRast", format = "GTiff", overwrite = TRUE)
  
#REPTILES
  shp <- read_sf("reptiles.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "reptilesRast", format = "GTiff", overwrite = TRUE)
  
#AMPHIBIANS
  shp <- read_sf("amphibs.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "amphibsRast", format = "GTiff", overwrite = TRUE)
  
#LOBSTERS
  shp <- read_sf("lobs.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "lobsRast", format = "GTiff", overwrite = TRUE)
  
#BIRDS
  shp <- read_sf("birds.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "birdsRast", format = "GTiff", overwrite = TRUE)
  
#FW PART 1
  shp <- read_sf("fwpt1.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt1Rast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 2
  shp <- read_sf("fwpt2.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt2Rast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 3
  shp <- read_sf("fwpt3.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt3ADRast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 4
  shp <- read_sf("fwpt4.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt4Rast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 5
  shp <- read_sf("fwpt5.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt5Rast", format = "GTiff", overwrite = TRUE)
  
  #FW PART 6
  shp <- read_sf("fwpt6.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "fwpt6Rast", format = "GTiff", overwrite = TRUE)
  
  #SEACUCS
  shp <- read_sf("seacucs.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "seacucsRast", format = "GTiff", overwrite = TRUE)
  
  #MARINE FISH PART 1
  shp <- read_sf("marinefishpt1.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt1Rast", format = "GTiff", overwrite = TRUE)
  
  #MARINE FISH PART 2
  shp <- read_sf("marinefishpt2.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt2Rast", format = "GTiff", overwrite = TRUE)
  
   #MARINE FISH PART 3
  shp <- read_sf("marinefishpt3.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "mfpt3Rast", format = "GTiff", overwrite = TRUE)
  
   #SHARKS RAYS CHIMAERAS
  shp <- read_sf("sharks.shp")
  rr <- fasterize(shp, gr, fun = "sum", background = 0)
  plot(rr)
  writeRaster(rr, "sharksrayschimaRast", format = "GTiff", overwrite = TRUE)
