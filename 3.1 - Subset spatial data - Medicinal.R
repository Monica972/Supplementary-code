#Set working directory
setwd("~/Documents/SpatialData")

#install required packages
install.packages("tidyverse", dependencies = TRUE)
install.packages("sf", dependencies = TRUE)
install.packages("rgdal", dependencies = TRUE)

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
ranges <- read_sf("./CONUS/CONUS.shp")

#read in IUCN table
iucn <- read_csv("~/Documents/Short/Shortdata.csv")

iucn <- merge(threat, iucn, by="X1")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) #For birds, rename "SCINAME" = "SciName"

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#alter colnames of iucn
iucn <- iucn %>% plyr::rename(c("scientific_name" = "SciName", "kingdom_name" = "Kingdom", "phylum_name" = "Phylum",
                                "class_name" = "Class", "order_name" = "Order", "family_name" = "Family", "genus_name" = "Genus"))

#join ranges and iucn using the scientific name (SciName)
birds <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- birds %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/birds.shp", overwrite = TRUE)
