# Set working directory

setwd("~/Documents/Honours")
getwd()

# Install packages to be used

install.packages("tidyverse")
install.packages("gridExtra")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("shades")

# Load packages to use

library(tidyverse)
library(gridExtra)
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
medonlynum <- nrow(medonly)

# Species used for physical (non-spiritual) ailments
# this look at only the data that has specific uses
MPhysuse <- medonly[which(medonly$Circ.Resp == "TRUE" | medonly$Mental.behav == "TRUE" | medonly$Cancer == "TRUE" | medonly$External.Cause == "TRUE" | medonly$Symptoms == "TRUE" | medonly$Reprod == "TRUE" | medonly$Visual.system == "TRUE" | medonly$Renal.Urin == "TRUE" | medonly$Nervous == "TRUE" | medonly$Musc.Skel == "TRUE" | medonly$Immune.Lymph == "TRUE" | medonly$Integum.Exoc == "TRUE" | medonly$Endocrine == "TRUE" | medonly$Digest.Excre == "TRUE" ),]
MPhysuse <- MPhysuse[!duplicated(MPhysuse$scientific_name),]
MPhysusenum <- nrow(MPhysuse)
MPhysuseper <-round((MPhysusenum/medonlynum* 100), digits = 2)

CRMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Critically Endangered"),]
CRMPusenum <- nrow(CRMPuse)
CRMPuseper <-round((CRMPusenum/MPhysusenum * 100), dig=2)

ENMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Endangered"),]
ENMPusenum <- nrow(ENMPuse)
ENMPuseper <-round((ENMPusenum/MPhysusenum * 100), dig=2)

EXMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Extinct"),]
EXMPusenum <- nrow(EXMPuse)
EXMPuseper <-round((EXMPusenum/MPhysusenum * 100), dig=2)

LR.lcMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcMPusenum <- nrow(LR.lcMPuse)
LR.lcMPuseper <-round((LR.lcMPusenum/MPhysusenum * 100), digits=2)

LR.cdMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdMPusenum <- nrow(LR.cdMPuse)
LR.cdMPuseper <-round((LR.cdMPusenum/MPhysusenum * 100), digits = 2)

LCMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Least Concern"),]
LCMPusenum <- nrow(LCMPuse) + LR.lcMPusenum + LR.cdMPusenum
LCMPuseper <-round((LCMPusenum/MPhysusenum * 100), dig=2)

DDMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Data Deficient"),]
DDMPusenum <- nrow(DDMPuse)
DDMPuseper <-round((DDMPusenum/MPhysusenum * 100), digits = 2)

VUMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Vulnerable"),]
VUMPusenum <- nrow(VUMPuse)
VUMPuseper <-round((VUMPusenum/MPhysusenum * 100), digits = 2)

LR.ntMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntMPusenum <- nrow(LR.ntMPuse)
LR.ntMPuseper <-round((LR.ntMPusenum/MPhysusenum * 100), digits = 2)

NTMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Near Threatened"),]
NTMPusenum <- nrow(NTMPuse) + LR.ntMPusenum
NTMPuseper <-round((NTMPusenum/MPhysusenum * 100), digits = 2)

NLMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "Not listed"),]
NLMPusenum <- nrow(NLMPuse)
NLMPuseper <-round((NLMPusenum/MPhysusenum * 100), digits = 2)

EWMPuse <- MPhysuse[which(MPhysuse$redListCategoryTitle == "EW"),]
EWMPusenum <- nrow(EWMPuse)
EWMPuseper <-round((EWMPusenum/MPhysusenum * 100), digits = 2)

EndMPuse <- CRMPusenum + ENMPusenum + VUMPusenum
EndMPusePer <-round((EndMPuse/MPhysusenum * 100), digits=2)
EndMPusePer

#Species used for spiritual, magical, or religious purposes
# uses only data with specific uses
MSpiruse <- medonly[which(medonly$Spiritual == "TRUE"),]
MSpiruse <- MSpiruse[!duplicated(MSpiruse$scientific_name),]
MSpirusenum <- nrow(MSpiruse)
MSpiruseper <- round((MSpirusenum/wobs * 100), digits = 2)

CRMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Critically Endangered"),]
CRMSusenum <- nrow(CRMSuse)
CRMSuseper <-round((CRMSusenum/MSpirusenum * 100), dig=2)

ENMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Endangered"),]
ENMSusenum <- nrow(ENMSuse)
ENMSuseper <-round((ENMSusenum/MSpirusenum * 100), dig=2)

EXMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Extinct"),]
EXMSusenum <- nrow(EXMSuse)
EXMSuseper <-round((EXMSusenum/MSpirusenum * 100), dig=2)

LR.cdMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Lower Risk/conservation dependent"),]
LR.cdMSusenum <- nrow(LR.cdMSuse)
LR.cdMSuseper <-round((LR.cdMSusenum/MSpirusenum * 100), digits = 2)

LR.lcMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Lower Risk/least concern"),]
LR.lcMSusenum <- nrow(LR.lcMSuse)
LR.lcMSuseper <-round((LR.lcMSusenum/MSpirusenum * 100), digits=2)

LCMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Least Concern"),]
LCMSusenum <- nrow(LCMSuse) + LR.cdMSusenum + LR.lcMSusenum 
LCMSuseper <-round((LCMSusenum/MSpirusenum * 100), dig=2)

DDMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Data Deficient"),]
DDMSusenum <- nrow(DDMSuse)
DDMSuseper <-round((DDMSusenum/MSpirusenum * 100), digits = 2)

VUMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Vulnerable"),]
VUMSusenum <- nrow(VUMSuse)
VUMSuseper <-round((VUMSusenum/MSpirusenum * 100), digits = 2)

LR.ntMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Lower Risk/near threatened"),]
LR.ntMSusenum <- nrow(LR.ntMSuse)
LR.ntMSuseper <-round((LR.ntMSusenum/MSpirusenum * 100), digits = 2)

NTMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Near Threatened"),]
NTMSusenum <- nrow(NTMSuse) + LR.ntMSusenum
NTMSuseper <-round((NTMSusenum/MSpirusenum * 100), digits = 2)

NLMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "Not listed"),]
NLMSusenum <- nrow(NLMSuse)
NLMSuseper <-round((NLMSusenum/MSpirusenum * 100), digits = 2)

EWMSuse <- MSpiruse[which(MSpiruse$redListCategoryTitle == "EW"),]
EWMSusenum <- nrow(EWMSuse)
EWMSuseper <-round((EWMSusenum/MSpirusenum * 100), digits = 2)

EndMSuse <- CRMSusenum + ENMSusenum + VUMSusenum
EndMSusePer <-round((EndMSuse/MSpirusenum * 100), digits=2)
EndMSusePer

# plot proportion of MED ONLY species against red list category for spiritual and physical use species - Fig 4 B
RedListCat3 <- c("CR", "EN", "EX", "LC", "DD", "VU", "NT", "NL")
PhysicalUse <- c(CRMPuseper, ENMPuseper,EXMPuseper, LCMPuseper, DDMPuseper, VUMPuseper, NTMPuseper, NLMPuseper)
SpiritualUse <- c(CRMSuseper, ENMSuseper,EXMSuseper, LCMSuseper, DDMSuseper, VUMSuseper, NTMSuseper, NLMSuseper)
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

##------------------------------------------------------------------------------

                        #Fisher's Exact Test

##------------------------------------------------------------------------------

#spiritual vs non-spiritual 'Endangered'
fisher.test(matrix(c(ENSusenum, ENPusenum, (Spirusenum - ENSusenum), (Physusenum - ENPusenum)), ncol = 2))

#spiritual vs non-spiritual 'Critically Endangered'
fisher.test(matrix(c(CRSusenum, CRPusenum, (Spirusenum - CRSusenum), (Physusenum - CRPusenum)), ncol = 2))

#spiritual vs non-spiritual 'Vulnerable'
fisher.test(matrix(c(VUSusenum, VUPusenum, (Spirusenum - VUSusenum), (Physusenum - VUPusenum)), ncol = 2))

#spiritual vs non-spiritual 'Near Threatened'
fisher.test(matrix(c(NTSusenum, NTPusenum, (Spirusenum - NTSusenum), (Physusenum - NTPusenum)), ncol = 2))

#spiritual vs non-spiritual 'Extinct'
fisher.test(matrix(c(EXSusenum, EXPusenum, (Spirusenum - EXSusenum), (Physusenum - EXPusenum)), ncol = 2))

#spiritual vs non-spiritual 'Least Concern'
fisher.test(matrix(c(LCSusenum, LCPusenum, (Spirusenum - LCSusenum), (Physusenum - LCPusenum)), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN
fisher.test(matrix(c(ENMSusenum, ENMPusenum, (MSpirusenum - ENMSusenum), (MPhysusenum - ENMPusenum)), ncol = 2))

#MED ONLY spiritual vs non-spiritual CR
fisher.test(matrix(c(CRMSusenum, CRMPusenum, (MSpirusenum - CRMSusenum), (MPhysusenum - CRMPusenum)), ncol = 2))

#MED ONLY spiritual vs non-spiritual EX
fisher.test(matrix(c(EXMSusenum, EXMPusenum, (MSpirusenum - EXMSusenum), (MPhysusenum - EXMPusenum)), ncol = 2))

#MED ONLY spiritual vs non-spiritual VU
fisher.test(matrix(c(VUMSusenum, VUMPusenum, (MSpirusenum - VUMSusenum), (MPhysusenum - VUMPusenum)), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN + CR
fisher.test(matrix(c((ENMSusenum + CRMSusenum), (ENMPusenum + CRMPusenum), (MSpirusenum - (ENMSusenum + CRMSusenum)), (MPhysusenum - (ENMPusenum + CRMPusenum))), ncol = 2))

#MED ONLY spiritual vs non-spiritual EN + CR + VU 'At-risk'
fisher.test(matrix(c((ENMSusenum + CRMSusenum + VUMSusenum), (ENMPusenum + CRMPusenum + VUMPusenum), (MSpirusenum - (ENMSusenum + CRMSusenum + VUMSusenum)), (MPhysusenum - (ENMPusenum + CRMPusenum + VUMPusenum))), ncol = 2))

