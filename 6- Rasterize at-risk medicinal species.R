#Install packages
install.packages("fasterize") #a lot faster than rasterize but only works with sf polygons

#Load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(maptools)
library(raster)
library(fasterize)
library(sf)

# Set working directory
setwd("~/Documents/Honours/SpatialData/Ends")

#create a global 1 degree raster
gr <- raster(nrow = 360, ncol = 360, res = c(1,1))

## ------------------------------------------------------------------------------

## Rasterize each animal group of at risk species 

## ------------------------------------------------------------------------------

#MAMMALS
shp <- read_sf("EndmammalsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndmammalsADRast", format = "GTiff", overwrite = TRUE)

#REPTILES
shp <- read_sf("EndreptilesAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndreptilesADRast", format = "GTiff", overwrite = TRUE)

#AMPHIBIANS
shp <- read_sf("EndamphibsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndamphibsADRast", format = "GTiff", overwrite = TRUE)

#LOBSTERS
shp <- read_sf("EndlobsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndlobsADRast", format = "GTiff", overwrite = TRUE)

#BIRDS
shp <- read_sf("EndsbirdsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndbirdsADRast", format = "GTiff", overwrite = TRUE)

#FW PART 1
shp <- read_sf("Endfwpt1AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt1ADRast", format = "GTiff", overwrite = TRUE)

#FW PART 2
shp <- read_sf("Endfwpt2AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt2ADRast", format = "GTiff", overwrite = TRUE)

#FW PART 3
shp <- read_sf("Endfwpt3AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt3ADRast", format = "GTiff", overwrite = TRUE)

#FW PART 4
shp <- read_sf("Endfwpt4AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt4ADRast", format = "GTiff", overwrite = TRUE)

#FW PART 5
shp <- read_sf("Endfwpt5AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt5ADRast", format = "GTiff" , overwrite = TRUE)

#FW PART 6
shp <- read_sf("Endfwpt6AD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "Endfwpt6ADRast", format = "GTiff", overwrite = TRUE)

#SEACUCS
shp <- read_sf("EndseacucsAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndseacucsADRast", format = "GTiff", overwrite = TRUE)

#SHARKS RAYS CHIMAERAS
shp <- read_sf("EndssharksAD.shp")
rr <- fasterize(shp, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "EndsharksrayschimaADRast", format = "GTiff", overwrite = TRUE)

