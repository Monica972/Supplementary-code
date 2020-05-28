# Set working directory

setwd("~/Documents/Honours")
getwd()

# Install packages to be used

install.packages("rgdal")
install.packages("tidyverse")
install.packages("gridExtra")
install.packages("maps")
install.packages("tmap")
install.packages("fBasics")
install.packages("plyr")
install.packages("dplyr")
install.packages("spdep")
install.packages("lubridate")
install.packages("grid")
install.packages("gtable")
install.packages("plotly")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("shades")

# Load packages to use

library(rgdal)
library(tidyverse)
library(gridExtra)
library(maps)
library(tmap)
library(fBasics)
library(plyr)
library(dplyr)
library(spdep)
library(lubridate)
library(grid)
library(gtable)
library(plotly)
library(ggplot2)
library(RColorBrewer)
library(shades)

# Read data file
use.data<- read.csv("./DATA/AnalysisData.csv")

# Remove any species duplicates
use_clean <- use.data[!duplicated(use.data),]
use_clean <- use_clean[!duplicated(use_clean$scientific_name),]

# Create data subset of medicinal use species 
med <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
med <- med[!duplicated(med$scientific_name),]
obsnum <- nrow(med)

# Create data subset of medicinal use species without specific use data
medwo <- med[which(med$Circ.Resp == "FALSE" & med$Mental.behav == "FALSE" & med$Cancer == "FALSE" & med$External.Cause == "FALSE" & med$Symptoms == "FALSE" & med$Reprod == "FALSE" & med$Visual.system == "FALSE" & med$Renal.Urin == "FALSE" & med$Nervous == "FALSE" & med$Musc.Skel == "FALSE" & med$Immune.Lymph == "FALSE" & med$Integum.Exoc == "FALSE" & med$Endocrine == "FALSE" & med$Digest.Excre == "FALSE" & med$Spiritual == "FALSE"),]

# Create data subset of medicinal use species with specific use data
medw <- med[which(med$Circ.Resp == "TRUE" | med$Mental.behav == "TRUE" | med$Cancer == "TRUE" | med$External.Cause == "TRUE" | med$Symptoms == "TRUE" | med$Reprod == "TRUE" | med$Visual.system == "TRUE" | med$Renal.Urin == "TRUE" | med$Nervous == "TRUE" | med$Musc.Skel == "TRUE" | med$Immune.Lymph == "TRUE" | med$Integum.Exoc == "TRUE" | med$Endocrine == "TRUE" | med$Digest.Excre == "TRUE" | med$Spiritual == "TRUE"),]
wobs <- nrow(medw)

##------------------------------------------------------------------------------

        ##Medicinal only species vs mixed species by red list category

##------------------------------------------------------------------------------

# Med only and Mixed
Medonly <- med[which(med$useTradeId..19 =="FALSE" & med$useTradeId..23 == "FALSE" & med$useTradeId..23 == "FALSE" & med$useTradeId..27 == "FALSE" & med$useTradeId..20 =="FALSE" & med$useTradeId..32 =="FALSE" & med$useTradeId..24 =="FALSE" & med$useTradeId..29 =="FALSE" & med$useTradeId..33 =="FALSE" & med$useTradeId..25 =="FALSE" & med$useTradeId..28 =="FALSE" & med$useTradeId..22 =="FALSE" & med$useTradeId..21 =="FALSE" & med$useTradeId..35 =="FALSE" & med$useTradeId..36 =="FALSE" & med$useTradeId..34 =="FALSE" & med$useTradeId..31 =="FALSE"),]
Medonly <- Medonly[!duplicated(Medonly$scientific_name),]
Medonlynum <- nrow(Medonly)
Medonlyper <-round((Medonlynum/obsnum * 100), digits = 2)
Mixednum <- (obsnum-Medonlynum)
Mixedper <-round((Mixednum/obsnum * 100), digits = 2)
Mixed <- med[which(med$useTradeId..19 =="TRUE" | med$useTradeId..23 == "TRUE" | med$useTradeId..23 == "TRUE" | med$useTradeId..27 == "TRUE" | med$useTradeId..20 =="TRUE" | med$useTradeId..32 =="TRUE" | med$useTradeId..24 =="TRUE" | med$useTradeId..29 =="TRUE" | med$useTradeId..33 =="TRUE" | med$useTradeId..25 =="TRUE" | med$useTradeId..28 =="TRUE" | med$useTradeId..22 =="TRUE" | med$useTradeId..21 =="TRUE" | med$useTradeId..35 =="TRUE" | med$useTradeId..36 =="TRUE" | med$useTradeId..34 =="TRUE" | med$useTradeId..31 =="TRUE"),]

# Med only at risk
atRiskMed <- Medonly[which(Medonly$redListCategoryTitle == "Vulnerable" | Medonly$redListCategoryTitle == "Endangered" |  Medonly$redListCategoryTitle == "Critically Endangered"),]
atRiskMednum <- nrow(atRiskMed)
atRiskMedper <- round((atRiskMednum/Medonlynum * 100), digits = 2)

# Mixed at risk
atRiskMix <- Mixed[which(Mixed$redListCategoryTitle == "Vulnerable" | Mixed$redListCategoryTitle == "Endangered" |  Mixed$redListCategoryTitle == "Critically Endangered"),]
atRiskMixnum <- nrow(atRiskMix)
atRiskMixper <- round((atRiskMixnum/Mixednum * 100), digits = 2)

#Percent at risk with mixed use
atRisk <- med[which(med$redListCategoryTitle == "Vulnerable" | med$redListCategoryTitle == "Endangered" |  med$redListCategoryTitle == "Critically Endangered"),]
atRisknum <- nrow(atRisk)
atRiskper <- round((atRisknum/obsnum * 100), digits = 2)

ARMix <- atRisk[which(atRisk$useTradeId..19 =="TRUE" | atRisk$useTradeId..23 == "TRUE" | atRisk$useTradeId..23 == "TRUE" | atRisk$useTradeId..27 == "TRUE" | atRisk$useTradeId..20 =="TRUE" | atRisk$useTradeId..32 =="TRUE" | atRisk$useTradeId..24 =="TRUE" | atRisk$useTradeId..29 =="TRUE" | atRisk$useTradeId..33 =="TRUE" | atRisk$useTradeId..25 =="TRUE" | atRisk$useTradeId..28 =="TRUE" | atRisk$useTradeId..22 =="TRUE" | atRisk$useTradeId..21 =="TRUE" | atRisk$useTradeId..35 =="TRUE" | atRisk$useTradeId..36 =="TRUE" | atRisk$useTradeId..34 =="TRUE" | atRisk$useTradeId..31 =="TRUE"),]
ARMixnum <- nrow(ARMix)
ARMixper <- round((ARMixnum/atRisknum * 100), digits = 2)

#Med only RL categories
MedCR <- Medonly[which(Medonly$redListCategoryTitle == "Critically Endangered"),]
MedCRnum <- nrow(MedCR)
MedCRper <- round((MedCRnum/Medonlynum * 100), dig=2)

MedEX <- Medonly[which(Medonly$redListCategoryTitle == "Extinct"),]
MedEXnum <- nrow(MedEX)
MedEXper <- round((MedEXnum/Medonlynum * 100), dig=2)

MedEN <- Medonly[which(Medonly$redListCategoryTitle == "Endangered"),]
MedENnum <- nrow(MedEN)
MedENper <- round((MedENnum/Medonlynum * 100), dig=2)

MedVU <- Medonly[which(Medonly$redListCategoryTitle == "Vulnerable"),]
MedVUnum <- nrow(MedVU)
MedVUper <- round((MedVUnum/Medonlynum * 100), dig=2)

MedLR.nt <- Medonly[which(Medonly$redListCategoryTitle == "Lower Risk/near threatened"),]
MedLR.ntnum <- nrow(MedLR.nt)
MedLR.ntper <-round((MedLR.ntnum/Medonlynum * 100), digits = 2)

MedNT <- Medonly[which(Medonly$redListCategoryTitle == "Near Threatened"),]
MedNTnum <- nrow(MedNT) + MedLR.ntnum
MedNTper <- round((MedNTnum/Medonlynum * 100), dig=2)

MedNL <- Medonly[which(Medonly$redListCategoryTitle == "Not listed"),]
MedNLnum <- nrow(MedNL)
MedNLper <- round((MedNLnum/Medonlynum * 100), dig=2)

MedDD <- Medonly[which(Medonly$redListCategoryTitle == "Data Deficient"),]
MedDDnum <- nrow(MedDD)
MedDDper <- round((MedDDnum/Medonlynum * 100), dig=2)

MedLR.cd <- Medonly[which(Medonly$redListCategoryTitle == "Lower Risk/conservation dependent"),]
MedLR.cdnum <- nrow(MedLR.cd)
MedLR.cdper <-round((MedLR.cdnum/Medonlynum * 100), digits = 2)

MedLR.lc <- Medonly[which(Medonly$redListCategoryTitle == "Lower Risk/least concern"),]
MedLR.lcnum <- nrow(MedLR.lc)
MedLR.lcper <-round((MedLR.lcnum/Medonlynum * 100), digits=2)

MedLC <- Medonly[which(Medonly$redListCategoryTitle == "Least Concern"),]
MedLCnum <- nrow(MedLC) + MedLR.lcnum + MedLR.cdnum
MedLCper <- round((MedLCnum/Medonlynum * 100), dig=2)

#Mixed use RL categories
MixCR <- Mixed[which(Mixed$redListCategoryTitle == "Critically Endangered"),]
MixCRnum <- nrow(MixCR)
MixCRper <- round((MixCRnum/Mixednum * 100), dig=2)

MixEX <- Mixed[which(Mixed$redListCategoryTitle == "Extinct"),]
MixEXnum <- nrow(MixEX)
MixEXper <- round((MixEXnum/Mixednum * 100), dig=2)

MixEN <- Mixed[which(Mixed$redListCategoryTitle == "Endangered"),]
MixENnum <- nrow(MixEN)
MixENper <- round((MixENnum/Mixednum * 100), dig=2)

MixVU <- Mixed[which(Mixed$redListCategoryTitle == "Vulnerable"),]
MixVUnum <- nrow(MixVU)
MixVUper <- round((MixVUnum/Mixednum * 100), dig=2)

MixLR.nt <- Mixed[which(Mixed$redListCategoryTitle == "Lower Risk/near threatened"),]
MixLR.ntnum <- nrow(MixLR.nt)
MixLR.ntper <-round((MixLR.ntnum/Mixednum * 100), digits = 2)

MixNT <- Mixed[which(Mixed$redListCategoryTitle == "Near Threatened"),]
MixNTnum <- nrow(MixNT) + MixLR.ntnum
MixNTper <- round((MixNTnum/Mixednum * 100), dig=2)

MixNL <- Mixed[which(Mixed$redListCategoryTitle == "Not listed"),]
MixNLnum <- nrow(MixNL)
MixNLper <- round((MixNLnum/Mixednum * 100), dig=2)

MixDD <- Mixed[which(Mixed$redListCategoryTitle == "Data Deficient"),]
MixDDnum <- nrow(MixDD)
MixDDper <- round((MixDDnum/Mixednum * 100), dig=2)

MixLR.cd <- Mixed[which(Mixed$redListCategoryTitle == "Lower Risk/conservation dependent"),]
MixLR.cdnum <- nrow(MixLR.cd)
MixLR.cdper <-round((MixLR.cdnum/Mixednum * 100), digits = 2)

MixLR.lc <- Mixed[which(Mixed$redListCategoryTitle == "Lower Risk/least concern"),]
MixLR.lcnum <- nrow(MixLR.lc)
MixLR.lcper <-round((MixLR.lcnum/Mixednum * 100), digits=2)

MixLC <- Mixed[which(Mixed$redListCategoryTitle == "Least Concern"),]
MixLCnum <- nrow(MixLC) + MixLR.cdnum + MixLR.lcnum
MixLCper <- round((MixLCnum/Mixednum * 100), dig=2)

#plot
RedListCat <- c("CR", "EN", "EX", "LC", "DD", "VU", "NT", "NL")
MedO <- c(MedCRper, MedENper,MedEXper, MedLCper, MedDDper, MedVUper, MedNTper, MedNLper)
Mix <- c(MixCRper, MixENper, MixEXper, MixLCper, MixDDper, MixVUper, MixNTper, MixNLper)

data4 <- data.frame(RedListCat, MedO, Mix)
require(tidyr)
df.long <- gather(data4, variable, value, -RedListCat)

ggplot(data = df.long, aes(x = RedListCat, y = value, fill = variable)) +
  geom_col(position = position_dodge())

values <- c(MedO, Mix)
type <- c(rep("Medicinal only; n = 354", 8), rep("Mixed use; n = 716", 8))
data6 <- data.frame(RedListCat, values, type)
data6$RedListCat <- factor(data6$RedListCat, levels = c("NL", "DD", "LC", "NT", "VU", "EN", "CR", "EX"))

ggplot(data = na.omit(data6), aes(RedListCat, values), na.rm = TRUE) + 
  geom_bar(stat = "identity", aes(fill = type), position = "dodge") +
  scale_fill_manual(values=c("#CA0020", "#92C5DE")) +
  xlab("Red List Category") + ylab("Percent of Species") +
  theme_bw(base_size = 20)+ 
  theme(legend.title=element_blank(), 
        legend.position = c(.95, .95), 
        legend.justification = c("right", "top"),
        legend.box.just = "right", 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"),
        axis.text.x = element_text(colour = "black"),
        axis.text.y = element_text(colour = "black"),
        axis.title.x = element_text(size = 32),
        axis.title.y = element_text(size = 32))

#Fisher's Exact Test
#Med only vs Mixed CR
fisher.test(matrix(c(10, 39, 354-10, 716-39), ncol = 2))

#Med only vs Mixed EX
fisher.test(matrix(c(1, 3, 354-1, 716-3), ncol = 2))

#Med only vs Mixed EN
fisher.test(matrix(c(18, 70, 354-18, 716-70), ncol = 2))

#Med only vs Mixed VU
fisher.test(matrix(c(16, 124, 354-16, 716-124), ncol = 2))

#Med only vs Mixed NT
fisher.test(matrix(c(12, 57, 354-12, 716-57), ncol = 2))

#Med only vs Mixed at risk (VU, CR, EN)
fisher.test(matrix(c(44, 235, 354-44, 716-235), ncol = 2))

##------------------------------------------------------------------------------

        ## Medicinal species by Red List Category - Spiritual and Non-spiritual

##------------------------------------------------------------------------------

# Species used for non-spiritual ailments
# This look at only the data that has specific uses
Physuse <- medw[which(medw$Circ.Resp == "TRUE" | medw$Mental.behav == "TRUE" | medw$Cancer == "TRUE" | medw$External.Cause == "TRUE" | medw$Symptoms == "TRUE" | medw$Reprod == "TRUE" | medw$Visual.system == "TRUE" | medw$Renal.Urin == "TRUE" | medw$Nervous == "TRUE" | medw$Musc.Skel == "TRUE" | medw$Immune.Lymph == "TRUE" | medw$Integum.Exoc == "TRUE" | medw$Endocrine == "TRUE" | medw$Digest.Excre == "TRUE" ),]
Physuse <- Physuse[!duplicated(Physuse$scientific_name),]
Physusenum <- nrow(Physuse)
Physuseper <-round((Physusenum/wobs * 100), digits = 2)

CRPuse <- Physuse[which(Physuse$redListCategoryTitle == "Critically Endangered"),]
CRPusenum <- nrow(CRPuse)
CRPuseper <-round((CRPusenum/Physusenum * 100), dig=2)

ENPuse <- Physuse[which(Physuse$redListCategoryTitle == "Endangered"),]
ENPusenum <- nrow(ENPuse)
ENPuseper <-round((ENPusenum/Physusenum * 100), dig=2)

EXPuse <- Physuse[which(Physuse$redListCategoryTitle == "Extinct"),]
EXPusenum <- nrow(EXPuse)
EXPuseper <-round((EXPusenum/Physusenum * 100), dig=2)

LR.lcPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcPusenum <- nrow(LR.lcPuse)
LR.lcPuseper <-round((LR.lcPusenum/Physusenum * 100), digits=2)

LR.cdPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdPusenum <- nrow(LR.cdPuse)
LR.cdPuseper <-round((LR.cdPusenum/Physusenum * 100), digits = 2)

LCPuse <- Physuse[which(Physuse$redListCategoryTitle == "Least Concern"),]
LCPusenum <- nrow(LCPuse) + LR.lcPusenum + LR.cdPusenum
LCPuseper <-round((LCPusenum/Physusenum * 100), dig=2)

DDPuse <- Physuse[which(Physuse$redListCategoryTitle == "Data Deficient"),]
DDPusenum <- nrow(DDPuse)
DDPuseper <-round((DDPusenum/Physusenum * 100), digits = 2)

VUPuse <- Physuse[which(Physuse$redListCategoryTitle == "Vulnerable"),]
VUPusenum <- nrow(VUPuse)
VUPuseper <-round((VUPusenum/Physusenum * 100), digits = 2)

LR.ntPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntPusenum <- nrow(LR.ntPuse)
LR.ntPuseper <-round((LR.ntPusenum/Physusenum * 100), digits = 2)

NTPuse <- Physuse[which(Physuse$redListCategoryTitle == "Near Threatened"),]
NTPusenum <- nrow(NTPuse) + LR.ntPusenum
NTPuseper <-round((NTPusenum/Physusenum * 100), digits = 2)

NLPuse <- Physuse[which(Physuse$redListCategoryTitle == "Not listed"),]
NLPusenum <- nrow(NLPuse)
NLPuseper <-round((NLPusenum/Physusenum * 100), digits = 2)

EWPuse <- Physuse[which(Physuse$redListCategoryTitle == "EW"),]
EWPusenum <- nrow(EWPuse)
EWPuseper <-round((EWPusenum/Physusenum * 100), digits = 2)

EndPUse <- CRPusenum + ENPusenum + VUPusenum
EndPUsePer <-round((EndPUse/Physusenum * 100), digits=2)

#Species used for spiritual, magical, or religious purposes
# uses only data wiht specific uses
Spiruse <- medw[which(medw$Spiritual == "TRUE"),]
Spiruse <- Spiruse[!duplicated(Spiruse$scientific_name),]
Spirusenum <- nrow(Spiruse)
Spiruseper <- round((Spirusenum/wobs * 100), digits = 2)

CRSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Critically Endangered"),]
CRSusenum <- nrow(CRSuse)
CRSuseper <-round((CRSusenum/Spirusenum * 100), dig=2)

ENSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Endangered"),]
ENSusenum <- nrow(ENSuse)
ENSuseper <-round((ENSusenum/Spirusenum * 100), dig=2)

EXSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Extinct"),]
EXSusenum <- nrow(EXSuse)
EXSuseper <-round((EXSusenum/Spirusenum * 100), dig=2)

LR.cdSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdSusenum <- nrow(LR.cdSuse)
LR.cdSuseper <-round((LR.cdSusenum/Spirusenum * 100), digits = 2)

LR.lcSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcSusenum <- nrow(LR.lcSuse)
LR.lcSuseper <-round((LR.lcSusenum/Spirusenum * 100), digits=2)

LCSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Least Concern"),]
LCSusenum <- nrow(LCSuse) + LR.cdSusenum + LR.lcSusenum 
LCSuseper <-round((LCSusenum/Spirusenum * 100), dig=2)

DDSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Data Deficient"),]
DDSusenum <- nrow(DDSuse)
DDSuseper <-round((DDSusenum/Spirusenum * 100), digits = 2)

VUSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Vulnerable"),]
VUSusenum <- nrow(VUSuse)
VUSuseper <-round((VUSusenum/Spirusenum * 100), digits = 2)

LR.ntSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntSusenum <- nrow(LR.ntSuse)
LR.ntSuseper <-round((LR.ntSusenum/Spirusenum * 100), digits = 2)

NTSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Near Threatened"),]
NTSusenum <- nrow(NTSuse) + LR.ntSusenum
NTSuseper <-round((NTSusenum/Spirusenum * 100), digits = 2)

NLSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Not listed"),]
NLSusenum <- nrow(NLSuse)
NLSuseper <-round((NLSusenum/Spirusenum * 100), digits = 2)

EWSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "EW"),]
EWSusenum <- nrow(EWSuse)
EWSuseper <-round((EWSusenum/Spirusenum * 100), digits = 2)

EndSUse <- CRSusenum + ENSusenum + VUSusenum
EndSUsePer <-round((EndSUse/Spirusenum * 100), digits=2)

## Plot proportion of species against red list category for spiritual and non-spiritual use species - Fig 4 A
RedListCat3 <- c("CR", "EN", "EX", "LC", "DD", "VU", "NT", "NL")
PhysicalUse <- c(CRPuseper, ENPuseper,EXPuseper, LCPuseper, DDPuseper, VUPuseper, NTPuseper, NLPuseper)
SpiritualUse <- c(CRSuseper, ENSuseper,EXSuseper, LCSuseper, DDSuseper, VUSuseper, NTSuseper, NLSuseper)
data2 <- data.frame(RedListCat3, PhysicalUse, SpiritualUse)
values <- c(PhysicalUse, SpiritualUse)
type <- c(rep("Non-Spiritual Use; n = 406", 8), rep("Spiritual Use; n = 163", 8))
data2 <- data.frame(RedListCat3, values, type)
data2$RedListCat3 <- factor(data2$RedListCat3, levels = c("NL", "DD", "LC", "NT", "VU", "EN", "CR", "EX"))

p2 <- ggplot(data =na.omit(data2), aes(RedListCat3, values), na.rm = TRUE )
p2 <- p2 +geom_bar(stat = "identity", aes(fill = type), position = "dodge") +
  scale_fill_manual(values=c("#CA0020", "#92C5DE")) +
  xlab("Red List Category") + ylab("Percent of Species") +
  ggtitle("A") +
  ylim(c(0, 65)) +
  theme_bw(base_size = 20)+ 
  theme(legend.title=element_blank(),
        legend.position = c(.95, .95), 
        legend.justification = c("right", "top"),
        legend.box.just = "right",
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        axis.text.x = element_text(colour = "black"),
        axis.text.y = element_text(colour = "black"),
        axis.title.x = element_text(size = 32),
        axis.title.y = element_text(size = 32),
        title = element_text(size = 32))
p2
##------------------------------------------------------------------------------

     ##Medicinal only species by red list category - spiritual and non-spiritual

##------------------------------------------------------------------------------
medonly <- medw[which(medw$useTradeId..19 =="FALSE" & medw$useTradeId..23 == "FALSE" & medw$useTradeId..23 == "FALSE" & medw$useTradeId..27 == "FALSE" & medw$useTradeId..20 =="FALSE" & medw$useTradeId..32 =="FALSE" & medw$useTradeId..24 =="FALSE" & medw$useTradeId..29 =="FALSE" & medw$useTradeId..33 =="FALSE" & medw$useTradeId..25 =="FALSE" & medw$useTradeId..28 =="FALSE" & medw$useTradeId..22 =="FALSE" & medw$useTradeId..21 =="FALSE" & medw$useTradeId..35 =="FALSE" & medw$useTradeId..36 =="FALSE" & medw$useTradeId..34 =="FALSE" & medw$useTradeId..31 =="FALSE"),]

# Species used for physical (non-spiritual) ailments
# this look at only the data that has specific uses
Physuse <- medonly[which(medonly$Circ.Resp == "TRUE" | medonly$Mental.behav == "TRUE" | medonly$Cancer == "TRUE" | medonly$External.Cause == "TRUE" | medonly$Symptoms == "TRUE" | medonly$Reprod == "TRUE" | medonly$Visual.system == "TRUE" | medonly$Renal.Urin == "TRUE" | medonly$Nervous == "TRUE" | medonly$Musc.Skel == "TRUE" | medonly$Immune.Lymph == "TRUE" | medonly$Integum.Exoc == "TRUE" | medonly$Endocrine == "TRUE" | medonly$Digest.Excre == "TRUE" ),]
Physuse <- Physuse[!duplicated(Physuse$scientific_name),]
Physusenum <- nrow(Physuse)
Physuseper <-round((Physusenum/wobs * 100), digits = 2)

CRPuse <- Physuse[which(Physuse$redListCategoryTitle == "Critically Endangered"),]
CRPusenum <- nrow(CRPuse)
CRPuseper <-round((CRPusenum/Physusenum * 100), dig=2)

ENPuse <- Physuse[which(Physuse$redListCategoryTitle == "Endangered"),]
ENPusenum <- nrow(ENPuse)
ENPuseper <-round((ENPusenum/Physusenum * 100), dig=2)

EXPuse <- Physuse[which(Physuse$redListCategoryTitle == "Extinct"),]
EXPusenum <- nrow(EXPuse)
EXPuseper <-round((EXPusenum/Physusenum * 100), dig=2)

LR.lcPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcPusenum <- nrow(LR.lcPuse)
LR.lcPuseper <-round((LR.lcPusenum/Physusenum * 100), digits=2)

LR.cdPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdPusenum <- nrow(LR.cdPuse)
LR.cdPuseper <-round((LR.cdPusenum/Physusenum * 100), digits = 2)

LCPuse <- Physuse[which(Physuse$redListCategoryTitle == "Least Concern"),]
LCPusenum <- nrow(LCPuse) + LR.lcPusenum + LR.cdPusenum
LCPuseper <-round((LCPusenum/Physusenum * 100), dig=2)

DDPuse <- Physuse[which(Physuse$redListCategoryTitle == "Data Deficient"),]
DDPusenum <- nrow(DDPuse)
DDPuseper <-round((DDPusenum/Physusenum * 100), digits = 2)

VUPuse <- Physuse[which(Physuse$redListCategoryTitle == "Vulnerable"),]
VUPusenum <- nrow(VUPuse)
VUPuseper <-round((VUPusenum/Physusenum * 100), digits = 2)

LR.ntPuse <- Physuse[which(Physuse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntPusenum <- nrow(LR.ntPuse)
LR.ntPuseper <-round((LR.ntPusenum/Physusenum * 100), digits = 2)

NTPuse <- Physuse[which(Physuse$redListCategoryTitle == "Near Threatened"),]
NTPusenum <- nrow(NTPuse) + LR.ntPusenum
NTPuseper <-round((NTPusenum/Physusenum * 100), digits = 2)

NLPuse <- Physuse[which(Physuse$redListCategoryTitle == "Not listed"),]
NLPusenum <- nrow(NLPuse)
NLPuseper <-round((NLPusenum/Physusenum * 100), digits = 2)

EWPuse <- Physuse[which(Physuse$redListCategoryTitle == "EW"),]
EWPusenum <- nrow(EWPuse)
EWPuseper <-round((EWPusenum/Physusenum * 100), digits = 2)

EndPUse <- CRPusenum + ENPusenum + VUPusenum
EndPUsePer <-round((EndPUse/Physusenum * 100), digits=2)
EndPUsePer

#Species used for spiritual, magical, or religious purposes
# uses only data with specific uses
Spiruse <- medonly[which(medonly$Spiritual == "TRUE"),]
Spiruse <- Spiruse[!duplicated(Spiruse$scientific_name),]
Spirusenum <- nrow(Spiruse)
Spiruseper <- round((Spirusenum/wobs * 100), digits = 2)

CRSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Critically Endangered"),]
CRSusenum <- nrow(CRSuse)
CRSuseper <-round((CRSusenum/Spirusenum * 100), dig=2)

ENSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Endangered"),]
ENSusenum <- nrow(ENSuse)
ENSuseper <-round((ENSusenum/Spirusenum * 100), dig=2)

EXSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Extinct"),]
EXSusenum <- nrow(EXSuse)
EXSuseper <-round((EXSusenum/Spirusenum * 100), dig=2)

LR.cdSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdSusenum <- nrow(LR.cdSuse)
LR.cdSuseper <-round((LR.cdSusenum/Spirusenum * 100), digits = 2)

LR.lcSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcSusenum <- nrow(LR.lcSuse)
LR.lcSuseper <-round((LR.lcSusenum/Spirusenum * 100), digits=2)

LCSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Least Concern"),]
LCSusenum <- nrow(LCSuse) + LR.cdSusenum + LR.lcSusenum 
LCSuseper <-round((LCSusenum/Spirusenum * 100), dig=2)

DDSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Data Deficient"),]
DDSusenum <- nrow(DDSuse)
DDSuseper <-round((DDSusenum/Spirusenum * 100), digits = 2)

VUSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Vulnerable"),]
VUSusenum <- nrow(VUSuse)
VUSuseper <-round((VUSusenum/Spirusenum * 100), digits = 2)

LR.ntSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntSusenum <- nrow(LR.ntSuse)
LR.ntSuseper <-round((LR.ntSusenum/Spirusenum * 100), digits = 2)

NTSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Near Threatened"),]
NTSusenum <- nrow(NTSuse) + LR.ntSusenum
NTSuseper <-round((NTSusenum/Spirusenum * 100), digits = 2)

NLSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "Not listed"),]
NLSusenum <- nrow(NLSuse)
NLSuseper <-round((NLSusenum/Spirusenum * 100), digits = 2)

EWSuse <- Spiruse[which(Spiruse$redListCategoryTitle == "EW"),]
EWSusenum <- nrow(EWSuse)
EWSuseper <-round((EWSusenum/Spirusenum * 100), digits = 2)

EndSUse <- CRSusenum + ENSusenum + VUSusenum
EndSUsePer <-round((EndSUse/Spirusenum * 100), digits=2)
EndSUsePer

# plot proportion of MED ONLY species against red list category for spiritual and physical use species - Fig 4 B
RedListCat3 <- c("CR", "EN", "EX", "LC", "DD", "VU", "NT", "NL")
PhysicalUse <- c(CRPuseper, ENPuseper,EXPuseper, LCPuseper, DDPuseper, VUPuseper, NTPuseper, NLPuseper)
SpiritualUse <- c(CRSuseper, ENSuseper,EXSuseper, LCSuseper, DDSuseper, VUSuseper, NTSuseper, NLSuseper)
data2 <- data.frame(RedListCat3, PhysicalUse, SpiritualUse)
values <- c(PhysicalUse, SpiritualUse)
type <- c(rep("Non-Spiritual Use; n = 225", 8), rep("Spiritual Use; n = 75", 8))
data2 <- data.frame(RedListCat3, values, type)
data2$RedListCat3 <- factor(data2$RedListCat3, levels = c("NL", "DD", "LC", "NT", "VU", "EN", "CR", "EX"))

p3 <- ggplot(data =na.omit(data2), aes(RedListCat3, values), na.rm = TRUE )
p3 <- p3 +geom_bar(stat = "identity", aes(fill = type), position = "dodge") +
 scale_fill_manual(values=c("#CA0020", "#92C5DE")) + # purple and orange ->scale_fill_manual(values=c("#FFC05F", "#8073AC"))
  xlab("Red List Category") + 
  ylab("Percent of Species") +
  ggtitle("B") +
  ylim(c(0, 65)) +
  theme_bw(base_size = 20)+ 
  theme(legend.title=element_blank(), 
        legend.position = c(.95, .95), 
        legend.justification = c("right", "top"),
        legend.box.just = "right", 
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"),
        axis.text.x = element_text(colour = "black"),
        axis.text.y = element_text(colour = "black"),
        axis.title.x = element_text(size = 32),
        axis.title.y = element_text(size = 32),
        title = element_text(size = 32))

# Combine plots for Figure 4
grid.arrange(p2, p3, ncol = 2, nrow = 1) 

#Fisher's Exact Test
#spiritual vs non-spiritual 'Endangered'
fisher.test(matrix(c(18, 13, 163-18, 406-13), ncol = 2))

#spiritual vs non-spiritual 'Critically Endangered'
fisher.test(matrix(c(10, 8, 163-10, 406-8), ncol = 2))

#spiritual vs non-spiritual 'Vulnerable'
fisher.test(matrix(c(17, 39, 163-17, 406-39), ncol = 2))

#spiritual vs non-spiritual 'Near Threatened'
fisher.test(matrix(c(9, 17, 163-9, 406-17), ncol = 2))

#spiritual vs non-spiritual 'Extinct'
fisher.test(matrix(c(1, 1, 163-1, 406-1), ncol = 2))

#spiritual vs non-spiritual 'Least Concern'
fisher.test(matrix(c(62, 169, 163-62, 406-169), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN
fisher.test(matrix(c(6, 7, 75-6, 225-7), ncol = 2))

#MED ONLY spiritual vs non-spiritual CR
fisher.test(matrix(c(3, 2, 75-3, 225-2), ncol = 2))

#MED ONLY spiritual vs non-spiritual EX
fisher.test(matrix(c(1, 1, 75-1, 225-1), ncol = 2))

#MED ONLY spiritual vs non-spiritual VU
fisher.test(matrix(c(3, 8, 75-3, 225-8), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN + CR
fisher.test(matrix(c(9, 9, 75-9, 225-9), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN + CR + VU 'At-risk'
fisher.test(matrix(c(12, 17, 75-12, 225-17), ncol = 2))

