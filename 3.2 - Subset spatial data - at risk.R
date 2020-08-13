# Supplementary code for Short et al. Part 3.2 - subset at-risk medicinal species spatial data
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

#Subset medicinal species to those at risk

## ------------------------------------------------------------------------------

## ------------------------------------------------------------------------------
# BIRDS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("birds.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskbirds.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# CONUS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("conus.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskconus.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# LOBSTERS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("lobs.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Risklobs.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# REPTILES
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("reptiles.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskreptiles.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# AMPHIBIANS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("amphibs.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskamphibs.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# MAMMALS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("mammals.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskmammals.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# SEACUCUMBERS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("seacucs.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskseacucs.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# SHARKS_RAYS_CHIMAERAS
## ------------------------------------------------------------------------------

#read in range polygon shapefile, change filepath
ranges <- read_sf("sharks.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Risksharks.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# FW_GROUPS
## ------------------------------------------------------------------------------

#PART1
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt1.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt1.shp", overwrite = TRUE)

#PART2
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt2.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt2.shp", overwrite = TRUE)

#PART3
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt3.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt3.shp", overwrite = TRUE)

#PART4
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt4.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt4.shp", overwrite = TRUE)

#PART5
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt5.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt5.shp", overwrite = TRUE)

#PART6
#read in range polygon shapefile, change filepath
ranges <- read_sf("fwpt6.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskfwpt6.shp", overwrite = TRUE)

## ------------------------------------------------------------------------------
# MARINEFISH
## ------------------------------------------------------------------------------

#PART1
#read in range polygon shapefile, change filepath
ranges <- read_sf("mfpt1.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskmfpt1.shp", overwrite = TRUE)

#PART2
#read in range polygon shapefile, change filepath
ranges <- read_sf("mfpt2.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskmfpt2.shp", overwrite = TRUE)

#PART3
#read in range polygon shapefile, change filepath
ranges <- read_sf("mfpt3.shp")

#select at-risk spp
atRisk <- ranges %>% dplyr::filter(`redlistCategoryTitle` == "Vulnerable" | `redlistCategoryTitle` == "Endangered" | `redlistCategoryTitle` == "Critically Endangered")
nrow(atRisk)

atRisk.sp <- as(atRisk, "Spatial")

shapefile(atRisk.sp, "~/Documents/SpatialData/AtRisk/Riskmfpt3.shp", overwrite = TRUE)
