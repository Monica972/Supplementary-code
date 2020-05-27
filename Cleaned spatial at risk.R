## ------------------------------------------------------------------------------

## Set working directory, define data

## ------------------------------------------------------------------------------

# Set working directory
setwd("~/Documents/Honours/SpatialData/Subs")

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

## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("birdsAD.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

library(raster)
atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/Honours/SpatialData/Ends/endbirdsAD.shp", overwrite = TRUE)
