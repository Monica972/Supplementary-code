# Set working directory
setwd("~/Documents/SpatialData/Subsets")

#install required packages
install.packages("tidyverse", dependencies = TRUE)
install.packages("sf", dependencies = TRUE)
install.packages("rgdal", dependencies = TRUE)

#load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)

## ------------------------------------------------------------------------------

          ## Repeat following code for each species group
## Birds, Conus, Lobsters, Reptiles, Marinefish, Amphibians, FW_Groups, Mammals, Seacucumbers, Sharks_Rays_Chimaeras

## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("birds.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

library(raster)
atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/riskbirds.shp", overwrite = TRUE)
