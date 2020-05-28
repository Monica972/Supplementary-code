#Set working directory
setwd("~/Documents/Honours/SpatialData")

#install packages
install.packages("tidyverse", dependencies = TRUE)
install.packages("sf", dependencies = TRUE)
install.packages("rgdal", dependencies = TRUE)
install.packages("RColorBrewer")
install.packages("colorRamps")
install.packages("mapproj")
install.packages("sp")
install.packages("maptools")
install.packages("gridExtra")
install.packages("raster")

#load packages
library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(maptools)
library(raster)
library(RColorBrewer)
library(colorRamps)
library(gridExtra)
library(mapproj)

#Load full species raster
combine <- raster("CombinedRastALL.tif")
plot(combine)

#change projection to mollweide
combine = projectRaster(combine, crs = "+proj=moll +lon_0=0 +x_0=0 +y_0=0", method = "ngb")
plot(combine)
crs(combine)

#change working directory
setwd("~/Documents/Honours/SpatialData/Subs")

#load medicinal species raster
med <- raster("CombinedRastAD.tif")

#change projection to mollweide
med = projectRaster(med, crs = "+proj=moll +lon_0=0 +x_0=0 +y_0=0", method = "ngb")
plot(med)

#match extent of the map to the combined species raster
extent(med) <-combine
summary(med)
crs(med)

#create dataframe of medicinal species raster
med_df <- as.data.frame(med, xy = TRUE)
str(med_df)

#change working directory
setwd("~/Documents/Honours/SpatialData/Ends")

#load at risk species raster
end <- raster("CombinedEndADRast.tif")

#change projection to mollweide
end = projectRaster(end, crs = "+proj=moll +lon_0=0 +x_0=0 +y_0=0", method = "ngb")
summary(end)
plot(end)

#create dataframe of medicinal species raster
end_df <- as.data.frame(end, xy = TRUE)
str(end_df)

#calculate proportion of species ued for medicine
propmed <- med / combine 
plot(propmed)

#set projection to mollweide
propmed = projectRaster(propmed, crs = "+proj=moll +lon_0=0 +x_0=0 +y_0=0", method = "ngb")
summary(propmed)

#create dataframe of medicinal species proportion raster
propmed_df <- as.data.frame(propmed, xy = TRUE)
str(propmed_df)
crs(propmed)

#calculate proportion of medicinal species that are at risk
propendmed <- end / med
plot(propendmed)

#set projection to mollweide
propendmed = projectRaster(propendmed, crs = "+proj=moll +lon_0=0 +x_0=0 +y_0=0", method = "ngb")
summary(propendmed)

#create dataframe of medicinal species at risk raster
propendmed_df <- as.data.frame(propendmed, xy = TRUE)
str(propendmed_df)
crs(propendmed)

#PLOT MAPS
#medicinal species distribution in numbers
p <- ggplot(med_df) +
  geom_tile(aes(x = x, y = y, fill = CombinedRastAD)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Number of Species", na.value = "white") +
  coord_equal() +
  labs(title = "A", x = "", y = "") +
  theme_bw(base_size = 15) +
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_blank(),
        legend.title = element_text(size = 15),
        title = element_text(size = 22),
        plot.margin = unit(c(.2,0,-1,0), "cm"),
        plot.title = element_text(vjust = - 5),
        panel.background = element_rect(fill = "white", colour = "white",
                                        size = 2, linetype = "solid")) +
  scale_y_continuous(breaks=NULL) +
  scale_x_continuous(breaks=NULL)

p

#Proporti on of species used for med
p1 <- ggplot(propmed_df) +
  geom_tile(aes(x = x, y = y, fill = layer)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Proportion of Species", limits = c(0, 1), na.value = "white") +
  coord_equal() +
  labs(title = "B", x = "", y = "") +
  theme_bw(base_size = 15)+
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_blank(),
        legend.title = element_text(size = 15),
        title = element_text(size = 22),
        plot.margin = unit(c(-0.3,0,-0.7,0.5), "cm"),
        plot.title = element_text(vjust = - 5),
        panel.background = element_rect(fill = "white", colour = "white",
                                        size = 2, linetype = "solid")) +
  scale_y_continuous(breaks=NULL) +
  scale_x_continuous(breaks=NULL)
p1

#Proportion of med species that are at risk
p2 <- ggplot(propendmed_df) +
  geom_tile(aes(x = x, y = y, fill = layer)) +
  scale_fill_distiller(palette = "RdYlBu", direction = -1, name = "Proportion of Species", limits = c(0, 1), na.value = "white") +
  coord_equal() +
  labs(title = "C", x = "", y = "") +
  theme_bw(base_size = 15)+
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_blank(),
        legend.title = element_text(size = 15),
        title = element_text(size = 22),
        plot.margin = unit(c(-0.5,0,-0.5, 0.5), "cm"),
        plot.title = element_text(vjust = - 5),
        panel.background = element_rect(fill = "white", colour = "white",
                                        size = 2, linetype = "solid")) +
  scale_y_continuous(breaks=NULL) +
  scale_x_continuous(breaks=NULL)
p2

#combine plots to produce figure 2
grid.arrange(p, p1, p2, ncol = 1, nrow = 3) 
