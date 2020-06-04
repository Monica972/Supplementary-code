#Load packages
library(gridExtra)
library(ggplot2)
library(fmsb)

#Set working directory
setwd("~/Documents/Honours")
getwd()

#Read in data
use.data<- read.csv("./DATA/Shortdata.csv")

#remove any duplicates
use_clean <- use.data[!duplicated(use.data),]
use_clean <- use_clean[!duplicated(use_clean$scientific_name),]

#filter medicinal use
med <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
obsnum <- nrow(med)

#join by id column
threatmed <- threatmed[which(threatmed$useTradeId..30 =="TRUE"),]
threatobsnum <- nrow(threatmed)

## -----------------------------------------------------------------------

# Threats by stressors 

## -----------------------------------------------------------------------
#Threat 1: Residential and commercial development

ResEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y1.1) | grepl("1.1", threatmed$Y1.2) | grepl("1.1", threatmed$Y1.3))
ResEcoConnum <- nrow(ResEcoCon)
ResEcoConper <-round((ResEcoConnum/threatobsnum * 100), dig=2)

ResEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y1.1) | grepl("1.2", threatmed$Y1.2) | grepl("1.2", threatmed$Y1.3))
ResEcoDegnum <- nrow(ResEcoDeg)
ResEcoDegper <-round((ResEcoDegnum/threatobsnum * 100), dig=2)

ResIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y1.1) | grepl("1.3", threatmed$Y1.2) | grepl("1.3", threatmed$Y1.3))
ResIndirEcoEffnum <- nrow(ResIndirEcoEff)
ResIndirEcoEffper <-round((ResIndirEcoEffnum/threatobsnum * 100), dig=2)

ResSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y1.1) | grepl("2.1", threatmed$Y1.2) | grepl("2.1", threatmed$Y1.3))
ResSpecMortnum <- nrow(ResSpecMort)
ResSpecMortper <-round((ResSpecMortnum/threatobsnum * 100), dig=2)

ResSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y1.1) | grepl("2.2", threatmed$Y1.2) | grepl("2.2", threatmed$Y1.3))
ResSpecDistnum <- nrow(ResSpecDist)
ResSpecDistper <-round((ResSpecDistnum/threatobsnum * 100), dig=2)

ResHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y1.1) | grepl("2.3.1", threatmed$Y1.2) | grepl("2.3.1", threatmed$Y1.3))
ResHybridnum <- nrow(ResHybrid)
ResHybridper <-round((ResHybridnum/threatobsnum * 100), dig=2)

ResComp <-subset(threatmed, grepl("2.3.2", threatmed$Y1.1) | grepl("2.3.2", threatmed$Y1.2) | grepl("2.3.2", threatmed$Y1.3))
ResCompnum <- nrow(ResComp)
ResCompper <-round((ResCompnum/threatobsnum * 100), dig=2)

ResLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y1.1) | grepl("2.3.3", threatmed$Y1.2) | grepl("2.3.3", threatmed$Y1.3))
ResLossMutnum <- nrow(ResLossMut)
ResLossMutper <-round((ResLossMutnum/threatobsnum * 100), dig=2)

ResLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y1.1) | grepl("2.3.4", threatmed$Y1.2) | grepl("2.3.4", threatmed$Y1.3))
ResLossPollnum <- nrow(ResLossPoll)
ResLossPollper <-round((ResLossPollnum/threatobsnum * 100), dig=2)

ResInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y1.1) | grepl("2.3.5", threatmed$Y1.2) | grepl("2.3.5", threatmed$Y1.3))
ResInbreednum <- nrow(ResInbreed)
ResInbreedper <-round((ResInbreednum/threatobsnum * 100), dig=2)

ResSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y1.1) | grepl("2.3.6", threatmed$Y1.2) | grepl("2.3.6", threatmed$Y1.3))
ResSkewSexnum <- nrow(ResSkewSex)
ResSkewSexper <-round((ResSkewSexnum/threatobsnum * 100), dig=2)

ResRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y1.1) | grepl("2.3.7", threatmed$Y1.2) | grepl("2.3.7", threatmed$Y1.3))
ResRedRepSucnum <- nrow(ResRedRepSuc)
ResRedRepSucper <-round((ResRedRepSucnum/threatobsnum * 100), dig=2)

ResOth <-subset(threatmed, grepl("2.3.8", threatmed$Y1.1) | grepl("2.3.8", threatmed$Y1.2) | grepl("2.3.8", threatmed$Y1.3))
ResOthnum <- nrow(ResOth)
ResOthper <-round((ResOthnum/threatobsnum * 100), dig=2)

Restotal <- (ResEcoConnum +ResEcoDegnum + ResIndirEcoEffnum + ResPastUnnum + ResSpecDistnum + ResHybridnum + ResCompnum + ResLossMutnum + ResLossPollnum + ResInbreednum + ResSkewSexnum + ResRedRepSucnum + ResOthnum)
ResPer <- round((Restotal/threatobsnum * 100), dig = 2)

#Threat 2: Agriculture and aquaculture
AgriEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y2.1) | grepl("1.1", threatmed$Y2.1.1) | grepl("1.1", threatmed$Y2.1.2) | grepl("1.1", threatmed$Y2.1.3) | grepl("1.1", threatmed$Y2.1.4) |
                      grepl("1.1", threatmed$Y2.2) | grepl("1.1", threatmed$Y2.2.1) | grepl("1.1", threatmed$Y2.2.2) | grepl("1.1", threatmed$Y2.2.3) |
                      grepl("1.1", threatmed$Y2.3) | grepl("1.1", threatmed$Y2.3.1) | grepl("1.1", threatmed$Y2.3.2) | grepl("1.1", threatmed$Y2.3.3) | grepl("1.1", threatmed$Y2.3.4) |
                      grepl("1.1", threatmed$Y2.4) | grepl("1.1", threatmed$Y2.4.1) | grepl("1.1", threatmed$Y2.4.2) | grepl("1.1", threatmed$Y2.4.3))
AgriEcoConnum <- nrow(AgriEcoCon)
AgriEcoConper <-round((AgriEcoConnum/threatobsnum * 100), dig=2)

AgriEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y2.1) | grepl("1.2", threatmed$Y2.1.1) | grepl("1.2", threatmed$Y2.1.2) | grepl("1.2", threatmed$Y2.1.3) | grepl("1.2", threatmed$Y2.1.4) |
                      grepl("1.2", threatmed$Y2.2) | grepl("1.2", threatmed$Y2.2.1) | grepl("1.2", threatmed$Y2.2.2) | grepl("1.2", threatmed$Y2.2.3) |
                      grepl("1.2", threatmed$Y2.3) | grepl("1.2", threatmed$Y2.3.1) | grepl("1.2", threatmed$Y2.3.2) | grepl("1.2", threatmed$Y2.3.3) | grepl("1.2", threatmed$Y2.3.4) |
                      grepl("1.2", threatmed$Y2.4) | grepl("1.2", threatmed$Y2.4.1) | grepl("1.2", threatmed$Y2.4.2) | grepl("1.2", threatmed$Y2.4.3))
AgriEcoDegnum <- nrow(AgriEcoDeg)
AgriEcoDegper <-round((AgriEcoDegnum/threatobsnum * 100), dig=2)

AgriIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y2.1) | grepl("1.3", threatmed$Y2.1.1) | grepl("1.3", threatmed$Y2.1.2) | grepl("1.3", threatmed$Y2.1.3) | grepl("1.3", threatmed$Y2.1.4) |
                           grepl("1.3", threatmed$Y2.2) | grepl("1.3", threatmed$Y2.2.1) | grepl("1.3", threatmed$Y2.2.2) | grepl("1.3", threatmed$Y2.2.3) |
                           grepl("1.3", threatmed$Y2.3) | grepl("1.3", threatmed$Y2.3.1) | grepl("1.3", threatmed$Y2.3.2) | grepl("1.3", threatmed$Y2.3.3) | grepl("1.3", threatmed$Y2.3.4) |
                           grepl("1.3", threatmed$Y2.4) | grepl("1.3", threatmed$Y2.4.1) | grepl("1.3", threatmed$Y2.4.2) | grepl("1.3", threatmed$Y2.4.3))
AgriIndirEcoEffnum <- nrow(AgriIndirEcoEff)
AgriIndirEcoEffper <-round((AgriIndirEcoEffnum/threatobsnum * 100), dig=2)

AgriSpecMort <- subset(threatmed, grepl("2.1", threatmed$Y2.1) | grepl("2.1", threatmed$Y2.1.1) | grepl("2.1", threatmed$Y2.1.2) | grepl("2.1", threatmed$Y2.1.3) | grepl("2.1", threatmed$Y2.1.4) |
                         grepl("2.1", threatmed$Y2.2) | grepl("2.1", threatmed$Y2.2.1) | grepl("2.1", threatmed$Y2.2.2) | grepl("2.1", threatmed$Y2.2.3) |
                         grepl("2.1", threatmed$Y2.3) | grepl("2.1", threatmed$Y2.3.1) | grepl("2.1", threatmed$Y2.3.2) | grepl("2.1", threatmed$Y2.3.3) | grepl("2.1", threatmed$Y2.3.4) |
                         grepl("2.1", threatmed$Y2.4) | grepl("2.1", threatmed$Y2.4.1) | grepl("2.1", threatmed$Y2.4.2) | grepl("2.1", threatmed$Y2.4.3))
AgriSpecMortnum <- nrow(AgriSpecMort)
AgriSpecMortper <-round((AgriSpecMortnum/threatobsnum * 100), dig=2)

AgriSpecDist <- subset(threatmed, grepl("2.2", threatmed$Y2.1) | grepl("2.2", threatmed$Y2.1.1) | grepl("2.2", threatmed$Y2.1.2) | grepl("2.2", threatmed$Y2.1.3) | grepl("2.2", threatmed$Y2.1.4) |
                         grepl("2.2", threatmed$Y2.2) | grepl("2.2", threatmed$Y2.2.1) | grepl("2.2", threatmed$Y2.2.2) | grepl("2.2", threatmed$Y2.2.3) |
                         grepl("2.2", threatmed$Y2.3) | grepl("2.2", threatmed$Y2.3.1) | grepl("2.2", threatmed$Y2.3.2) | grepl("2.2", threatmed$Y2.3.3) | grepl("2.2", threatmed$Y2.3.4) |
                         grepl("2.2", threatmed$Y2.4) | grepl("2.2", threatmed$Y2.4.1) | grepl("2.2", threatmed$Y2.4.2) | grepl("2.2", threatmed$Y2.4.3))
AgriSpecDistnum <- nrow(AgriSpecDist)
AgriSpecDistper <-round((AgriSpecDistnum/threatobsnum * 100), dig=2)

AgriHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y2.1) | grepl("2.3.1", threatmed$Y2.1.1) | grepl("2.3.1", threatmed$Y2.1.2) | grepl("2.3.1", threatmed$Y2.1.3) | grepl("2.3.1", threatmed$Y2.1.4) |
                      grepl("2.3.1", threatmed$Y2.2) | grepl("2.3.1", threatmed$Y2.2.1) | grepl("2.3.1", threatmed$Y2.2.2) | grepl("2.3.1", threatmed$Y2.2.3) |
                      grepl("2.3.1", threatmed$Y2.3) | grepl("2.3.1", threatmed$Y2.3.1) | grepl("2.3.1", threatmed$Y2.3.2) | grepl("2.3.1", threatmed$Y2.3.3) | grepl("2.3.1", threatmed$Y2.3.4) |
                      grepl("2.3.1", threatmed$Y2.4) | grepl("2.3.1", threatmed$Y2.4.1) | grepl("2.3.1", threatmed$Y2.4.2) | grepl("2.3.1", threatmed$Y2.4.3))
AgriHybridnum <- nrow(AgriHybrid)
AgriHybridper <-round((AgriHybridnum/threatobsnum * 100), dig=2)

AgriComp <-subset(threatmed, grepl("2.3.2", threatmed$Y2.1) | grepl("2.3.2", threatmed$Y2.1.1) | grepl("2.3.2", threatmed$Y2.1.2) | grepl("2.3.2", threatmed$Y2.1.3) | grepl("2.3.2", threatmed$Y2.1.4) |
                    grepl("2.3.2", threatmed$Y2.2) | grepl("2.3.2", threatmed$Y2.2.1) | grepl("2.3.2", threatmed$Y2.2.2) | grepl("2.3.2", threatmed$Y2.2.3) |
                    grepl("2.3.2", threatmed$Y2.3) | grepl("2.3.2", threatmed$Y2.3.1) | grepl("2.3.2", threatmed$Y2.3.2) | grepl("2.3.2", threatmed$Y2.3.3) | grepl("2.3.2", threatmed$Y2.3.4) |
                    grepl("2.3.2", threatmed$Y2.4) | grepl("2.3.2", threatmed$Y2.4.1) | grepl("2.3.2", threatmed$Y2.4.2) | grepl("2.3.2", threatmed$Y2.4.3))
AgriCompnum <- nrow(AgriComp)
AgriCompper <-round((AgriCompnum/threatobsnum * 100), dig=2)

AgriLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y2.1) | grepl("2.3.3", threatmed$Y2.1.1) | grepl("2.3.3", threatmed$Y2.1.2) | grepl("2.3.3", threatmed$Y2.1.3) | grepl("2.3.3", threatmed$Y2.1.4) |
                       grepl("2.3.3", threatmed$Y2.2) | grepl("2.3.3", threatmed$Y2.2.1) | grepl("2.3.3", threatmed$Y2.2.2) | grepl("2.3.3", threatmed$Y2.2.3) |
                       grepl("2.3.3", threatmed$Y2.3) | grepl("2.3.3", threatmed$Y2.3.1) | grepl("2.3.3", threatmed$Y2.3.2) | grepl("2.3.3", threatmed$Y2.3.3) | grepl("2.3.3", threatmed$Y2.3.4) |
                       grepl("2.3.3", threatmed$Y2.4) | grepl("2.3.3", threatmed$Y2.4.1) | grepl("2.3.3", threatmed$Y2.4.2) | grepl("2.3.3", threatmed$Y2.4.3))
AgriLossMutnum <- nrow(AgriLossMut)
AgriLossMutper <-round((AgriLossMutnum/threatobsnum * 100), dig=2)

AgriLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y2.1) | grepl("2.3.4", threatmed$Y2.1.1) | grepl("2.3.4", threatmed$Y2.1.2) | grepl("2.3.4", threatmed$Y2.1.3) | grepl("2.3.4", threatmed$Y2.1.4) |
                        grepl("2.3.4", threatmed$Y2.2) | grepl("2.3.4", threatmed$Y2.2.1) | grepl("2.3.4", threatmed$Y2.2.2) | grepl("2.3.4", threatmed$Y2.2.3) |
                        grepl("2.3.4", threatmed$Y2.3) | grepl("2.3.4", threatmed$Y2.3.1) | grepl("2.3.4", threatmed$Y2.3.2) | grepl("2.3.4", threatmed$Y2.3.3) | grepl("2.3.4", threatmed$Y2.3.4) |
                        grepl("2.3.4", threatmed$Y2.4) | grepl("2.3.4", threatmed$Y2.4.1) | grepl("2.3.4", threatmed$Y2.4.2) | grepl("2.3.4", threatmed$Y2.4.3))
AgriLossPollnum <- nrow(AgriLossPoll)
AgriLossPollper <-round((AgriLossPollnum/threatobsnum * 100), dig=2)

AgriInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y2.1) | grepl("2.3.5", threatmed$Y2.1.1) | grepl("2.3.5", threatmed$Y2.1.2) | grepl("2.3.5", threatmed$Y2.1.3) | grepl("2.3.5", threatmed$Y2.1.4) |
                       grepl("2.3.5", threatmed$Y2.2) | grepl("2.3.5", threatmed$Y2.2.1) | grepl("2.3.5", threatmed$Y2.2.2) | grepl("2.3.5", threatmed$Y2.2.3) |
                       grepl("2.3.5", threatmed$Y2.3) | grepl("2.3.5", threatmed$Y2.3.1) | grepl("2.3.5", threatmed$Y2.3.2) | grepl("2.3.5", threatmed$Y2.3.3) | grepl("2.3.5", threatmed$Y2.3.4) |
                       grepl("2.3.5", threatmed$Y2.4) | grepl("2.3.5", threatmed$Y2.4.1) | grepl("2.3.5", threatmed$Y2.4.2) | grepl("2.3.5", threatmed$Y2.4.3))
AgriInbreednum <- nrow(AgriInbreed)
AgriInbreedper <-round((AgriInbreednum/threatobsnum * 100), dig=2)

AgriSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y2.1) | grepl("2.3.6", threatmed$Y2.1.1) | grepl("2.3.6", threatmed$Y2.1.2) | grepl("2.3.6", threatmed$Y2.1.3) | grepl("2.3.6", threatmed$Y2.1.4) |
                       grepl("2.3.6", threatmed$Y2.2) | grepl("2.3.6", threatmed$Y2.2.1) | grepl("2.3.6", threatmed$Y2.2.2) | grepl("2.3.6", threatmed$Y2.2.3) |
                       grepl("2.3.6", threatmed$Y2.3) | grepl("2.3.6", threatmed$Y2.3.1) | grepl("2.3.6", threatmed$Y2.3.2) | grepl("2.3.6", threatmed$Y2.3.3) | grepl("2.3.6", threatmed$Y2.3.4) |
                       grepl("2.3.6", threatmed$Y2.4) | grepl("2.3.6", threatmed$Y2.4.1) | grepl("2.3.6", threatmed$Y2.4.2) | grepl("2.3.6", threatmed$Y2.4.3))
AgriSkewSexnum <- nrow(AgriSkewSex)
AgriSkewSexper <-round((AgriSkewSexnum/threatobsnum * 100), dig=2)

AgriRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y2.1) | grepl("2.3.7", threatmed$Y2.1.1) | grepl("2.3.7", threatmed$Y2.1.2) | grepl("2.3.7", threatmed$Y2.1.3) | grepl("2.3.7", threatmed$Y2.1.4) |
                         grepl("2.3.7", threatmed$Y2.2) | grepl("2.3.7", threatmed$Y2.2.1) | grepl("2.3.7", threatmed$Y2.2.2) | grepl("2.3.7", threatmed$Y2.2.3) |
                         grepl("2.3.7", threatmed$Y2.3) | grepl("2.3.7", threatmed$Y2.3.1) | grepl("2.3.7", threatmed$Y2.3.2) | grepl("2.3.7", threatmed$Y2.3.3) | grepl("2.3.7", threatmed$Y2.3.4) |
                         grepl("2.3.7", threatmed$Y2.4) | grepl("2.3.7", threatmed$Y2.4.1) | grepl("2.3.7", threatmed$Y2.4.2) | grepl("2.3.7", threatmed$Y2.4.3))
AgriRedRepSucnum <- nrow(AgriRedRepSuc)
AgriRedRepSucper <-round((AgriRedRepSucnum/threatobsnum * 100), dig=2)

AgriOth <-subset(threatmed, grepl("2.3.8", threatmed$Y2.1) | grepl("2.3.8", threatmed$Y2.1.1) | grepl("2.3.8", threatmed$Y2.1.2) | grepl("2.3.8", threatmed$Y2.1.3) | grepl("2.3.8", threatmed$Y2.1.4) |
                   grepl("2.3.8", threatmed$Y2.2) | grepl("2.3.8", threatmed$Y2.2.1) | grepl("2.3.8", threatmed$Y2.2.2) | grepl("2.3.8", threatmed$Y2.2.3) |
                   grepl("2.3.8", threatmed$Y2.3) | grepl("2.3.8", threatmed$Y2.3.1) | grepl("2.3.8", threatmed$Y2.3.2) | grepl("2.3.8", threatmed$Y2.3.3) | grepl("2.3.8", threatmed$Y2.3.4) |
                   grepl("2.3.8", threatmed$Y2.4) | grepl("2.3.8", threatmed$Y2.4.1) | grepl("2.3.8", threatmed$Y2.4.2) | grepl("2.3.8", threatmed$Y2.4.3))
AgriOthnum <- nrow(AgriOth)
AgriOthper <-round((AgriOthnum/threatobsnum * 100), dig=2)

Agritotal <- (AgriEcoConnum + AgriEcoDegnum + AgriIndirEcoEffnum + AgriPastUnnum + AgriSpecDistnum + AgriHybridnum + AgriCompnum + AgriLossMutnum + AgriLossPollnum + AgriInbreednum + AgriSkewSexnum + AgriRedRepSucnum + AgriOthnum)
AgriPer <- round((Agritotal/threatobsnum * 100), dig = 2)

#Threat 3: Energy Production and mining
EnEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y3.1) | grepl("1.1", threatmed$Y3.2) | grepl("1.1", threatmed$Y3.3))
EnEcoConnum <- nrow(EnEcoCon)
EnEcoConper <-round((EnEcoConnum/threatobsnum * 100), dig=2)

EnEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y3.1) | grepl("1.2", threatmed$Y3.2) | grepl("1.2", threatmed$Y3.3))
EnEcoDegnum <- nrow(EnEcoDeg)
EnEcoDegper <-round((EnEcoDegnum/threatobsnum * 100), dig=2)

EnIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y3.1) | grepl("1.3", threatmed$Y3.2) | grepl("1.3", threatmed$Y3.3))
EnIndirEcoEffnum <- nrow(EnIndirEcoEff)
EnIndirEcoEffper <-round((EnIndirEcoEffnum/threatobsnum * 100), dig=2)

EnSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y3.1) | grepl("2.1", threatmed$Y3.2) | grepl("2.1", threatmed$Y3.3))
EnSpecMortnum <- nrow(EnSpecMort)
EnSpecMortper <-round((EnSpecMortnum/threatobsnum * 100), dig=2)

EnSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y3.1) | grepl("2.2", threatmed$Y3.2) | grepl("2.2", threatmed$Y3.3))
EnSpecDistnum <- nrow(EnSpecDist)
EnSpecDistper <-round((EnSpecDistnum/threatobsnum * 100), dig=2)

EnHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y3.1) | grepl("2.3.1", threatmed$Y3.2) | grepl("2.3.1", threatmed$Y3.3))
EnHybridnum <- nrow(EnHybrid)
EnHybridper <-round((EnHybridnum/threatobsnum * 100), dig=2)

EnComp <-subset(threatmed, grepl("2.3.2", threatmed$Y3.1) | grepl("2.3.2", threatmed$Y3.2) | grepl("2.3.2", threatmed$Y3.3))
EnCompnum <- nrow(EnComp)
EnCompper <-round((EnCompnum/threatobsnum * 100), dig=2)

EnLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y3.1) | grepl("2.3.3", threatmed$Y3.2) | grepl("2.3.3", threatmed$Y3.3))
EnLossMutnum <- nrow(EnLossMut)
EnLossMutper <-round((EnLossMutnum/threatobsnum * 100), dig=2)

EnLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y3.1) | grepl("2.3.4", threatmed$Y3.2) | grepl("2.3.4", threatmed$Y3.3))
EnLossPollnum <- nrow(EnLossPoll)
EnLossPollper <-round((EnLossPollnum/threatobsnum * 100), dig=2)

EnInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y3.1) | grepl("2.3.5", threatmed$Y3.2) | grepl("2.3.5", threatmed$Y3.3))
EnInbreednum <- nrow(EnInbreed)
EnInbreedper <-round((EnInbreednum/threatobsnum * 100), dig=2)

EnSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y3.1) | grepl("2.3.6", threatmed$Y3.2) | grepl("2.3.6", threatmed$Y3.3))
EnSkewSexnum <- nrow(EnSkewSex)
EnSkewSexper <-round((EnSkewSexnum/threatobsnum * 100), dig=2)

EnRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y3.1) | grepl("2.3.7", threatmed$Y3.2) | grepl("2.3.7", threatmed$Y3.3))
EnRedRepSucnum <- nrow(EnRedRepSuc)
EnRedRepSucper <-round((EnRedRepSucnum/threatobsnum * 100), dig=2)

EnOth <-subset(threatmed, grepl("2.3.8", threatmed$Y3.1) | grepl("2.3.8", threatmed$Y3.2) | grepl("2.3.8", threatmed$Y3.3))
EnOthnum <- nrow(EnOth)
EnOthper <-round((EnOthnum/threatobsnum * 100), dig=2)

Entotal <- (EnEcoConnum + EnEcoDegnum + EnIndirEcoEffnum + EnPastUnnum + EnSpecDistnum + EnHybridnum + EnCompnum + EnLossMutnum + EnLossPollnum + EnInbreednum + EnSkewSexnum + EnRedRepSucnum + EnOthnum)
EnPer <- round((Entotal/threatobsnum * 100), dig = 2)

#Threat 4: Transportation and service corridors
TransEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y4.1) | grepl("1.1", threatmed$Y4.2) | grepl("1.1", threatmed$Y4.3) | grepl("1.1", threatmed$Y4.4))
TransEcoConnum <- nrow(TransEcoCon)
TransEcoConper <-round((TransEcoConnum/threatobsnum * 100), dig=2)

TransEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y4.1) | grepl("1.2", threatmed$Y4.2) | grepl("1.2", threatmed$Y4.3) | grepl("1.2", threatmed$Y4.4))
TransEcoDegnum <- nrow(TransEcoDeg)
TransEcoDegper <-round((TransEcoDegnum/threatobsnum * 100), dig=2)

TransIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y4.1) | grepl("1.3", threatmed$Y4.2) | grepl("1.3", threatmed$Y4.3) | grepl("1.3", threatmed$Y4.4))
TransIndirEcoEffnum <- nrow(TransIndirEcoEff)
TransIndirEcoEffper <-round((TransIndirEcoEffnum/threatobsnum * 100), dig=2)

TransSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y4.1) | grepl("2.1", threatmed$Y4.2) | grepl("2.1", threatmed$Y4.3) | grepl("2.1", threatmed$Y4.4))
TransSpecMortnum <- nrow(TransSpecMort)
TransSpecMortper <-round((TransSpecMortnum/threatobsnum * 100), dig=2)

TransSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y4.1) | grepl("2.2", threatmed$Y4.2) | grepl("2.2", threatmed$Y4.3) | grepl("2.2", threatmed$Y4.4))
TransSpecDistnum <- nrow(TransSpecDist)
TransSpecDistper <-round((TransSpecDistnum/threatobsnum * 100), dig=2)

TransHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y4.1) | grepl("2.3.1", threatmed$Y4.2) | grepl("2.3.1", threatmed$Y4.3) | grepl("2.3.1", threatmed$Y4.4))
TransHybridnum <- nrow(TransHybrid)
TransHybridper <-round((TransHybridnum/threatobsnum * 100), dig=2)

TransComp <-subset(threatmed, grepl("2.3.2", threatmed$Y4.1) | grepl("2.3.2", threatmed$Y4.2) | grepl("2.3.2", threatmed$Y4.3) | grepl("2.3.2", threatmed$Y4.4))
TransCompnum <- nrow(TransComp)
TransCompper <-round((TransCompnum/threatobsnum * 100), dig=2)

TransLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y4.1) | grepl("2.3.3", threatmed$Y4.2) | grepl("2.3.3", threatmed$Y4.3) | grepl("2.3.3", threatmed$Y4.4))
TransLossMutnum <- nrow(TransLossMut)
TransLossMutper <-round((TransLossMutnum/threatobsnum * 100), dig=2)

TransLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y4.1) | grepl("2.3.4", threatmed$Y4.2) | grepl("2.3.4", threatmed$Y4.3) | grepl("2.3.4", threatmed$Y4.4))
TransLossPollnum <- nrow(TransLossPoll)
TransLossPollper <-round((TransLossPollnum/threatobsnum * 100), dig=2)

TransInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y4.1) | grepl("2.3.5", threatmed$Y4.2) | grepl("2.3.5", threatmed$Y4.3) | grepl("2.3.5", threatmed$Y4.4))
TransInbreednum <- nrow(TransInbreed)
TransInbreedper <-round((TransInbreednum/threatobsnum * 100), dig=2)

TransSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y4.1) | grepl("2.3.6", threatmed$Y4.2) | grepl("2.3.6", threatmed$Y4.3) | grepl("2.3.6", threatmed$Y4.4))
TransSkewSexnum <- nrow(TransSkewSex)
TransSkewSexper <-round((TransSkewSexnum/threatobsnum * 100), dig=2)

TransRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y4.1) | grepl("2.3.7", threatmed$Y4.2) | grepl("2.3.7", threatmed$Y4.3) | grepl("2.3.7", threatmed$Y4.4))
TransRedRepSucnum <- nrow(TransRedRepSuc)
TransRedRepSucper <-round((TransRedRepSucnum/threatobsnum * 100), dig=2)

TransOth <-subset(threatmed, grepl("2.3.8", threatmed$Y4.1) | grepl("2.3.8", threatmed$Y4.2) | grepl("2.3.8", threatmed$Y4.3) | grepl("2.3.8", threatmed$Y4.4))
TransOthnum <- nrow(TransOth)
TransOthper <-round((TransOthnum/threatobsnum * 100), dig=2)

Transtotal <- (TransEcoConnum + TransEcoDegnum + TransIndirEcoEffnum + TransPastUnnum + TransSpecDistnum + TransHybridnum + TransCompnum + TransLossMutnum + TransLossPollnum + TransInbreednum + TransSkewSexnum + TransRedRepSucnum + TransOthnum)
TransPer <- round((Transtotal/threatobsnum * 100), dig = 2)

#Threat 5: Biological resource use
BioEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y5.1) | grepl("1.1", threatmed$Y5.1.1) | grepl("1.1", threatmed$Y5.1.2) | grepl("1.1", threatmed$Y5.1.3) | grepl("1.1", threatmed$Y5.1.4) |
                     grepl("1.1", threatmed$Y5.2) | grepl("1.1", threatmed$Y5.2.1) | grepl("1.1", threatmed$Y5.2.2) | grepl("1.1", threatmed$Y5.2.3) | grepl("1.1", threatmed$Y5.2.4) | 
                     grepl("1.1", threatmed$Y5.3) | grepl("1.1", threatmed$Y5.3.1) | grepl("1.1", threatmed$Y5.3.2) | grepl("1.1", threatmed$Y5.3.3) | grepl("1.1", threatmed$Y5.3.4) |
                     grepl("1.1", threatmed$Y5.4) | grepl("1.1", threatmed$Y5.4.1) | grepl("1.1", threatmed$Y5.4.2) | grepl("1.1", threatmed$Y5.4.3) | grepl("1.1", threatmed$Y5.4.4) | grepl("1.1", threatmed$Y5.4.5) | grepl("1.1", threatmed$Y5.4.6))
BioEcoConnum <- nrow(BioEcoCon)
BioEcoConper <-round((BioEcoConnum/threatobsnum * 100), dig=2)

BioEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y5.1) | grepl("1.2", threatmed$Y5.1.1) | grepl("1.2", threatmed$Y5.1.2) | grepl("1.2", threatmed$Y5.1.3) | grepl("1.2", threatmed$Y5.1.4) |
                     grepl("1.2", threatmed$Y5.2) | grepl("1.2", threatmed$Y5.2.1) | grepl("1.2", threatmed$Y5.2.2) | grepl("1.2", threatmed$Y5.2.3) | grepl("1.2", threatmed$Y5.2.4) | 
                     grepl("1.2", threatmed$Y5.3) | grepl("1.2", threatmed$Y5.3.1) | grepl("1.2", threatmed$Y5.3.2) | grepl("1.2", threatmed$Y5.3.3) | grepl("1.2", threatmed$Y5.3.4) |
                     grepl("1.2", threatmed$Y5.4) | grepl("1.2", threatmed$Y5.4.1) | grepl("1.2", threatmed$Y5.4.2) | grepl("1.2", threatmed$Y5.4.3) | grepl("1.2", threatmed$Y5.4.4) | grepl("1.2", threatmed$Y5.4.5) | grepl("1.2", threatmed$Y5.4.6))
BioEcoDegnum <- nrow(BioEcoDeg)
BioEcoDegper <-round((BioEcoDegnum/threatobsnum * 100), dig=2)

BioIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y5.1) | grepl("1.3", threatmed$Y5.1.1) | grepl("1.3", threatmed$Y5.1.2) | grepl("1.3", threatmed$Y5.1.3) | grepl("1.3", threatmed$Y5.1.4) |
                          grepl("1.3", threatmed$Y5.2) | grepl("1.3", threatmed$Y5.2.1) | grepl("1.3", threatmed$Y5.2.2) | grepl("1.3", threatmed$Y5.2.3) | grepl("1.3", threatmed$Y5.2.4) | 
                          grepl("1.3", threatmed$Y5.3) | grepl("1.3", threatmed$Y5.3.1) | grepl("1.3", threatmed$Y5.3.2) | grepl("1.3", threatmed$Y5.3.3) | grepl("1.3", threatmed$Y5.3.4) |
                          grepl("1.3", threatmed$Y5.4) | grepl("1.3", threatmed$Y5.4.1) | grepl("1.3", threatmed$Y5.4.2) | grepl("1.3", threatmed$Y5.4.3) | grepl("1.3", threatmed$Y5.4.4) | grepl("1.3", threatmed$Y5.4.5) | grepl("1.3", threatmed$Y5.4.6))
BioIndirEcoEffnum <- nrow(BioIndirEcoEff)
BioIndirEcoEffper <-round((BioIndirEcoEffnum/threatobsnum * 100), dig=2)

BioSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y5.1) | grepl("2.1", threatmed$Y5.1.1) | grepl("2.1", threatmed$Y5.1.2) | grepl("2.1", threatmed$Y5.1.3) | grepl("2.1", threatmed$Y5.1.4) |
                       grepl("2.1", threatmed$Y5.2) | grepl("2.1", threatmed$Y5.2.1) | grepl("2.1", threatmed$Y5.2.2) | grepl("2.1", threatmed$Y5.2.3) | grepl("2.1", threatmed$Y5.2.4) | 
                       grepl("2.1", threatmed$Y5.3) | grepl("2.1", threatmed$Y5.3.1) | grepl("2.1", threatmed$Y5.3.2) | grepl("2.1", threatmed$Y5.3.3) | grepl("2.1", threatmed$Y5.3.4) |
                       grepl("2.1", threatmed$Y5.4) | grepl("2.1", threatmed$Y5.4.1) | grepl("2.1", threatmed$Y5.4.2) | grepl("2.1", threatmed$Y5.4.3) | grepl("2.1", threatmed$Y5.4.4) | grepl("2.1", threatmed$Y5.4.5) | grepl("2.1", threatmed$Y5.4.6))
BioSpecMortnum <- nrow(BioSpecMort)
BioSpecMortper <-round((BioSpecMortnum/threatobsnum * 100), dig=2)

BioSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y5.1) | grepl("2.2", threatmed$Y5.1.1) | grepl("2.2", threatmed$Y5.1.2) | grepl("2.2", threatmed$Y5.1.3) | grepl("2.2", threatmed$Y5.1.4) |
                       grepl("2.2", threatmed$Y5.2) | grepl("2.2", threatmed$Y5.2.1) | grepl("2.2", threatmed$Y5.2.2) | grepl("2.2", threatmed$Y5.2.3) | grepl("2.2", threatmed$Y5.2.4) | 
                       grepl("2.2", threatmed$Y5.3) | grepl("2.2", threatmed$Y5.3.1) | grepl("2.2", threatmed$Y5.3.2) | grepl("2.2", threatmed$Y5.3.3) | grepl("2.2", threatmed$Y5.3.4) |
                       grepl("2.2", threatmed$Y5.4) | grepl("2.2", threatmed$Y5.4.1) | grepl("2.2", threatmed$Y5.4.2) | grepl("2.2", threatmed$Y5.4.3) | grepl("2.2", threatmed$Y5.4.4) | grepl("2.2", threatmed$Y5.4.5) | grepl("2.2", threatmed$Y5.4.6))
BioSpecDistnum <- nrow(BioSpecDist)
BioSpecDistper <-round((BioSpecDistnum/threatobsnum * 100), dig=2)

BioHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y5.1) | grepl("2.3.1", threatmed$Y5.1.1) | grepl("2.3.1", threatmed$Y5.1.2) | grepl("2.3.1", threatmed$Y5.1.3) | grepl("2.3.1", threatmed$Y5.1.4) |
                     grepl("2.3.1", threatmed$Y5.2) | grepl("2.3.1", threatmed$Y5.2.1) | grepl("2.3.1", threatmed$Y5.2.2) | grepl("2.3.1", threatmed$Y5.2.3) | grepl("2.3.1", threatmed$Y5.2.4) | 
                     grepl("2.3.1", threatmed$Y5.3) | grepl("2.3.1", threatmed$Y5.3.1) | grepl("2.3.1", threatmed$Y5.3.2) | grepl("2.3.1", threatmed$Y5.3.3) | grepl("2.3.1", threatmed$Y5.3.4) |
                     grepl("2.3.1", threatmed$Y5.4) | grepl("2.3.1", threatmed$Y5.4.1) | grepl("2.3.1", threatmed$Y5.4.2) | grepl("2.3.1", threatmed$Y5.4.3) | grepl("2.3.1", threatmed$Y5.4.4) | grepl("2.3.1", threatmed$Y5.4.5) | grepl("2.3.1", threatmed$Y5.4.6))
BioHybridnum <- nrow(BioHybrid)
BioHybridper <-round((BioHybridnum/threatobsnum * 100), dig=2)

BioComp <-subset(threatmed, grepl("2.3.2", threatmed$Y5.1) | grepl("2.3.2", threatmed$Y5.1.1) | grepl("2.3.2", threatmed$Y5.1.2) | grepl("2.3.2", threatmed$Y5.1.3) | grepl("2.3.2", threatmed$Y5.1.4) |
                   grepl("2.3.2", threatmed$Y5.2) | grepl("2.3.2", threatmed$Y5.2.1) | grepl("2.3.2", threatmed$Y5.2.2) | grepl("2.3.2", threatmed$Y5.2.3) | grepl("2.3.2", threatmed$Y5.2.4) | 
                   grepl("2.3.2", threatmed$Y5.3) | grepl("2.3.2", threatmed$Y5.3.1) | grepl("2.3.2", threatmed$Y5.3.2) | grepl("2.3.2", threatmed$Y5.3.3) | grepl("2.3.2", threatmed$Y5.3.4) |
                   grepl("2.3.2", threatmed$Y5.4) | grepl("2.3.2", threatmed$Y5.4.1) | grepl("2.3.2", threatmed$Y5.4.2) | grepl("2.3.2", threatmed$Y5.4.3) | grepl("2.3.2", threatmed$Y5.4.4) | grepl("2.3.2", threatmed$Y5.4.5) | grepl("2.3.2", threatmed$Y5.4.6))
BioCompnum <- nrow(BioComp)
BioCompper <-round((BioCompnum/threatobsnum * 100), dig=2)

BioLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y5.1) | grepl("2.3.3", threatmed$Y5.1.1) | grepl("2.3.3", threatmed$Y5.1.2) | grepl("2.3.3", threatmed$Y5.1.3) | grepl("2.3.3", threatmed$Y5.1.4) |
                      grepl("2.3.3", threatmed$Y5.2) | grepl("2.3.3", threatmed$Y5.2.1) | grepl("2.3.3", threatmed$Y5.2.2) | grepl("2.3.3", threatmed$Y5.2.3) | grepl("2.3.3", threatmed$Y5.2.4) | 
                      grepl("2.3.3", threatmed$Y5.3) | grepl("2.3.3", threatmed$Y5.3.1) | grepl("2.3.3", threatmed$Y5.3.2) | grepl("2.3.3", threatmed$Y5.3.3) | grepl("2.3.3", threatmed$Y5.3.4) |
                      grepl("2.3.3", threatmed$Y5.4) | grepl("2.3.3", threatmed$Y5.4.1) | grepl("2.3.3", threatmed$Y5.4.2) | grepl("2.3.3", threatmed$Y5.4.3) | grepl("2.3.3", threatmed$Y5.4.4) | grepl("2.3.3", threatmed$Y5.4.5) | grepl("2.3.3", threatmed$Y5.4.6))
BioLossMutnum <- nrow(BioLossMut)
BioLossMutper <-round((BioLossMutnum/threatobsnum * 100), dig=2)

BioLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y5.1) | grepl("2.3.4", threatmed$Y5.1.1) | grepl("2.3.4", threatmed$Y5.1.2) | grepl("2.3.4", threatmed$Y5.1.3) | grepl("2.3.4", threatmed$Y5.1.4) |
                       grepl("2.3.4", threatmed$Y5.2) | grepl("2.3.4", threatmed$Y5.2.1) | grepl("2.3.4", threatmed$Y5.2.2) | grepl("2.3.4", threatmed$Y5.2.3) | grepl("2.3.4", threatmed$Y5.2.4) | 
                       grepl("2.3.4", threatmed$Y5.3) | grepl("2.3.4", threatmed$Y5.3.1) | grepl("2.3.4", threatmed$Y5.3.2) | grepl("2.3.4", threatmed$Y5.3.3) | grepl("2.3.4", threatmed$Y5.3.4) |
                       grepl("2.3.4", threatmed$Y5.4) | grepl("2.3.4", threatmed$Y5.4.1) | grepl("2.3.4", threatmed$Y5.4.2) | grepl("2.3.4", threatmed$Y5.4.3) | grepl("2.3.4", threatmed$Y5.4.4) | grepl("2.3.4", threatmed$Y5.4.5) | grepl("2.3.4", threatmed$Y5.4.6))
BioLossPollnum <- nrow(BioLossPoll)
BioLossPollper <-round((BioLossPollnum/threatobsnum * 100), dig=2)

BioInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y5.1) | grepl("2.3.5", threatmed$Y5.1.1) | grepl("2.3.5", threatmed$Y5.1.2) | grepl("2.3.5", threatmed$Y5.1.3) | grepl("2.3.5", threatmed$Y5.1.4) |
                      grepl("2.3.5", threatmed$Y5.2) | grepl("2.3.5", threatmed$Y5.2.1) | grepl("2.3.5", threatmed$Y5.2.2) | grepl("2.3.5", threatmed$Y5.2.3) | grepl("2.3.5", threatmed$Y5.2.4) | 
                      grepl("2.3.5", threatmed$Y5.3) | grepl("2.3.5", threatmed$Y5.3.1) | grepl("2.3.5", threatmed$Y5.3.2) | grepl("2.3.5", threatmed$Y5.3.3) | grepl("2.3.5", threatmed$Y5.3.4) |
                      grepl("2.3.5", threatmed$Y5.4) | grepl("2.3.5", threatmed$Y5.4.1) | grepl("2.3.5", threatmed$Y5.4.2) | grepl("2.3.5", threatmed$Y5.4.3) | grepl("2.3.5", threatmed$Y5.4.4) | grepl("2.3.5", threatmed$Y5.4.5) | grepl("2.3.5", threatmed$Y5.4.6))
BioInbreednum <- nrow(BioInbreed)
BioInbreedper <-round((BioInbreednum/threatobsnum * 100), dig=2)

BioSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y5.1) | grepl("2.3.6", threatmed$Y5.1.1) | grepl("2.3.6", threatmed$Y5.1.2) | grepl("2.3.6", threatmed$Y5.1.3) | grepl("2.3.6", threatmed$Y5.1.4) |
                      grepl("2.3.6", threatmed$Y5.2) | grepl("2.3.6", threatmed$Y5.2.1) | grepl("2.3.6", threatmed$Y5.2.2) | grepl("2.3.6", threatmed$Y5.2.3) | grepl("2.3.6", threatmed$Y5.2.4) | 
                      grepl("2.3.6", threatmed$Y5.3) | grepl("2.3.6", threatmed$Y5.3.1) | grepl("2.3.6", threatmed$Y5.3.2) | grepl("2.3.6", threatmed$Y5.3.3) | grepl("2.3.6", threatmed$Y5.3.4) |
                      grepl("2.3.6", threatmed$Y5.4) | grepl("2.3.6", threatmed$Y5.4.1) | grepl("2.3.6", threatmed$Y5.4.2) | grepl("2.3.6", threatmed$Y5.4.3) | grepl("2.3.6", threatmed$Y5.4.4) | grepl("2.3.6", threatmed$Y5.4.5) | grepl("2.3.6", threatmed$Y5.4.6))
BioSkewSexnum <- nrow(BioSkewSex)
BioSkewSexper <-round((BioSkewSexnum/threatobsnum * 100), dig=2)

BioRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y5.1) | grepl("2.3.7", threatmed$Y5.1.1) | grepl("2.3.7", threatmed$Y5.1.2) | grepl("2.3.7", threatmed$Y5.1.3) | grepl("2.3.7", threatmed$Y5.1.4) |
                        grepl("2.3.7", threatmed$Y5.2) | grepl("2.3.7", threatmed$Y5.2.1) | grepl("2.3.7", threatmed$Y5.2.2) | grepl("2.3.7", threatmed$Y5.2.3) | grepl("2.3.7", threatmed$Y5.2.4) | 
                        grepl("2.3.7", threatmed$Y5.3) | grepl("2.3.7", threatmed$Y5.3.1) | grepl("2.3.7", threatmed$Y5.3.2) | grepl("2.3.7", threatmed$Y5.3.3) | grepl("2.3.7", threatmed$Y5.3.4) |
                        grepl("2.3.7", threatmed$Y5.4) | grepl("2.3.7", threatmed$Y5.4.1) | grepl("2.3.7", threatmed$Y5.4.2) | grepl("2.3.7", threatmed$Y5.4.3) | grepl("2.3.7", threatmed$Y5.4.4) | grepl("2.3.7", threatmed$Y5.4.5) | grepl("2.3.7", threatmed$Y5.4.6))
BioRedRepSucnum <- nrow(BioRedRepSuc)
BioRedRepSucper <-round((BioRedRepSucnum/threatobsnum * 100), dig=2)

BioOth <-subset(threatmed, grepl("2.3.8", threatmed$Y5.1) | grepl("2.3.8", threatmed$Y5.1.1) | grepl("2.3.8", threatmed$Y5.1.2) | grepl("2.3.8", threatmed$Y5.1.3) | grepl("2.3.8", threatmed$Y5.1.4) |
                  grepl("2.3.8", threatmed$Y5.2) | grepl("2.3.8", threatmed$Y5.2.1) | grepl("2.3.8", threatmed$Y5.2.2) | grepl("2.3.8", threatmed$Y5.2.3) | grepl("2.3.8", threatmed$Y5.2.4) | 
                  grepl("2.3.8", threatmed$Y5.3) | grepl("2.3.8", threatmed$Y5.3.1) | grepl("2.3.8", threatmed$Y5.3.2) | grepl("2.3.8", threatmed$Y5.3.3) | grepl("2.3.8", threatmed$Y5.3.4) |
                  grepl("2.3.8", threatmed$Y5.4) | grepl("2.3.8", threatmed$Y5.4.1) | grepl("2.3.8", threatmed$Y5.4.2) | grepl("2.3.8", threatmed$Y5.4.3) | grepl("2.3.8", threatmed$Y5.4.4) | grepl("2.3.8", threatmed$Y5.4.5) | grepl("2.3.8", threatmed$Y5.4.6))
BioOthnum <- nrow(BioOth)
BioOthper <-round((BioOthnum/threatobsnum * 100), dig=2)

Biototal <- (BioEcoConnum + BioEcoDegnum + BioIndirEcoEffnum + BioPastUnnum + BioSpecDistnum + BioHybridnum + BioCompnum + BioLossMutnum + BioLossPollnum + BioInbreednum + BioSkewSexnum + BioRedRepSucnum + BioOthnum)
BioPer <- round((Biototal/threatobsnum * 100), dig = 2)

#Threat 6: Human intrusions and disturbance
HuEcoCon <-subset(threatmed, grepl("1.1", threatmed$Y6.1) | grepl("1.1", threatmed$Y6.2) | grepl("1.1", threatmed$Y6.3))
HuEcoConnum <- nrow(HuEcoCon)
HuEcoConper <-round((HuEcoConnum/threatobsnum * 100), dig=2)

HuEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y6.1) | grepl("1.2", threatmed$Y6.2) | grepl("1.2", threatmed$Y6.3))
HuEcoDegnum <- nrow(HuEcoDeg)
HuEcoDegper <-round((HuEcoDegnum/threatobsnum * 100), dig=2)

HuIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y6.1) | grepl("1.3", threatmed$Y6.2) | grepl("1.3", threatmed$Y6.3))
HuIndirEcoEffnum <- nrow(HuIndirEcoEff)
HuIndirEcoEffper <-round((HuIndirEcoEffnum/threatobsnum * 100), dig=2)

HuSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y6.1) | grepl("2.1", threatmed$Y6.2) | grepl("2.1", threatmed$Y6.3))
HuSpecMortnum <- nrow(HuSpecMort)
HuSpecMortper <-round((HuSpecMortnum/threatobsnum * 100), dig=2)

HuSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y6.1) | grepl("2.2", threatmed$Y6.2) | grepl("2.2", threatmed$Y6.3))
HuSpecDistnum <- nrow(HuSpecDist)
HuSpecDistper <-round((HuSpecDistnum/threatobsnum * 100), dig=2)

HuHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y6.1) | grepl("2.3.1", threatmed$Y6.2) | grepl("2.3.1", threatmed$Y6.3))
HuHybridnum <- nrow(HuHybrid)
HuHybridper <-round((HuHybridnum/threatobsnum * 100), dig=2)

HuComp <-subset(threatmed, grepl("2.3.2", threatmed$Y6.1) | grepl("2.3.2", threatmed$Y6.2) | grepl("2.3.2", threatmed$Y6.3))
HuCompnum <- nrow(HuComp)
HuCompper <-round((HuCompnum/threatobsnum * 100), dig=2)

HuLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y6.1) | grepl("2.3.3", threatmed$Y6.2) | grepl("2.3.3", threatmed$Y6.3))
HuLossMutnum <- nrow(HuLossMut)
HuLossMutper <-round((HuLossMutnum/threatobsnum * 100), dig=2)

HuLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y6.1) | grepl("2.3.4", threatmed$Y6.2) | grepl("2.3.4", threatmed$Y6.3))
HuLossPollnum <- nrow(HuLossPoll)
HuLossPollper <-round((HuLossPollnum/threatobsnum * 100), dig=2)

HuInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y6.1) | grepl("2.3.5", threatmed$Y6.2) | grepl("2.3.5", threatmed$Y6.3))
HuInbreednum <- nrow(HuInbreed)
HuInbreedper <-round((HuInbreednum/threatobsnum * 100), dig=2)

HuSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y6.1) | grepl("2.3.6", threatmed$Y6.2) | grepl("2.3.6", threatmed$Y6.3))
HuSkewSexnum <- nrow(HuSkewSex)
HuSkewSexper <-round((HuSkewSexnum/threatobsnum * 100), dig=2)

HuRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y6.1) | grepl("2.3.7", threatmed$Y6.2) | grepl("2.3.7", threatmed$Y6.3))
HuRedRepSucnum <- nrow(HuRedRepSuc)
HuRedRepSucper <-round((HuRedRepSucnum/threatobsnum * 100), dig=2)

HuOth <-subset(threatmed, grepl("2.3.8", threatmed$Y6.1) | grepl("2.3.8", threatmed$Y6.2) | grepl("2.3.8", threatmed$Y6.3))
HuOthnum <- nrow(HuOth)
HuOthper <-round((HuOthnum/threatobsnum * 100), dig=2)

Hutotal <- (HuEcoConnum + HuEcoDegnum + HuIndirEcoEffnum + HuPastUnnum + HuSpecDistnum + HuHybridnum + HuCompnum + HuLossMutnum + HuLossPollnum + HuInbreednum + HuSkewSexnum + HuRedRepSucnum + HuOthnum)
HuPer <- round((Hutotal/threatobsnum * 100), dig = 2)

#Threat 7: Natural system modifications
NatEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y7.1) |  grepl("1.1", threatmed$Y7.1.1) | grepl("1.1", threatmed$Y7.1.2) | grepl("1.1", threatmed$Y7.1.3) |  
                      grepl("1.1", threatmed$Y7.2) |  grepl("1.1", threatmed$Y7.2.1) | grepl("1.1", threatmed$Y7.2.2) | grepl("1.1", threatmed$Y7.2.3) | grepl("1.1", threatmed$Y7.2.4) | grepl("1.1", threatmed$Y7.2.5) | grepl("1.1", threatmed$Y7.2.6) | grepl("1.1", threatmed$Y7.2.7) | grepl("1.1", threatmed$Y7.2.8) |  grepl("1.1", threatmed$Y7.2.9) |  grepl("1.1", threatmed$Y7.2.10) | grepl("1.1", threatmed$Y7.2.11) |
                      grepl("1.1", threatmed$Y7.3))
NatEcoConnum <- nrow(NatEcoCon)
NatEcoConper <-round((NatEcoConnum/threatobsnum * 100), dig=2)

NatEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y7.1) |  grepl("1.2", threatmed$Y7.1.1) | grepl("1.2", threatmed$Y7.1.2) | grepl("1.2", threatmed$Y7.1.3) |  
                     grepl("1.2", threatmed$Y7.2) |  grepl("1.2", threatmed$Y7.2.1) | grepl("1.2", threatmed$Y7.2.2) | grepl("1.2", threatmed$Y7.2.3) | grepl("1.2", threatmed$Y7.2.4) | grepl("1.2", threatmed$Y7.2.5) | grepl("1.2", threatmed$Y7.2.6) | grepl("1.2", threatmed$Y7.2.7) | grepl("1.2", threatmed$Y7.2.8) |  grepl("1.2", threatmed$Y7.2.9) |  grepl("1.2", threatmed$Y7.2.10) | grepl("1.2", threatmed$Y7.2.11) |
                     grepl("1.2", threatmed$Y7.3))
NatEcoDegnum <- nrow(NatEcoDeg)
NatEcoDegper <-round((NatEcoDegnum/threatobsnum * 100), dig=2)

NatIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y7.1) |  grepl("1.3", threatmed$Y7.1.1) | grepl("1.3", threatmed$Y7.1.2) | grepl("1.3", threatmed$Y7.1.3) |  
                          grepl("1.3", threatmed$Y7.2) |  grepl("1.3", threatmed$Y7.2.1) | grepl("1.3", threatmed$Y7.2.2) | grepl("1.3", threatmed$Y7.2.3) | grepl("1.3", threatmed$Y7.2.4) | grepl("1.3", threatmed$Y7.2.5) | grepl("1.3", threatmed$Y7.2.6) | grepl("1.3", threatmed$Y7.2.7) | grepl("1.3", threatmed$Y7.2.8) |  grepl("1.3", threatmed$Y7.2.9) |  grepl("1.3", threatmed$Y7.2.10) | grepl("1.3", threatmed$Y7.2.11) |
                          grepl("1.3", threatmed$Y7.3))
NatIndirEcoEffnum <- nrow(NatIndirEcoEff)
NatIndirEcoEffper <-round((NatIndirEcoEffnum/threatobsnum * 100), dig=2)

NatSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y7.1) |  grepl("2.1", threatmed$Y7.1.1) | grepl("2.1", threatmed$Y7.1.2) | grepl("2.1", threatmed$Y7.1.3) |  
                       grepl("2.1", threatmed$Y7.2) |  grepl("2.1", threatmed$Y7.2.1) | grepl("2.1", threatmed$Y7.2.2) | grepl("2.1", threatmed$Y7.2.3) | grepl("2.1", threatmed$Y7.2.4) | grepl("2.1", threatmed$Y7.2.5) | grepl("2.1", threatmed$Y7.2.6) | grepl("2.1", threatmed$Y7.2.7) | grepl("2.1", threatmed$Y7.2.8) |  grepl("2.1", threatmed$Y7.2.9) |  grepl("2.1", threatmed$Y7.2.10) | grepl("2.1", threatmed$Y7.2.11) |
                       grepl("2.1", threatmed$Y7.3))
NatSpecMortnum <- nrow(NatSpecMort)
NatSpecMortper <-round((NatSpecMortnum/threatobsnum * 100), dig=2)

NatSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y7.1) |  grepl("2.2", threatmed$Y7.1.1) | grepl("2.2", threatmed$Y7.1.2) | grepl("2.2", threatmed$Y7.1.3) |  
                       grepl("2.2", threatmed$Y7.2) |  grepl("2.2", threatmed$Y7.2.1) | grepl("2.2", threatmed$Y7.2.2) | grepl("2.2", threatmed$Y7.2.3) | grepl("2.2", threatmed$Y7.2.4) | grepl("2.2", threatmed$Y7.2.5) | grepl("2.2", threatmed$Y7.2.6) | grepl("2.2", threatmed$Y7.2.7) | grepl("2.2", threatmed$Y7.2.8) |  grepl("2.2", threatmed$Y7.2.9) |  grepl("2.2", threatmed$Y7.2.10) | grepl("2.2", threatmed$Y7.2.11) |
                       grepl("2.2", threatmed$Y7.3))
NatSpecDistnum <- nrow(NatSpecDist)
NatSpecDistper <-round((NatSpecDistnum/threatobsnum * 100), dig=2)

NatHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y7.1) |  grepl("2.3.1", threatmed$Y7.1.1) | grepl("2.3.1", threatmed$Y7.1.2) | grepl("2.3.1", threatmed$Y7.1.3) |  
                     grepl("2.3.1", threatmed$Y7.2) |  grepl("2.3.1", threatmed$Y7.2.1) | grepl("2.3.1", threatmed$Y7.2.2) | grepl("2.3.1", threatmed$Y7.2.3) | grepl("2.3.1", threatmed$Y7.2.4) | grepl("2.3.1", threatmed$Y7.2.5) | grepl("2.3.1", threatmed$Y7.2.6) | grepl("2.3.1", threatmed$Y7.2.7) | grepl("2.3.1", threatmed$Y7.2.8) |  grepl("2.3.1", threatmed$Y7.2.9) |  grepl("2.3.1", threatmed$Y7.2.10) | grepl("2.3.1", threatmed$Y7.2.11) |
                     grepl("2.3.1", threatmed$Y7.3))
NatHybridnum <- nrow(NatHybrid)
NatHybridper <-round((NatHybridnum/threatobsnum * 100), dig=2)

NatComp <-subset(threatmed, grepl("2.3.2", threatmed$Y7.1) |  grepl("2.3.2", threatmed$Y7.1.1) | grepl("2.3.2", threatmed$Y7.1.2) | grepl("2.3.2", threatmed$Y7.1.3) |  
                   grepl("2.3.2", threatmed$Y7.2) |  grepl("2.3.2", threatmed$Y7.2.1) | grepl("2.3.2", threatmed$Y7.2.2) | grepl("2.3.2", threatmed$Y7.2.3) | grepl("2.3.2", threatmed$Y7.2.4) | grepl("2.3.2", threatmed$Y7.2.5) | grepl("2.3.2", threatmed$Y7.2.6) | grepl("2.3.2", threatmed$Y7.2.7) | grepl("2.3.2", threatmed$Y7.2.8) |  grepl("2.3.2", threatmed$Y7.2.9) |  grepl("2.3.2", threatmed$Y7.2.10) | grepl("2.3.2", threatmed$Y7.2.11) |
                   grepl("2.3.2", threatmed$Y7.3))
NatCompnum <- nrow(NatComp)
NatCompper <-round((NatCompnum/threatobsnum * 100), dig=2)

NatLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y7.1) |  grepl("2.3.3", threatmed$Y7.1.1) | grepl("2.3.3", threatmed$Y7.1.2) | grepl("2.3.3", threatmed$Y7.1.3) |  
                      grepl("2.3.3", threatmed$Y7.2) |  grepl("2.3.3", threatmed$Y7.2.1) | grepl("2.3.3", threatmed$Y7.2.2) | grepl("2.3.3", threatmed$Y7.2.3) | grepl("2.3.3", threatmed$Y7.2.4) | grepl("2.3.3", threatmed$Y7.2.5) | grepl("2.3.3", threatmed$Y7.2.6) | grepl("2.3.3", threatmed$Y7.2.7) | grepl("2.3.3", threatmed$Y7.2.8) |  grepl("2.3.3", threatmed$Y7.2.9) |  grepl("2.3.3", threatmed$Y7.2.10) | grepl("2.3.3", threatmed$Y7.2.11) |
                      grepl("2.3.3", threatmed$Y7.3))
NatLossMutnum <- nrow(NatLossMut)
NatLossMutper <-round((NatLossMutnum/threatobsnum * 100), dig=2)

NatLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y7.1) |  grepl("2.3.4", threatmed$Y7.1.1) | grepl("2.3.4", threatmed$Y7.1.2) | grepl("2.3.4", threatmed$Y7.1.3) |  
                       grepl("2.3.4", threatmed$Y7.2) |  grepl("2.3.4", threatmed$Y7.2.1) | grepl("2.3.4", threatmed$Y7.2.2) | grepl("2.3.4", threatmed$Y7.2.3) | grepl("2.3.4", threatmed$Y7.2.4) | grepl("2.3.4", threatmed$Y7.2.5) | grepl("2.3.4", threatmed$Y7.2.6) | grepl("2.3.4", threatmed$Y7.2.7) | grepl("2.3.4", threatmed$Y7.2.8) |  grepl("2.3.4", threatmed$Y7.2.9) |  grepl("2.3.4", threatmed$Y7.2.10) | grepl("2.3.4", threatmed$Y7.2.11) |
                       grepl("2.3.4", threatmed$Y7.3))
NatLossPollnum <- nrow(NatLossPoll)
NatLossPollper <-round((NatLossPollnum/threatobsnum * 100), dig=2)

NatInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y7.1) |  grepl("2.3.5", threatmed$Y7.1.1) | grepl("2.3.5", threatmed$Y7.1.2) | grepl("2.3.5", threatmed$Y7.1.3) |  
                      grepl("2.3.5", threatmed$Y7.2) |  grepl("2.3.5", threatmed$Y7.2.1) | grepl("2.3.5", threatmed$Y7.2.2) | grepl("2.3.5", threatmed$Y7.2.3) | grepl("2.3.5", threatmed$Y7.2.4) | grepl("2.3.5", threatmed$Y7.2.5) | grepl("2.3.5", threatmed$Y7.2.6) | grepl("2.3.5", threatmed$Y7.2.7) | grepl("2.3.5", threatmed$Y7.2.8) |  grepl("2.3.5", threatmed$Y7.2.9) |  grepl("2.3.5", threatmed$Y7.2.10) | grepl("2.3.5", threatmed$Y7.2.11) |
                      grepl("2.3.5", threatmed$Y7.3))
NatInbreednum <- nrow(NatInbreed)
NatInbreedper <-round((NatInbreednum/threatobsnum * 100), dig=2)

NatSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y7.1) |  grepl("2.3.6", threatmed$Y7.1.1) | grepl("2.3.6", threatmed$Y7.1.2) | grepl("2.3.6", threatmed$Y7.1.3) |  
                      grepl("2.3.6", threatmed$Y7.2) |  grepl("2.3.6", threatmed$Y7.2.1) | grepl("2.3.6", threatmed$Y7.2.2) | grepl("2.3.6", threatmed$Y7.2.3) | grepl("2.3.6", threatmed$Y7.2.4) | grepl("2.3.6", threatmed$Y7.2.5) | grepl("2.3.6", threatmed$Y7.2.6) | grepl("2.3.6", threatmed$Y7.2.7) | grepl("2.3.6", threatmed$Y7.2.8) |  grepl("2.3.6", threatmed$Y7.2.9) |  grepl("2.3.6", threatmed$Y7.2.10) | grepl("2.3.6", threatmed$Y7.2.11) |
                      grepl("2.3.6", threatmed$Y7.3))
NatSkewSexnum <- nrow(NatSkewSex)
NatSkewSexper <-round((NatSkewSexnum/threatobsnum * 100), dig=2)

NatRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y7.1) |  grepl("2.3.7", threatmed$Y7.1.1) | grepl("2.3.7", threatmed$Y7.1.2) | grepl("2.3.7", threatmed$Y7.1.3) |  
                        grepl("2.3.7", threatmed$Y7.2) |  grepl("2.3.7", threatmed$Y7.2.1) | grepl("2.3.7", threatmed$Y7.2.2) | grepl("2.3.7", threatmed$Y7.2.3) | grepl("2.3.7", threatmed$Y7.2.4) | grepl("2.3.7", threatmed$Y7.2.5) | grepl("2.3.7", threatmed$Y7.2.6) | grepl("2.3.7", threatmed$Y7.2.7) | grepl("2.3.7", threatmed$Y7.2.8) |  grepl("2.3.7", threatmed$Y7.2.9) |  grepl("2.3.7", threatmed$Y7.2.10) | grepl("2.3.7", threatmed$Y7.2.11) |
                        grepl("2.3.7", threatmed$Y7.3))
NatRedRepSucnum <- nrow(NatRedRepSuc)
NatRedRepSucper <-round((NatRedRepSucnum/threatobsnum * 100), dig=2)

NatOth <-subset(threatmed, grepl("2.3.8", threatmed$Y7.1) |  grepl("2.3.8", threatmed$Y7.1.1) | grepl("2.3.8", threatmed$Y7.1.2) | grepl("2.3.8", threatmed$Y7.1.3) |  
                  grepl("2.3.8", threatmed$Y7.2) |  grepl("2.3.8", threatmed$Y7.2.1) | grepl("2.3.8", threatmed$Y7.2.2) | grepl("2.3.8", threatmed$Y7.2.3) | grepl("2.3.8", threatmed$Y7.2.4) | grepl("2.3.8", threatmed$Y7.2.5) | grepl("2.3.8", threatmed$Y7.2.6) | grepl("2.3.8", threatmed$Y7.2.7) | grepl("2.3.8", threatmed$Y7.2.8) |  grepl("2.3.8", threatmed$Y7.2.9) |  grepl("2.3.8", threatmed$Y7.2.10) | grepl("2.3.8", threatmed$Y7.2.11) |
                  grepl("2.3.8", threatmed$Y7.3))
NatOthnum <- nrow(NatOth)
NatOthper <-round((NatOthnum/threatobsnum * 100), dig=2)

Nattotal <- (NatEcoConnum + NatEcoDegnum + NatIndirEcoEffnum + NatPastUnnum + NatSpecDistnum + NatHybridnum + NatCompnum + NatLossMutnum + NatLossPollnum + NatInbreednum + NatSkewSexnum + NatRedRepSucnum + NatOthnum)
NatPer <- round((Nattotal/threatobsnum * 100), dig = 2)

#Threat 8: Invasion and other problematic species, genes and diseases
InvEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y8.1) | grepl("1.1", threatmed$Y8.1.1) | grepl("1.1", threatmed$Y8.1.2) | 
                      grepl("1.1", threatmed$Y8.2) | grepl("1.1", threatmed$Y8.2.1) | grepl("1.1", threatmed$Y8.2.2) | 
                      grepl("1.1", threatmed$Y8.3) | 
                      grepl("1.1", threatmed$Y8.4) | grepl("1.1", threatmed$Y8.4.1) | grepl("1.1", threatmed$Y8.4.2) | 
                      grepl("1.1", threatmed$Y8.5) | grepl("1.1", threatmed$Y8.5.1) | grepl("1.1", threatmed$Y8.5.2) | 
                      grepl("1.1", threatmed$Y8.6))
InvEcoConnum <- nrow(InvEcoCon)
InvEcoConper <-round((InvEcoConnum/threatobsnum * 100), dig=2)

InvEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y8.1) | grepl("1.2", threatmed$Y8.1.1) | grepl("1.2", threatmed$Y8.1.2) | 
                     grepl("1.2", threatmed$Y8.2) | grepl("1.2", threatmed$Y8.2.1) | grepl("1.2", threatmed$Y8.2.2) | 
                     grepl("1.2", threatmed$Y8.3) | 
                     grepl("1.2", threatmed$Y8.4) | grepl("1.2", threatmed$Y8.4.1) | grepl("1.2", threatmed$Y8.4.2) | 
                     grepl("1.2", threatmed$Y8.5) | grepl("1.2", threatmed$Y8.5.1) | grepl("1.2", threatmed$Y8.5.2) | 
                     grepl("1.2", threatmed$Y8.6))
InvEcoDegnum <- nrow(InvEcoDeg)
InvEcoDegper <-round((InvEcoDegnum/threatobsnum * 100), dig=2)

InvIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y8.1) | grepl("1.3", threatmed$Y8.1.1) | grepl("1.3", threatmed$Y8.1.2) | 
                          grepl("1.3", threatmed$Y8.2) | grepl("1.3", threatmed$Y8.2.1) | grepl("1.3", threatmed$Y8.2.2) | 
                          grepl("1.3", threatmed$Y8.3) | 
                          grepl("1.3", threatmed$Y8.4) | grepl("1.3", threatmed$Y8.4.1) | grepl("1.3", threatmed$Y8.4.2) | 
                          grepl("1.3", threatmed$Y8.5) | grepl("1.3", threatmed$Y8.5.1) | grepl("1.3", threatmed$Y8.5.2) | 
                          grepl("1.3", threatmed$Y8.6))
InvIndirEcoEffnum <- nrow(InvIndirEcoEff)
InvIndirEcoEffper <-round((InvIndirEcoEffnum/threatobsnum * 100), dig=2)

InvSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y8.1) | grepl("2.1", threatmed$Y8.1.1) | grepl("2.1", threatmed$Y8.1.2) | 
                       grepl("2.1", threatmed$Y8.2) | grepl("2.1", threatmed$Y8.2.1) | grepl("2.1", threatmed$Y8.2.2) | 
                       grepl("2.1", threatmed$Y8.3) | 
                       grepl("2.1", threatmed$Y8.4) | grepl("2.1", threatmed$Y8.4.1) | grepl("2.1", threatmed$Y8.4.2) | 
                       grepl("2.1", threatmed$Y8.5) | grepl("2.1", threatmed$Y8.5.1) | grepl("2.1", threatmed$Y8.5.2) | 
                       grepl("2.1", threatmed$Y8.6))
InvSpecMortnum <- nrow(InvSpecMort)
InvSpecMortper <-round((InvSpecMortnum/threatobsnum * 100), dig=2)

InvSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y8.1) | grepl("2.2", threatmed$Y8.1.1) | grepl("2.2", threatmed$Y8.1.2) | 
                       grepl("2.2", threatmed$Y8.2) | grepl("2.2", threatmed$Y8.2.1) | grepl("2.2", threatmed$Y8.2.2) | 
                       grepl("2.2", threatmed$Y8.3) | 
                       grepl("2.2", threatmed$Y8.4) | grepl("2.2", threatmed$Y8.4.1) | grepl("2.2", threatmed$Y8.4.2) | 
                       grepl("2.2", threatmed$Y8.5) | grepl("2.2", threatmed$Y8.5.1) | grepl("2.2", threatmed$Y8.5.2) | 
                       grepl("2.2", threatmed$Y8.6))
InvSpecDistnum <- nrow(InvSpecDist)
InvSpecDistper <-round((InvSpecDistnum/threatobsnum * 100), dig=2)

InvHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y8.1) | grepl("2.3.1", threatmed$Y8.1.1) | grepl("2.3.1", threatmed$Y8.1.2) | 
                     grepl("2.3.1", threatmed$Y8.2) | grepl("2.3.1", threatmed$Y8.2.1) | grepl("2.3.1", threatmed$Y8.2.2) | 
                     grepl("2.3.1", threatmed$Y8.3) | 
                     grepl("2.3.1", threatmed$Y8.4) | grepl("2.3.1", threatmed$Y8.4.1) | grepl("2.3.1", threatmed$Y8.4.2) | 
                     grepl("2.3.1", threatmed$Y8.5) | grepl("2.3.1", threatmed$Y8.5.1) | grepl("2.3.1", threatmed$Y8.5.2) | 
                     grepl("2.3.1", threatmed$Y8.6))
InvHybridnum <- nrow(InvHybrid)
InvHybridper <-round((InvHybridnum/threatobsnum * 100), dig=2)

InvComp <-subset(threatmed, grepl("2.3.2", threatmed$Y8.1) | grepl("2.3.2", threatmed$Y8.1.1) | grepl("2.3.2", threatmed$Y8.1.2) | 
                   grepl("2.3.2", threatmed$Y8.2) | grepl("2.3.2", threatmed$Y8.2.1) | grepl("2.3.2", threatmed$Y8.2.2) | 
                   grepl("2.3.2", threatmed$Y8.3) | 
                   grepl("2.3.2", threatmed$Y8.4) | grepl("2.3.2", threatmed$Y8.4.1) | grepl("2.3.2", threatmed$Y8.4.2) | 
                   grepl("2.3.2", threatmed$Y8.5) | grepl("2.3.2", threatmed$Y8.5.1) | grepl("2.3.2", threatmed$Y8.5.2) | 
                   grepl("2.3.2", threatmed$Y8.6))
InvCompnum <- nrow(InvComp)
InvCompper <-round((InvCompnum/threatobsnum * 100), dig=2)

InvLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y8.1) | grepl("2.3.3", threatmed$Y8.1.1) | grepl("2.3.3", threatmed$Y8.1.2) | 
                      grepl("2.3.3", threatmed$Y8.2) | grepl("2.3.3", threatmed$Y8.2.1) | grepl("2.3.3", threatmed$Y8.2.2) | 
                      grepl("2.3.3", threatmed$Y8.3) | 
                      grepl("2.3.3", threatmed$Y8.4) | grepl("2.3.3", threatmed$Y8.4.1) | grepl("2.3.3", threatmed$Y8.4.2) | 
                      grepl("2.3.3", threatmed$Y8.5) | grepl("2.3.3", threatmed$Y8.5.1) | grepl("2.3.3", threatmed$Y8.5.2) | 
                      grepl("2.3.3", threatmed$Y8.6))
InvLossMutnum <- nrow(InvLossMut)
InvLossMutper <-round((InvLossMutnum/threatobsnum * 100), dig=2)

InvLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y8.1) | grepl("2.3.4", threatmed$Y8.1.1) | grepl("2.3.4", threatmed$Y8.1.2) | 
                       grepl("2.3.4", threatmed$Y8.2) | grepl("2.3.4", threatmed$Y8.2.1) | grepl("2.3.4", threatmed$Y8.2.2) | 
                       grepl("2.3.4", threatmed$Y8.3) | 
                       grepl("2.3.4", threatmed$Y8.4) | grepl("2.3.4", threatmed$Y8.4.1) | grepl("2.3.4", threatmed$Y8.4.2) | 
                       grepl("2.3.4", threatmed$Y8.5) | grepl("2.3.4", threatmed$Y8.5.1) | grepl("2.3.4", threatmed$Y8.5.2) | 
                       grepl("2.3.4", threatmed$Y8.6))
InvLossPollnum <- nrow(InvLossPoll)
InvLossPollper <-round((InvLossPollnum/threatobsnum * 100), dig=2)

InvInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y8.1) | grepl("2.3.5", threatmed$Y8.1.1) | grepl("2.3.5", threatmed$Y8.1.2) | 
                      grepl("2.3.5", threatmed$Y8.2) | grepl("2.3.5", threatmed$Y8.2.1) | grepl("2.3.5", threatmed$Y8.2.2) | 
                      grepl("2.3.5", threatmed$Y8.3) | 
                      grepl("2.3.5", threatmed$Y8.4) | grepl("2.3.5", threatmed$Y8.4.1) | grepl("2.3.5", threatmed$Y8.4.2) | 
                      grepl("2.3.5", threatmed$Y8.5) | grepl("2.3.5", threatmed$Y8.5.1) | grepl("2.3.5", threatmed$Y8.5.2) | 
                      grepl("2.3.5", threatmed$Y8.6))
InvInbreednum <- nrow(InvInbreed)
InvInbreedper <-round((InvInbreednum/threatobsnum * 100), dig=2)

InvSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y8.1) | grepl("2.3.6", threatmed$Y8.1.1) | grepl("2.3.6", threatmed$Y8.1.2) | 
                      grepl("2.3.6", threatmed$Y8.2) | grepl("2.3.6", threatmed$Y8.2.1) | grepl("2.3.6", threatmed$Y8.2.2) | 
                      grepl("2.3.6", threatmed$Y8.3) | 
                      grepl("2.3.6", threatmed$Y8.4) | grepl("2.3.6", threatmed$Y8.4.1) | grepl("2.3.6", threatmed$Y8.4.2) | 
                      grepl("2.3.6", threatmed$Y8.5) | grepl("2.3.6", threatmed$Y8.5.1) | grepl("2.3.6", threatmed$Y8.5.2) | 
                      grepl("2.3.6", threatmed$Y8.6))
InvSkewSexnum <- nrow(InvSkewSex)
InvSkewSexper <-round((InvSkewSexnum/threatobsnum * 100), dig=2)

InvRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y8.1) | grepl("2.3.7", threatmed$Y8.1.1) | grepl("2.3.7", threatmed$Y8.1.2) | 
                        grepl("2.3.7", threatmed$Y8.2) | grepl("2.3.7", threatmed$Y8.2.1) | grepl("2.3.7", threatmed$Y8.2.2) | 
                        grepl("2.3.7", threatmed$Y8.3) | 
                        grepl("2.3.7", threatmed$Y8.4) | grepl("2.3.7", threatmed$Y8.4.1) | grepl("2.3.7", threatmed$Y8.4.2) | 
                        grepl("2.3.7", threatmed$Y8.5) | grepl("2.3.7", threatmed$Y8.5.1) | grepl("2.3.7", threatmed$Y8.5.2) | 
                        grepl("2.3.7", threatmed$Y8.6))
InvRedRepSucnum <- nrow(InvRedRepSuc)
InvRedRepSucper <-round((InvRedRepSucnum/threatobsnum * 100), dig=2)

InvOth <-subset(threatmed, grepl("2.3.8", threatmed$Y8.1) | grepl("2.3.8", threatmed$Y8.1.1) | grepl("2.3.8", threatmed$Y8.1.2) | 
                  grepl("2.3.8", threatmed$Y8.2) | grepl("2.3.8", threatmed$Y8.2.1) | grepl("2.3.8", threatmed$Y8.2.2) | 
                  grepl("2.3.8", threatmed$Y8.3) | 
                  grepl("2.3.8", threatmed$Y8.4) | grepl("2.3.8", threatmed$Y8.4.1) | grepl("2.3.8", threatmed$Y8.4.2) | 
                  grepl("2.3.8", threatmed$Y8.5) | grepl("2.3.8", threatmed$Y8.5.1) | grepl("2.3.8", threatmed$Y8.5.2) | 
                  grepl("2.3.8", threatmed$Y8.6))
InvOthnum <- nrow(InvOth)
InvOthper <-round((InvOthnum/threatobsnum * 100), dig=2)

Invtotal <- (InvEcoConnum + InEcoDegnum + InvIndirEcoEffnum + InvPastUnnum + InvSpecDistnum + InvHybridnum + InvCompnum + InvLossMutnum + InvLossPollnum + InvInbreednum + InvSkewSexnum + InvRedRepSucnum + InvOthnum)
InvPer <- round((Invtotal/threatobsnum * 100), dig = 2)

#Threat 9: Pollution
PollEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y9.1) | grepl("1.1", threatmed$Y9.1.1) | grepl("1.1", threatmed$Y9.1.2) | grepl("1.1", threatmed$Y9.1.3) | 
                       grepl("1.1", threatmed$Y9.2) | grepl("1.1", threatmed$Y9.2.1) | grepl("1.1", threatmed$Y9.2.2) | grepl("1.1", threatmed$Y9.2.3))
PollEcoConnum <- nrow(PollEcoCon)
PollEcoConper <-round((PollEcoConnum/threatobsnum * 100), dig=2)

PollEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y9.1) | grepl("1.2", threatmed$Y9.1.1) | grepl("1.2", threatmed$Y9.1.2) | grepl("1.2", threatmed$Y9.1.3) | 
                      grepl("1.2", threatmed$Y9.2) | grepl("1.2", threatmed$Y9.2.1) | grepl("1.2", threatmed$Y9.2.2) | grepl("1.2", threatmed$Y9.2.3))
PollEcoDegnum <- nrow(PollEcoDeg)
PollEcoDegper <-round((PollEcoDegnum/threatobsnum * 100), dig=2)

PollIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y9.1) | grepl("1.3", threatmed$Y9.1.1) | grepl("1.3", threatmed$Y9.1.2) | grepl("1.3", threatmed$Y9.1.3) | 
                           grepl("1.3", threatmed$Y9.2) | grepl("1.3", threatmed$Y9.2.1) | grepl("1.3", threatmed$Y9.2.2) | grepl("1.3", threatmed$Y9.2.3))
PollIndirEcoEffnum <- nrow(PollIndirEcoEff)
PollIndirEcoEffper <-round((PollIndirEcoEffnum/threatobsnum * 100), dig=2)

PollSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y9.1) | grepl("2.1", threatmed$Y9.1.1) | grepl("2.1", threatmed$Y9.1.2) | grepl("2.1", threatmed$Y9.1.3) | 
                        grepl("2.1", threatmed$Y9.2) | grepl("2.1", threatmed$Y9.2.1) | grepl("2.1", threatmed$Y9.2.2) | grepl("2.1", threatmed$Y9.2.3))
PollSpecMortnum <- nrow(PollSpecMort)
PollSpecMortper <-round((PollSpecMortnum/threatobsnum * 100), dig=2)

PollSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y9.1) | grepl("2.2", threatmed$Y9.1.1) | grepl("2.2", threatmed$Y9.1.2) | grepl("2.2", threatmed$Y9.1.3) | 
                        grepl("2.2", threatmed$Y9.2) | grepl("2.2", threatmed$Y9.2.1) | grepl("2.2", threatmed$Y9.2.2) | grepl("2.2", threatmed$Y9.2.3))
PollSpecDistnum <- nrow(PollSpecDist)
PollSpecDistper <-round((PollSpecDistnum/threatobsnum * 100), dig=2)

PollHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y9.1) | grepl("2.3.1", threatmed$Y9.1.1) | grepl("2.3.1", threatmed$Y9.1.2) | grepl("2.3.1", threatmed$Y9.1.3) | 
                      grepl("2.3.1", threatmed$Y9.2) | grepl("2.3.1", threatmed$Y9.2.1) | grepl("2.3.1", threatmed$Y9.2.2) | grepl("2.3.1", threatmed$Y9.2.3))
PollHybridnum <- nrow(PollHybrid)
PollHybridper <-round((PollHybridnum/threatobsnum * 100), dig=2)

PollComp <-subset(threatmed, grepl("2.3.2", threatmed$Y9.1) | grepl("2.3.2", threatmed$Y9.1.1) | grepl("2.3.2", threatmed$Y9.1.2) | grepl("2.3.2", threatmed$Y9.1.3) | 
                    grepl("2.3.2", threatmed$Y9.2) | grepl("2.3.2", threatmed$Y9.2.1) | grepl("2.3.2", threatmed$Y9.2.2) | grepl("2.3.2", threatmed$Y9.2.3))
PollCompnum <- nrow(PollComp)
PollCompper <-round((PollCompnum/threatobsnum * 100), dig=2)

PollLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y9.1) | grepl("2.3.3", threatmed$Y9.1.1) | grepl("2.3.3", threatmed$Y9.1.2) | grepl("2.3.3", threatmed$Y9.1.3) | 
                       grepl("2.3.3", threatmed$Y9.2) | grepl("2.3.3", threatmed$Y9.2.1) | grepl("2.3.3", threatmed$Y9.2.2) | grepl("2.3.3", threatmed$Y9.2.3))
PollLossMutnum <- nrow(PollLossMut)
PollLossMutper <-round((PollLossMutnum/threatobsnum * 100), dig=2)

PollLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y9.1) | grepl("2.3.4", threatmed$Y9.1.1) | grepl("2.3.4", threatmed$Y9.1.2) | grepl("2.3.4", threatmed$Y9.1.3) | 
                        grepl("2.3.4", threatmed$Y9.2) | grepl("2.3.4", threatmed$Y9.2.1) | grepl("2.3.4", threatmed$Y9.2.2) | grepl("2.3.4", threatmed$Y9.2.3))
PollLossPollnum <- nrow(PollLossPoll)
PollLossPollper <-round((PollLossPollnum/threatobsnum * 100), dig=2)

PollInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y9.1) | grepl("2.3.5", threatmed$Y9.1.1) | grepl("2.3.5", threatmed$Y9.1.2) | grepl("2.3.5", threatmed$Y9.1.3) | 
                       grepl("2.3.5", threatmed$Y9.2) | grepl("2.3.5", threatmed$Y9.2.1) | grepl("2.3.5", threatmed$Y9.2.2) | grepl("2.3.5", threatmed$Y9.2.3))
PollInbreednum <- nrow(PollInbreed)
PollInbreedper <-round((PollInbreednum/threatobsnum * 100), dig=2)

PollSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y9.1) | grepl("2.3.6", threatmed$Y9.1.1) | grepl("2.3.6", threatmed$Y9.1.2) | grepl("2.3.6", threatmed$Y9.1.3) | 
                       grepl("2.3.6", threatmed$Y9.2) | grepl("2.3.6", threatmed$Y9.2.1) | grepl("2.3.6", threatmed$Y9.2.2) | grepl("2.3.6", threatmed$Y9.2.3))
PollSkewSexnum <- nrow(PollSkewSex)
PollSkewSexper <-round((PollSkewSexnum/threatobsnum * 100), dig=2)

PollRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y9.1) | grepl("2.3.7", threatmed$Y9.1.1) | grepl("2.3.7", threatmed$Y9.1.2) | grepl("2.3.7", threatmed$Y9.1.3) | 
                         grepl("2.3.7", threatmed$Y9.2) | grepl("2.3.7", threatmed$Y9.2.1) | grepl("2.3.7", threatmed$Y9.2.2) | grepl("2.3.7", threatmed$Y9.2.3))
PollRedRepSucnum <- nrow(PollRedRepSuc)
PollRedRepSucper <-round((PollRedRepSucnum/threatobsnum * 100), dig=2)

PollOth <-subset(threatmed, grepl("2.3.8", threatmed$Y9.1) | grepl("2.3.8", threatmed$Y9.1.1) | grepl("2.3.8", threatmed$Y9.1.2) | grepl("2.3.8", threatmed$Y9.1.3) | 
                   grepl("2.3.8", threatmed$Y9.2) | grepl("2.3.8", threatmed$Y9.2.1) | grepl("2.3.8", threatmed$Y9.2.2) | grepl("2.3.8", threatmed$Y9.2.3))
PollOthnum <- nrow(PollOth)
PollOthper <-round((PollOthnum/threatobsnum * 100), dig=2)

Polltotal <- (PollEcoConnum + PollEcoDegnum + PollIndirEcoEffnum + PollPastUnnum + PollSpecDistnum +  PollHybridnum + PollCompnum + PollLossMutnum + PollLossPollnum + PollInbreednum + PollSkewSexnum + PollRedRepSucnum + PollOthnum)
PollPer <- round((Polltotal/threatobsnum * 100), dig = 2)

#Threat 10: Geological events
GeoEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y10.1) | grepl("1.1", threatmed$Y10.2) | grepl("1.1", threatmed$Y10.3))
GeoEcoConnum <- nrow(GeoEcoCon)
GeoEcoConper <-round((GeoEcoConnum/threatobsnum * 100), dig=2)

GeoEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y10.1) | grepl("1.2", threatmed$Y10.2) | grepl("1.2", threatmed$Y10.3))
GeoEcoDegnum <- nrow(GeoEcoDeg)
GeoEcoDegper <-round((GeoEcoDegnum/threatobsnum * 100), dig=2)

GeoIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y10.1) | grepl("1.3", threatmed$Y10.2) | grepl("1.3", threatmed$Y10.3))
GeoIndirEcoEffnum <- nrow(GeoIndirEcoEff)
GeoIndirEcoEffper <-round((GeoIndirEcoEffnum/threatobsnum * 100), dig=2)

GeoSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y10.1) | grepl("2.1", threatmed$Y10.2) | grepl("2.1", threatmed$Y10.3))
GeoSpecMortnum <- nrow(GeoSpecMort)
GeoSpecMortper <-round((GeoSpecMortnum/threatobsnum * 100), dig=2)

GeoSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y10.1) | grepl("2.2", threatmed$Y10.2) | grepl("2.2", threatmed$Y10.3))
GeoSpecDistnum <- nrow(GeoSpecDist)
GeoSpecDistper <-round((GeoSpecDistnum/threatobsnum * 100), dig=2)

GeoHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y10.1) | grepl("2.3.1", threatmed$Y10.2) | grepl("2.3.1", threatmed$Y10.3))
GeoHybridnum <- nrow(GeoHybrid)
GeoHybridper <-round((GeoHybridnum/threatobsnum * 100), dig=2)

GeoComp <-subset(threatmed, grepl("2.3.2", threatmed$Y10.1) | grepl("2.3.2", threatmed$Y10.2) | grepl("2.3.2", threatmed$Y10.3))
GeoCompnum <- nrow(GeoComp)
GeoCompper <-round((GeoCompnum/threatobsnum * 100), dig=2)

GeoLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y10.1) | grepl("2.3.3", threatmed$Y10.2) | grepl("2.3.3", threatmed$Y10.3))
GeoLossMutnum <- nrow(GeoLossMut)
GeoLossMutper <-round((GeoLossMutnum/threatobsnum * 100), dig=2)

GeoLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y10.1) | grepl("2.3.4", threatmed$Y10.2) | grepl("2.3.4", threatmed$Y10.3))
GeoLossPollnum <- nrow(GeoLossPoll)
GeoLossPollper <-round((GeoLossPollnum/threatobsnum * 100), dig=2)

GeoInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y10.1) | grepl("2.3.5", threatmed$Y10.2) | grepl("2.3.5", threatmed$Y10.3))
GeoInbreednum <- nrow(GeoInbreed)
GeoInbreedper <-round((GeoInbreednum/threatobsnum * 100), dig=2)

GeoSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y10.1) | grepl("2.3.6", threatmed$Y10.2) | grepl("2.3.6", threatmed$Y10.3))
GeoSkewSexnum <- nrow(GeoSkewSex)
GeoSkewSexper <-round((GeoSkewSexnum/threatobsnum * 100), dig=2)

GeoRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y10.1) | grepl("2.3.7", threatmed$Y10.2) | grepl("2.3.7", threatmed$Y10.3))
GeoRedRepSucnum <- nrow(GeoRedRepSuc)
GeoRedRepSucper <-round((GeoRedRepSucnum/threatobsnum * 100), dig=2)

GeoOth <-subset(threatmed, grepl("2.3.8", threatmed$Y10.1) | grepl("2.3.8", threatmed$Y10.2) | grepl("2.3.8", threatmed$Y10.3))
GeoOthnum <- nrow(GeoOth)
GeoOthper <-round((GeoOthnum/threatobsnum * 100), dig=2)

Geototal <- (GeoEcoConnum + GeoEcoDegnum + GeoIndirEcoEffnum + GeoPastUnnum + GeoSpecDistnum + GeoHybridnum + GeoCompnum + GeoLossMutnum + GeoLossPollnum + GeoInbreednum + GeoSkewSexnum + GeoRedRepSucnum + GeoOthnum)
GeoPer <- round((Geototal/threatobsnum * 100), dig = 2)

#Threat 11: Climate change and severe weather
CCEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y11.1) | grepl("1.1", threatmed$Y11.2) | grepl("1.1", threatmed$Y11.3) | grepl("1.1", threatmed$Y11.4) | grepl("1.1", threatmed$Y11.5))
CCEcoConnum <- nrow(CCEcoCon)
CCEcoConper <-round((CCEcoConnum/threatobsnum * 100), dig=2)

CCEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y11.1) | grepl("1.2", threatmed$Y11.2) | grepl("1.2", threatmed$Y11.3) | grepl("1.2", threatmed$Y11.4) | grepl("1.2", threatmed$Y11.5))
CCEcoDegnum <- nrow(CCEcoDeg)
CCEcoDegper <-round((CCEcoDegnum/threatobsnum * 100), dig=2)

CCIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y11.1) | grepl("1.3", threatmed$Y11.2) | grepl("1.3", threatmed$Y11.3) | grepl("1.3", threatmed$Y11.4) | grepl("1.3", threatmed$Y11.5))
CCIndirEcoEffnum <- nrow(CCIndirEcoEff)
CCIndirEcoEffper <-round((CCIndirEcoEffnum/threatobsnum * 100), dig=2)

CCSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y11.1) | grepl("2.1", threatmed$Y11.2) | grepl("2.1", threatmed$Y11.3) | grepl("2.1", threatmed$Y11.4) | grepl("2.1", threatmed$Y11.5))
CCSpecMortnum <- nrow(CCSpecMort)
CCSpecMortper <-round((CCSpecMortnum/threatobsnum * 100), dig=2)

CCSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y11.1) | grepl("2.2", threatmed$Y11.2) | grepl("2.2", threatmed$Y11.3) | grepl("2.2", threatmed$Y11.4) | grepl("2.2", threatmed$Y11.5))
CCSpecDistnum <- nrow(CCSpecDist)
CCSpecDistper <-round((CCSpecDistnum/threatobsnum * 100), dig=2)

CCHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y11.1) | grepl("2.3.1", threatmed$Y11.2) | grepl("2.3.1", threatmed$Y11.3) | grepl("2.3.1", threatmed$Y11.4) | grepl("2.3.1", threatmed$Y11.5))
CCHybridnum <- nrow(CCHybrid)
CCHybridper <-round((CCHybridnum/threatobsnum * 100), dig=2)

CCComp <-subset(threatmed, grepl("2.3.2", threatmed$Y11.1) | grepl("2.3.2", threatmed$Y11.2) | grepl("2.3.2", threatmed$Y11.3) | grepl("2.3.2", threatmed$Y11.4) | grepl("2.3.2", threatmed$Y11.5))
CCCompnum <- nrow(CCComp)
CCCompper <-round((CCCompnum/threatobsnum * 100), dig=2)

CCLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y11.1) | grepl("2.3.3", threatmed$Y11.2) | grepl("2.3.3", threatmed$Y11.3) | grepl("2.3.3", threatmed$Y11.4) | grepl("2.3.3", threatmed$Y11.5))
CCLossMutnum <- nrow(CCLossMut)
CCLossMutper <-round((CCLossMutnum/threatobsnum * 100), dig=2)

CCLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y11.1) | grepl("2.3.4", threatmed$Y11.2) | grepl("2.3.4", threatmed$Y11.3) | grepl("2.3.4", threatmed$Y11.4) | grepl("2.3.4", threatmed$Y11.5))
CCLossPollnum <- nrow(CCLossPoll)
CCLossPollper <-round((CCLossPollnum/threatobsnum * 100), dig=2)

CCInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y11.1) | grepl("2.3.5", threatmed$Y11.2) | grepl("2.3.5", threatmed$Y11.3) | grepl("2.3.5", threatmed$Y11.4) | grepl("2.3.5", threatmed$Y11.5))
CCInbreednum <- nrow(CCInbreed)
CCInbreedper <-round((CCInbreednum/threatobsnum * 100), dig=2)

CCSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y11.1) | grepl("2.3.6", threatmed$Y11.2) | grepl("2.3.6", threatmed$Y11.3) | grepl("2.3.6", threatmed$Y11.4) | grepl("2.3.6", threatmed$Y11.5))
CCSkewSexnum <- nrow(CCSkewSex)
CCSkewSexper <-round((CCSkewSexnum/threatobsnum * 100), dig=2)

CCRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y11.1) | grepl("2.3.7", threatmed$Y11.2) | grepl("2.3.7", threatmed$Y11.3) | grepl("2.3.7", threatmed$Y11.4) | grepl("2.3.7", threatmed$Y11.5))
CCRedRepSucnum <- nrow(CCRedRepSuc)
CCRedRepSucper <-round((CCRedRepSucnum/threatobsnum * 100), dig=2)

CCOth <-subset(threatmed, grepl("2.3.8", threatmed$Y11.1) | grepl("2.3.8", threatmed$Y11.2) | grepl("2.3.8", threatmed$Y11.3) | grepl("2.3.8", threatmed$Y11.4) | grepl("2.3.8", threatmed$Y11.5))
CCOthnum <- nrow(CCOth)
CCOthper <-round((CCOthnum/threatobsnum * 100), dig=2)

CCtotal <- (CCEcoConnum + CCEcoDegnum + CCIndirEcoEffnum + CCPastUnnum + CCSpecDistnum + CCHybridnum + CCCompnum + CCLossMutnum + CCLossPollnum + CCInbreednum + CCSkewSexnum + CCRedRepSucnum + CCOthnum)
CCPer <- round((CCtotal/threatobsnum * 100), dig = 2)

#Threat 12: Other options
OthEcoCon <- subset(threatmed, grepl("1.1", threatmed$Y12.1))
OthEcoConnum <- nrow(OthEcoCon)
OthEcoConper <-round((OthEcoConnum/threatobsnum * 100), dig=2)

OthEcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y12.1))
OthEcoDegnum <- nrow(OthEcoDeg)
OthEcoDegper <-round((OthEcoDegnum/threatobsnum * 100), dig=2)

OthIndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y12.1))
OthIndirEcoEffnum <- nrow(OthIndirEcoEff)
OthIndirEcoEffper <-round((OthIndirEcoEffnum/threatobsnum * 100), dig=2)

OthSpecMort <-subset(threatmed, grepl("2.1", threatmed$Y12.1))
OthSpecMortnum <- nrow(OthSpecMort)
OthSpecMortper <-round((OthSpecMortnum/threatobsnum * 100), dig=2)

OthSpecDist <-subset(threatmed, grepl("2.2", threatmed$Y12.1))
OthSpecDistnum <- nrow(OthSpecDist)
OthSpecDistper <-round((OthSpecDistnum/threatobsnum * 100), dig=2)

OthHybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y12.1))
OthHybridnum <- nrow(OthHybrid)
OthHybridper <-round((OthHybridnum/threatobsnum * 100), dig=2)

OthComp <-subset(threatmed, grepl("2.3.2", threatmed$Y12.1))
OthCompnum <- nrow(OthComp)
OthCompper <-round((OthCompnum/threatobsnum * 100), dig=2)

OthLossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y12.1))
OthLossMutnum <- nrow(OthLossMut)
OthLossMutper <-round((OthLossMutnum/threatobsnum * 100), dig=2)

OthLossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y12.1))
OthLossPollnum <- nrow(OthLossPoll)
OthLossPollper <-round((OthLossPollnum/threatobsnum * 100), dig=2)

OthInbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y12.1))
OthInbreednum <- nrow(OthInbreed)
OthInbreedper <-round((OthInbreednum/threatobsnum * 100), dig=2)

OthSkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y12.1))
OthSkewSexnum <- nrow(OthSkewSex)
OthSkewSexper <-round((OthSkewSexnum/threatobsnum * 100), dig=2)

OthRedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y12.1))
OthRedRepSucnum <- nrow(OthRedRepSuc)
OthRedRepSucper <-round((OthRedRepSucnum/threatobsnum * 100), dig=2)

OthOth <-subset(threatmed, grepl("2.3.8", threatmed$Y12.1))
OthOthnum <- nrow(OthOth)
OthOthper <-round((OthOthnum/threatobsnum * 100), dig=2)

Othtotal <- (OthEcoConnum + OthEcoDegnum + OthIndirEcoEffnum + OthPastUnnum + OthSpecDistnum + OthHybridnum + OthCompnum + OthLossMutnum + OthLossPollnum + OthInbreednum + OthSkewSexnum + OthRedRepSucnum + OthOthnum)
OthPer <- round((Othtotal/threatobsnum * 100), dig = 2)

## --------------------------------------------------------------------

# Combine stressors from threats

## --------------------------------------------------------------------

EcoCon <- (ResEcoConper + AgriEcoConper +  EnEcoConper +  TransEcoConper +  BioEcoConper +  HuEcoConper + NatEcoConper + InvEcoConper + PollEcoConper + GeoEcoConper + CCEcoConper + OthEcoConper)
EcoDeg <- (ResEcoDegper + AgriEcoDegper + EnEcoDegper + TransEcoDegper + BioEcoDegper + HuEcoDegper + NatEcoDegper + InvEcoDegper + PollEcoDegper + GeoEcoDegper + CCEcoDegper + OthEcoDegper)
IndirEcoEff <- (ResIndirEcoEffper + AgriIndirEcoEffper + EnIndirEcoEffper + TransIndirEcoEffper + BioIndirEcoEffper + HuIndirEcoEffper + NatIndirEcoEffper + InvIndirEcoEffper + PollIndirEcoEffper + GeoIndirEcoEffper + CCIndirEcoEffper + OthIndirEcoEffper)
SpeciesMort <- (ResSpecMortper + AgriSpecMortper + EnSpecMortper + TransSpecMortper + BioSpecMortper + HuSpecMortper + NatSpecMortper + InvSpecMortper + PollSpecMortper + GeoSpecMortper + CCSpecMortper + OthSpecMortper)
SpecDist <- (ResSpecDistper + AgriSpecDistper + EnSpecDistper + TransSpecDistper + BioSpecDistper + HuSpecDistper + NatSpecDistper + InvSpecDistper + PollSpecDistper + GeoSpecDistper + CCSpecDistper + OthSpecDistper)
Hybrid <- (ResHybridper + AgriHybridper + EnHybridper + TransHybridper + BioHybridper + HuHybridper + NatHybridper + InvHybridper + PollHybridper + GeoHybridper + CCHybridper + OthHybridper)
Comp <- (ResCompper + AgriCompper + EnCompper + TransCompper + BioCompper + HuCompper + NatCompper + InvCompper + PollCompper + GeoCompper + CCCompper + OthCompper)
RedRepSuc <- (ResRedRepSucper + AgriRedRepSucper + EnRedRepSucper + TransRedRepSucper + BioRedRepSucper + HuRedRepSucper + NatRedRepSucper + InvRedRepSucper + PollRedRepSucper + GeoRedRepSucper + CCRedRepSucper + OthRedRepSucper)
Other <- (ResOthper + AgriOthper + EnOthper + TransOthper + BioOthper + HuOthper + NatOthper + InvOthper + PollOthper + GeoOthper + CCOthper + OthOthper)
SkewSex <- (ResSkewSexper + AgriSkewSexper + EnSkewSexper + TransSkewSexper + BioSkewSexper + HuSkewSexper + NatSkewSexper + InvSkewSexper + PollSkewSexper + GeoSkewSexper + CCSkewSexper + OthSkewSexper)
LossMut <- (ResLossMutper + AgriLossMutper + EnLossMutper + TransLossMutper + BioLossMutper + HuLossMutper + NatLossMutper + InvLossMutper + PollLossMutper + GeoLossMutper + CCLossMutper + OthLossMutper)
LossPoll <- (ResLossPollper + AgriLossPollper + EnLossPollper + TransLossPollper + BioLossPollper + HuLossPollper + NatLossPollper + InvLossPollper + PollLossPollper + GeoLossPollper + CCLossPollper + OthLossPollper)
Inbreed <- (ResInbreedper + AgriInbreedper + EnInbreedper + TransInbreedper + BioInbreedper + HuInbreedper + NatInbreedper + InvInbreedper + PollInbreedper + GeoInbreedper + CCInbreedper + OthInbreedper)

# Create data:
stressdata <- data.frame(stressor = c("Ecosystem Conversion", "Ecosystem Degradation", "Indirect Ecosystem Effects", "Species Mortality", "Species Disturbance", "Hybridisation", "Competition", "Reduced Reproductive Success", "Other"), value = c(EcoCon, EcoDeg, IndirEcoEff, SpeciesMort, SpecDist, Hybrid, Comp, RedRepSuc, Other))

#plot lollipop chart
data <- stressdata %>%
  arrange(value) %>%
  mutate(stressor = factor(stressor, stressor))

ggplot(data, aes(x=stressor, y=value)) +
  geom_segment( aes(x=stressor, xend=stressor, y=0, yend=value)) +
  geom_point( aes(x = stressor, y = value), size=5, color="orange" ) +
  coord_flip() +
  theme_light(base_size = 20) +
  geom_text(aes(label=round(data$value, digits = 1), hjust=-.5), cex = 6) +
  theme(
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.x = element_text(colour = "black"),
    axis.text.y = element_text(colour = "black"), 
    axis.title.x = element_text(size = 32),
    axis.title.y = element_text(size = 32),
    legend.position = c(0.85, 0.15),
    plot.margin = unit(c(0.5,0.5,0.5,0.5), "cm")) +
  xlab("Stressor") +
  ylab("Percent Impacted") +
  expand_limits(y = 75)
