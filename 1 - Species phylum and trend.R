# Supplementary code for Short et al. Part 1 - proprtions of species in each phylum and with each population trend
# Monica Short, August 2020


# Set working directory

setwd("~/Documents/Short")
getwd()

# Install packages to be used

install.packages("gridExtra")
install.packages("ggplot2")
install.packages("shades")

# Load packages to use

library(gridExtra)
library(ggplot2)
library(shades)

# Read data file
use.data <- read.csv("./Shortdata.csv")

# Create data subset of medicinal use species 
med <- use.data[which(use.data$useTradeId..30 =="TRUE"),]
obsnum <- nrow(med)

## Medicinal species sources

# Medicinal use species with use found from the literature and from the IUCN
litonly <- med[which(c(med$MedSouceLit == "TRUE" & med$MedIUCN == "FALSE")),] #literature medicinal species
iucn <- med[which(c(med$MedSouceLit == "TRUE" & med$MedIUCN == "TRUE")),] #literature medicinal species also listed as medicinal by IUCn
unlist <- med[which(med$redListCategoryTitle == "Not listed"),]

# Medicinal species with known population trends
Trend <- med[which(med$populationTrendTitle == "Decreasing" | med$populationTrendTitle == "Stable" | med$populationTrendTitle == "Increasing"),]
Trendnum <- nrow(Trend)

#Proportions of trend for those known
#Decreasing
Dec <- Trend[which(Trend$populationTrendTitle == "Decreasing"),]
Decnum <- nrow(Dec)
Decper <- round((Decnum/Trendnum * 100), dig=2)

#Increasing
Inc <- Trend[which(Trend$populationTrendTitle == "Increasing"),]
Incnum <- nrow(Inc)
Incper <- round((Incnum/Trendnum * 100), dig=2)

#Stable
Stab <- Trend[which(Trend$populationTrendTitle == "Stable"),]
Stabnum <- nrow(Stab)
Stabper <- round((Stabnum/Trendnum * 100), dig=2)

##--------------------------------------------------------------------------------

## Medicinal species by phylum

##--------------------------------------------------------------------------------

Annelida <- med[which(med$phylum_name =="ANNELIDA"),]
AnnNum <- nrow(Annelida)
Annper <- round((AnnNum/obsnum * 100), digits = 2)
Arthropoda <- med[which(med$phylum_name == "ARTHROPODA"),]
ArthNum <- nrow(Arthropoda)
Arthper <- round((ArthNum/obsnum * 100), digits = 2)
Chordata <- med[which(med$phylum_name == "CHORDATA"),]
ChorNum <- nrow(Chordata)
Chorper <- round((ChorNum/obsnum * 100), digits = 2)
Echino <- med[which(med$phylum_name =="ECHINODERMATA"),]
EchNum <- nrow(Echino)
Echper <- round((EchNum/obsnum * 100), digits = 2)
Mollusca <- med[which(med$phylum_name == "MOLLUSCA"),]
MollNum <-nrow(Mollusca)
Mollper <- round((MollNum/obsnum * 100), digits = 2)

#Proportion of Chordata used for medicine
Allchor <- use_clean[which(use_clean$phylum_name == "CHORDATA"),]
Allchornum <- nrow(Allchor)
Medchor <- round((ChorNum/Allchornum * 100), digits = 2)

## -----------------------------------------------------------------------

#For only species with known trend

##------------------------------------------------------------------------

#Species population trend by phylum
#ANNELIDA
#Decreasing
AnnDec <- Annelida[which(Annelida$populationTrendTitle == "Decreasing"),]
AnnDecnum <- nrow(AnnDec)
AnnDecper <- round((AnnDecnum/Trendnum * 100), dig=2)

#Increasing
AnnInc <- Annelida[which(Annelida$populationTrendTitle == "Increasing"),]
AnnIncnum <- nrow(AnnInc)
AnnIncper <- round((AnnIncnum/Trendnum * 100), dig=2)

#Stable
AnnStab <- Annelida[which(Annelida$populationTrendTitle == "Stable"),]
AnnStabnum <- nrow(AnnStab)
AnnStabper <- round((AnnStabnum/Trendnum * 100), dig=2)

#ARTHROPODA
#Decreasing
ArthDec <- Arthropoda[which(Arthropoda$populationTrendTitle == "Decreasing"),]
ArthDecnum <- nrow(ArthDec)
ArthDecper <- round((ArthDecnum/Trendnum * 100), dig=2)

#Increasing
ArthInc <- Arthropoda[which(Arthropoda$populationTrendTitle == "Increasing"),]
ArthIncnum <- nrow(ArthInc)
ArthIncper <- round((ArthIncnum/Trendnum * 100), dig=2)

#Stable
ArthStab <- Arthropoda[which(Arthropoda$populationTrendTitle == "Stable"),]
ArthStabnum <- nrow(ArthStab)
ArthStabper <- round((ArthStabnum/Trendnum * 100), dig=2)

#CHORDATA
#Decreasing
ChorDec <- Chordata[which(Chordata$populationTrendTitle == "Decreasing"),]
ChorDecnum <- nrow(ChorDec)
ChorDecper <- round((ChorDecnum/Trendnum * 100), dig=2)

#Increasing
ChorInc <- Chordata[which(Chordata$populationTrendTitle == "Increasing"),]
ChorIncnum <- nrow(ChorInc)
ChorIncper <- round((ChorIncnum/Trendnum * 100), dig=2)

#Stable
ChorStab <- Chordata[which(Chordata$populationTrendTitle == "Stable"),]
ChorStabnum <- nrow(ChorStab)
ChorStabper <- round((ChorStabnum/Trendnum * 100), dig=2)

#ECHINO
#Decreasing
EchDec <- Echino[which(Echino$populationTrendTitle == "Decreasing"),]
EchDecnum <- nrow(EchDec)
EchDecper <- round((EchDecnum/Trendnum * 100), dig=2)

#Increasing
EchInc <- Echino[which(Echino$populationTrendTitle == "Increasing"),]
EchIncnum <- nrow(EchInc)
EchIncper <- round((EchIncnum/Trendnum * 100), dig=2)

#Stable
EchStab <- Echino[which(Echino$populationTrendTitle == "Stable"),]
EchStabnum <- nrow(EchStab)
EchStabper <- round((EchStabnum/Trendnum * 100), dig=2)

#MOLLUSCA
#Decreasing
MollDec <- Mollusca[which(Mollusca$populationTrendTitle == "Decreasing"),]
MollDecnum <- nrow(MollDec)
MollDecper <- round((MollDecnum/Trendnum * 100), dig=2)

#Increasing
MollInc <- Mollusca[which(Mollusca$populationTrendTitle == "Increasing"),]
MollIncnum <- nrow(MollInc)
MollIncper <- round((MollIncnum/Trendnum * 100), dig=2)

#Stable
MollStab <- Mollusca[which(Mollusca$populationTrendTitle == "Stable"),]
MollStabnum <- nrow(MollStab)
MollStabper <- round((MollStabnum/Trendnum * 100), dig=2)

#Plot species population by phylum
specie <- c(rep("Arthropoda" , 3) , rep("Chordata" , 3) , rep("Echinodermata" , 3), rep("Mollusca", 3) )
specie1 <- c(rep("Arthropoda \n n = 4" , 3) , rep("Chordata \n n = 580" , 3) , rep("Echinodermata \n n = 14" , 3), rep("Mollusca \n n = 59", 3) )
condition <- rep(c("Decreasing" , "Stable" , "Increasing") , 4)
Arth <- c(ArthDecper, ArthStabper, ArthIncper)
Chor <- c(ChorDecper, ChorStabper, ChorIncper)
Echi <- c(EchDecper, EchStabper, EchIncper)
Moll <- c(MollDecper, MollStabper, MollIncper)
value <- c(Arth, Chor, Echi, Moll)
data <- data.frame(specie,condition,value)
per <- c(ArthNum, ChorNum, EchNum, MollNum)

# Stacked plot of population trend by phylum - Fig 1 A
p3 <- ggplot(data, aes(fill=condition, y=value, x= reorder(specie1, -value))) + 
  geom_bar(position="stack", stat="identity") +
  xlab("Phylum") + ylab("Percentage of Species") +
  lightness(scale_fill_manual(values=c("#CA0020", "#B3E55C", "#92C5DE")), scalefac(0.9)) +
  ggtitle("A") +
  theme_bw(base_size = 18)+
  theme(legend.title= element_blank(), 
        legend.position = c(.95, .95), 
        legend.justification = c("right", "top"),
        legend.box.just = "right", 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"),
        axis.text.x = element_text(colour = "black", angle = 40, hjust = 1),
        axis.text.y = element_text(colour = "black"),
        axis.title.x = element_text(size = 22),
        axis.title.y = element_text(size = 22),
        title = element_text(size = 22))

# Filled bar plot of population trend by phylum - Fig 1 B
p4 <-
  ggplot(data, aes(fill=condition, y=value, x= reorder(specie1, -value))) + 
  geom_bar(position="fill", stat="identity") +
  xlab("Phylum") + ylab("Proportion of Species") +
  lightness(scale_fill_manual(values=c("#CA0020", "#B3E55C", "#92C5DE")), scalefac(0.9)) +
  ggtitle("B") +
  theme_bw(base_size = 18)+
  theme(legend.title=element_blank(), 
        legend.position = c(.95, .95), 
        legend.justification = c("right", "top"),
        legend.box.just = "right", 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"),
        axis.text.x = element_text(colour = "black", angle = 40, hjust = 1),
        axis.text.y = element_text(colour = "black"),
        axis.title.x = element_text(size = 22),
        axis.title.y = element_text(size = 22),
        title = element_text(size = 22))

# Combine plots for Figure 1
grid.arrange(p3, p4, ncol = 2, nrow = 1) 

##------------------------------------------------------------------------------

#Fisher's Exact Tests

##------------------------------------------------------------------------------

#Decreasing trend vs stable
fisher.test(matrix(c(Decnum, Stabnum, (obsnum - Decnum), (obsnum - Stabnum)), ncol = 2))

#Dececresing trend vs increasing
fisher.test(matrix(c(Decnum, Incnum, (obsnum - Decnum), (obsnum - Incnum)), ncol = 2))
