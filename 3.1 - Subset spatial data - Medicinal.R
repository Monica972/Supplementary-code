# Supplementary code for Short et al. Part 3.1 -subset medicinal species spatial data
# Monica Short, August 2020

#Set working directory
setwd("~/Documents/SpatialData")

#install required packages
install.packages("tidyverse", dependencies = TRUE)
install.packages("sf", dependencies = TRUE)
install.packages("rgdal", dependencies = TRUE)
install.packages("raster")
install.packages("sp")

#load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)

## ------------------------------------------------------------------------------

#Subset each species group to species used for medicine

## ------------------------------------------------------------------------------


#read in IUCN table
iucn <- read_csv("~/Documents/Short/Shortdata.csv")

iucn <- merge(threat, iucn, by="X1")

#alter colnames of iucn
iucn <- iucn %>% plyr::rename(c("scientific_name" = "SciName", "kingdom_name" = "Kingdom", "phylum_name" = "Phylum",
                                "class_name" = "Class", "order_name" = "Order", "family_name" = "Family", "genus_name" = "Genus"))

## ------------------------------------------------------------------------------
##CONUS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./CONUS/CONUS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
conus <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- conus %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/conus.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## LOBSTERS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./LOBSTERS/LOBSTERS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
lobs <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- lobs %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/lobs.shp", overwrite = TRUE)


## ------------------------------------------------------------------------------
## REPTILES
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./REPTILES/REPTILES.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
reptiles <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- reptiles %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/reptiles.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## AMPHIBIANS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./AMPHIBIANS/AMPHIBIANS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
amphibs <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- amphibs %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/amphibs.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## MAMMALS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./MAMMALS/MAMMALS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mammals <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- mammals %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/mammals.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## SEACUCUMBERS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./SEACUCUMBERS/SEACUCUMBERS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
seacucs <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- seacucs %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/seacucs.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## SHARKS_RAYS_CHIMAERAS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./SHARKS_RAYS_CHIMAERAS/SHARKS_RAYS_CHIMAERAS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
sharks <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- sharks %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/sharks.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## Birds
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("./Birds/Birds.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("SCINAME" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
birds <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- birds %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/birds.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## FW_GROUPS
## ------------------------------------------------------------------------------

#PART 1
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART1.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt1 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt1 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt1.shp", overwrite = TRUE)

#PART 2
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART2.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt2 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt2 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt2.shp", overwrite = TRUE)

#PART 3
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART3.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt3 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt3 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt3.shp", overwrite = TRUE)

#PART 4
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART4.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt4 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt4 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt4.shp", overwrite = TRUE)

#PART 5
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART5.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt5 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt5 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt5.shp", overwrite = TRUE)

#PART 6
#read in range polygon shapefile, change filepath
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART6.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt6 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- fwpt6 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/fwpt6.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
## MARINEFISH
## ------------------------------------------------------------------------------

#PART 1
#read in range polygon shapefile, change filepath
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART1.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt1 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- mfpt1 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/mfpt1.shp", overwrite = TRUE)

#PART 2
#read in range polygon shapefile, change filepath
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART2.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt2 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- mfpt2 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/mfpt2.shp", overwrite = TRUE)

#PART 3
#read in range polygon shapefile, change filepath
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART3.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName")) 

#drop kingdon, phylum, class, order_, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt3 <- inner_join(ranges, iucn, by = c("SciName"))

#select the `useTradeId: 30` == TRUE
medicine <- mfpt3 %>% dplyr::filter(`useTradeId: 30` == TRUE)
nrow(medicine)

#create spatial 
medicine.sp <- as(medicine, "Spatial")

#Write file of medicinal subset
shapefile(medicine.sp, "~/Documents/SpatialData/Subsets/mfpt3.shp", overwrite = TRUE)
