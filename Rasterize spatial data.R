## ------------------------------------------------------------------------------

                  ## Set working directory, define data

## ------------------------------------------------------------------------------

# Set working directory

setwd("~/Documents/Honours")
getwd()

# Install packages to be used
install.packages("tidyverse", dependencies = TRUE)
install.packages("sf", dependencies = TRUE)
install.packages("rgdal", dependencies = TRUE)
install.packages("RColorBrewer")
install.packages("colorRamps")
install.packages("sp")
install.packages("maptools")
install.packages("raster")
install.packages("fasterize")
install.packages("gridExtra")

#load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(maptools)
library(raster)
library(fasterize)
library(RColorBrewer)
library(colorRamps)
library(gridExtra)

#create a global 1 degree raster
gr <- raster(nrow = 360, ncol = 360, res = c(1,1))

#read in IUCN table
iucn <- read_csv("~/Documents/Honours/DATA/AnalysisData.csv")

#alter colnames of iucn
iucn <- iucn %>% plyr::rename(c("scientific_name" = "SciName", "kingdom_name" = "Kingdom", "phylum_name" = "Phylum",
                                "class_name" = "Class", "order_name" = "Order", "family_name" = "Family", "genus_name" = "Genus"))

## ------------------------------------------------------------------------------

## Rasterize each animal group

## ------------------------------------------------------------------------------
#change working directory
setwd("~/Documents/Honours/SpatialData")

#read in range polygon shapefile, change filepath
ranges <- read_sf("./MAMMALS/MAMMALS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus because we get them from the iucn data
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mammals <- inner_join(ranges, iucn, by = c("SciName"))

#MAMMALS
st_crs(mammals)
rr <- fasterize(mammals, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "mammalsALLRast", format = "GTiff", overwrite = TRUE)

#CONUS
ranges <- read_sf("./CONUS/CONUS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
conus <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(conus, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "conusALLRast", format = "GTiff", overwrite = TRUE)

#REPTILES
ranges <- read_sf("./REPTILES/REPTILES.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
reptiles <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(reptiles, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "reptilesALLRast", format = "GTiff", overwrite = TRUE)

#AMPHIBIANS
ranges <- read_sf("./AMPHIBIANS/AMPHIBIANS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus 
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
amphibians <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(amphibians, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(r, "amphibsALLRast", format = "GTiff", overwrite = TRUE)

#LOBSTERS
ranges <- read_sf("./LOBSTERS/LOBSTERS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
lobs <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(lobs, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "lobsALLRast", format = "GTiff", overwrite = TRUE)

#BIRDS
ranges <- read_sf("./Birds/Birds.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("SCINAME" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus 
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
birds <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(birds, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "birdsALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 1
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART1.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus 
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt1 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt1, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt1ALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 2
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART2.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order_, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt2 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt2, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt2ALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 3
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART3.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt3 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt3, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt3ALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 4
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART4.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt4 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt4, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt4ALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 5
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART5.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt5 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt5, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt5ALLRast", format = "GTiff", overwrite = TRUE)

#FW PART 6
ranges <- read_sf("./FW_GROUPS/FW_GROUPS_PART6.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
fwpt6 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(fwpt6, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "fwpt6ALLRast", format = "GTiff", overwrite = TRUE)

#SEACUCS
ranges <- read_sf("./SEACUCUMBERS/SEACUCUMBERS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
seacucs <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(seacucs, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "seacucsALLRast", format = "GTiff", overwrite = TRUE)

#MARINE FISH PART 1
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART1.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt1 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(mfpt1, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "mfpt1ALLRast", format = "GTiff", overwrite = TRUE)

#MARINE FISH PART 2
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART2.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt2 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(mfpt2, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "mfpt2ALLRast", format = "GTiff", overwrite = TRUE)

#MARINE FISH PART 3
ranges <- read_sf("./MARINEFISH/MARINEFISH_PART3.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
mfpt3 <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(mfpt3, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "mfpt3ALLRast", format = "GTiff", overwrite = TRUE)

#SHARKS RAYS CHIMAERAS
ranges <- read_sf("./SHARKS_RAYS_CHIMAERAS/SHARKS_RAYS_CHIMAERAS.shp")

#rename binomial as "SciName" for the join
ranges <- ranges %>% plyr::rename(c("binomial" = "SciName"))

#drop kingdon, phylum, class, order, family, and genus
ranges <- ranges %>% dplyr::select(-c(kingdom, phylum, class, order_, family, genus))

#join ranges and iucn using the scientific name (SciName)
sharksrayschima <- inner_join(ranges, iucn, by = c("SciName"))
rr <- fasterize(sharksrayschima, gr, fun = "sum", background = 0)
plot(rr)
writeRaster(rr, "sharksrayschimaALLRast", format = "GTiff", overwrite = TRUE)

##COMBINE
mammals <- raster("mammalsALLRast.tif")
conus <- raster("conusALLRast.tif")
amphibs <-raster("amphibsALLRast.tif")
lobs <- raster("lobsALLRast.tif")
reptiles <- raster("reptilesALLRast.tif")
seacucs <- raster("seacucsALLRast.tif")
fwpt1 <- raster("fwpt1ALLRast.tif")
fwpt2 <- raster("fwpt2ALLRast.tif")
fwpt3 <- raster("fwpt3ALLRast.tif")
fwpt4 <- raster("fwpt4ALLRast.tif")
fwpt5 <- raster("fwpt5ALLRast.tif")
fwpt6 <- raster("fwpt6ALLRast.tif")
mfpt1 <- raster("mfpt1ALLRast.tif")
mfpt2 <- raster("mfpt2ALLRast.tif")
mfpt3 <- raster("mfpt3ALLRast.tif")
sharksrayschima <- raster("sharksrayschimaALLRast.tif")
birds <- raster("birdsALLRast.tif")

combinelayers <- merge(mammals, conus)
combinelayers2 <- merge(combinelayers, reptiles)
combinelayers3 <- merge(combinelayers2, seacucs)
combinelayers4 <- merge(combinelayers3, fwpt1)
combinelayers5 <- merge(combinelayers4, fwpt2)
combinelayers6 <- merge(combinelayers5, fwpt3)
combinelayers7 <- merge(combinelayers6, fwpt4)
combinelayers8 <- merge(combinelayers7, fwpt5)
combinelayers9 <- merge(combinelayers8, fwpt6)
combinelayers10 <- merge(combinelayers9, mfpt1)
combinelayers11 <- merge(combinelayers10, mfpt2)
combinelayers12 <- merge(combinelayers11, mfpt3)
combinelayers13 <- merge(combinelayers12, sharksrayschima)
combinelayers14 <- merge(combinelayers13, amphibs)
combinelayers15 <- merge(combinelayers14, birds)
combinelayers16 <- merge(combinelayers15, lobs)
plot(combinelayers16)
writeRaster(combinelayers16, "CombinedRastALL", format = "GTiff")

#Proportion 
combine <- combinelayers16
combine <- raster("CombinedRastALL.tif")
plot(combine)

setwd("~/Documents/Honours/SpatialData/Subs")
med <- raster("CombinedRastAD.tif")
plot(med)
med_df <- as.data.frame(med, xy = TRUE)
str(med_df)

setwd("~/Documents/Honours/SpatialData/Ends")
end <- raster("CombinedEndADRast.tif")
summary(end)
end_df <- as.data.frame(end, xy = TRUE)
str(end_df)

propmed <- med / combine 
plot(propmed)
summary(propmed)
propmed_df <- as.data.frame(propmed, xy = TRUE)
propmed_df[is.na(propmed_df)] <- 0
str(propmed_df)

propendmed <- end / med
plot(propendmed)
summary(propendmed)
propendmed_df <- as.data.frame(propendmed, xy = TRUE)
propendmed_df[is.na(propendmed_df)] <- 0
str(propendmed_df)

#PLOT MAPS
#medicinal species distributions
p <- ggplot() +
  geom_raster(data = med_df, aes(x = x, y = y, fill = CombinedRastAD)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Number of Species  ") +
  coord_map() +
  labs(title = "A", x = "", y = "") +
  theme_bw(base_size = 12) +
  theme(plot.margin = unit(c(0,0,0,0), "cm"))
p
#Proporti on of species used for med
p1 <- ggplot() +
  geom_raster(data = propmed_df, aes(x = x, y = y, fill = layer)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Proportion of Species", limits = c(0, 1)) +
  coord_map() +
  labs(title = "B", x = "", y = "") +
  theme_bw(base_size = 12)+
  theme(plot.margin = unit(c(0,0,0,0), "cm"))
p1
#Proportion of med speceis that are endangered
p2 <- ggplot() +
  geom_raster(data = propendmed_df, aes(x = x, y = y, fill = layer)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Proportion of Species", limits = c(0, 1)) +
  coord_cartesian() +
  labs(title = "C", x = "", y = "") +
  theme_bw(base_size = 12)+
  theme(plot.margin = unit(c(0,0,0,0), "cm"))
p2

#Plot maps
grid.arrange(p, p1, p2, ncol = 1, nrow = 3) 
