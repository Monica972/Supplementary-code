# Set working directory

setwd("~/Documents/Honours")
getwd()

# Install packages to be used

install.packages("gridExtra")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("shades")

# Load packages to use

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

##------------------------------------------------------------------------------

                #Fisher's Exact Tests

##------------------------------------------------------------------------------

#Med only vs Mixed CR
fisher.test(matrix(c(MedCRnum, MixCRnum, (Medonlynum - MedCRnum), (Mixednum - MixCRnum)), ncol = 2))

#Med only vs Mixed EX
fisher.test(matrix(c(MedEXnum, MixEXnum, (Medonlynum - MedEXnum), (Mixednum - MixEXnum)), ncol = 2))

#Med only vs Mixed EN
fisher.test(matrix(c(MedENnum, MixENnum, (Medonlynum - MedENnum), (Mixednum - MixENnum)), ncol = 2))

#Med only vs Mixed VU
fisher.test(matrix(c(MedVUnum, MixVUnum, (Medonlynum - MedVUnum), (Mixednum - MixVUnum)), ncol = 2))

#Med only vs Mixed NT
fisher.test(matrix(c(MedNTnum, MixNTnum, (Medonlynum - MedNTnum), (Mixednum - MixNTnum)), ncol = 2))

#Med only vs Mixed at risk (VU, CR, EN)
fisher.test(matrix(c(atRiskMednum, atRiskMixnum, (Medonlynum - atRiskMednum), (Mixednum - atRiskMixnum)), ncol = 2))

