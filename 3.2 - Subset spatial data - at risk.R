# Supplementary code for Short et al. Part 3.2 - rasterize at-risk medicinal species spatial data
# Monica Short, August 2020

# Set working directory
setwd("~/Documents/SpatialData/Subsets")

#load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)

## ------------------------------------------------------------------------------

          ## Repeat following code for each species group
## Birds, Conus, Lobsters, Reptiles, Marinefish, Amphibians, FW_Groups, Mammals, Seacucumbers, Sharks_Rays_Chimaeras

## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("birds.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskbirds.shp", overwrite = TRUE)
