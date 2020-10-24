# Supplementary code for Short et al. Part 7 - proportions of medicinal species with each threat
# Monica Short, August 2020

#Load package
library(tidyverse)

#Set working directory
setwd("~/Documents/Short")
getwd()

#read in data
use.data<- read.csv("./Shortdata.csv", na.strings=c(""," ","NA"))

#filter to medicinal use
threatmed <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
threatobsnum <- nrow(threatmed)

#Species that have threat data 
threatmed <- threatmed[which(!is.na(threatmed$X1) | !is.na(threatmed$X1.1) | !is.na(threatmed$X1.2) | !is.na(threatmed$X1.3) | 
                              !is.na(threatmed$X2) | !is.na(threatmed$X2.1) | !is.na(threatmed$X2.1.2) | !is.na(threatmed$X2.1.3) | !is.na(threatmed$X2.1.4) | !is.na(threatmed$X2.2) | !is.na(threatmed$X2.2.1) | !is.na(threatmed$X2.2.2) | !is.na(threatmed$X2.2.3) |
                              !is.na(threatmed$X2.3) | !is.na(threatmed$X2.3.1) | !is.na(threatmed$X2.3.2) | !is.na(threatmed$X2.3.3) | !is.na(threatmed$X2.3.4) |  
                              !is.na(threatmed$X2.4) | !is.na(threatmed$X2.4.1) | !is.na(threatmed$X2.4.2) | !is.na(threatmed$X2.4.3) | 
                              !is.na(threatmed$X3) | !is.na(threatmed$X3.1) | !is.na(threatmed$X3.2) | !is.na(threatmed$X3.3) | 
                              !is.na(threatmed$X4) | !is.na(threatmed$X4.1) | !is.na(threatmed$X4.2) | !is.na(threatmed$X4.3) | !is.na(threatmed$X4.4) | 
                              !is.na(threatmed$X5) | !is.na(threatmed$X5.1) | !is.na(threatmed$X5.1.1) | !is.na(threatmed$X5.1.2) | !is.na(threatmed$X5.1.3) | !is.na(threatmed$X5.1.4) | 
                              !is.na(threatmed$X5.2) | !is.na(threatmed$X5.2.1) | !is.na(threatmed$X5.2.2) | !is.na(threatmed$X5.2.3) | !is.na(threatmed$X5.2.4) | 
                              !is.na(threatmed$X5.3) | !is.na(threatmed$X5.3.1) | !is.na(threatmed$X5.3.2) | !is.na(threatmed$X5.3.3) | !is.na(threatmed$X5.3.4) | 
                              !is.na(threatmed$X5.4) | !is.na(threatmed$X5.4.1) | !is.na(threatmed$X5.4.2) | !is.na(threatmed$X5.4.3) | !is.na(threatmed$X5.4.4) | !is.na(threatmed$X5.4.5) | !is.na(threatmed$X5.4.6) | 
                              !is.na(threatmed$X6) | !is.na(threatmed$X6.1) | !is.na(threatmed$X6.2) | !is.na(threatmed$X6.3) | 
                              !is.na(threatmed$X7) | !is.na(threatmed$X7.1) | !is.na(threatmed$X7.1.1) | !is.na(threatmed$X7.1.2) | !is.na(threatmed$X7.1.3) | 
                              !is.na(threatmed$X7.2) | !is.na(threatmed$X7.2.1) | !is.na(threatmed$X7.2.2) | !is.na(threatmed$X7.2.3) | !is.na(threatmed$X7.2.4) | !is.na(threatmed$X7.2.5) | !is.na(threatmed$X7.2.6) | !is.na(threatmed$X7.2.7) | !is.na(threatmed$X7.2.8) | !is.na(threatmed$X7.2.9) | !is.na(threatmed$X7.2.10) | !is.na(threatmed$X7.2.11) | 
                              !is.na(threatmed$X7.3) | !is.na(threatmed$X8) | !is.na(threatmed$X8.1) | !is.na(threatmed$X8.1.1) | !is.na(threatmed$X8.1.2) | 
                              !is.na(threatmed$X8.2) | !is.na(threatmed$X8.2.1) | !is.na(threatmed$X8.2.2) | 
                              !is.na(threatmed$X8.3) | !is.na(threatmed$X8.4) | !is.na(threatmed$X8.4.1) | !is.na(threatmed$X8.4.2) | 
                              !is.na(threatmed$X8.5) | !is.na(threatmed$X8.5.1) | !is.na(threatmed$X8.5.2) | 
                              !is.na(threatmed$X8.6) | !is.na(threatmed$X9) | !is.na(threatmed$X9.1) | !is.na(threatmed$X9.1.1) | !is.na(threatmed$X9.1.2) | !is.na(threatmed$X9.1.3) | 
                              !is.na(threatmed$X9.2) | !is.na(threatmed$X9.2.1) | !is.na(threatmed$X9.2.2) | !is.na(threatmed$X9.2.3) | 
                              !is.na(threatmed$X10) | !is.na(threatmed$X10.1) | !is.na(threatmed$X10.2) | !is.na(threatmed$X10.3) | 
                              !is.na(threatmed$X11) | !is.na(threatmed$X11.1) |!is.na(threatmed$X11.2) | !is.na(threatmed$X11.3) |  !is.na(threatmed$X11.4) | !is.na(threatmed$X11.5) | 
                              !is.na(threatmed$X12) | !is.na(threatmed$X12.1)),]
#re run with the following line included for threats for medicinal only species
#threatmed <- threatmed[which(threatmed$useTradeId..19 =="FALSE" & threatmed$useTradeId..23 == "FALSE" & threatmed$useTradeId..23 == "FALSE" & threatmed$useTradeId..27 == "FALSE" & threatmed$useTradeId..20 =="FALSE" & threatmed$useTradeId..32 =="FALSE" & threatmed$useTradeId..24 =="FALSE" & threatmed$useTradeId..29 =="FALSE" & threatmed$useTradeId..33 =="FALSE" & threatmed$useTradeId..25 =="FALSE" & threatmed$useTradeId..28 =="FALSE" & threatmed$useTradeId..22 =="FALSE" & threatmed$useTradeId..21 =="FALSE" & threatmed$useTradeId..35 =="FALSE" & threatmed$useTradeId..36 =="FALSE" & threatmed$useTradeId..34 =="FALSE" & threatmed$useTradeId..31 =="FALSE"),]
threatobsnum <- nrow(threatmed)
#Threat 1: Residential and commercial development

ResLow <-threatmed[which(threatmed$X1.1 =="Low Impact: 3" | threatmed$X1.1 =="Low Impact: 4" | threatmed$X1.1 =="Low Impact: 5" | threatmed$X1.2 =="Low Impact: 3" | threatmed$X1.2 =="Low Impact: 4" | threatmed$X1.2 =="Low Impact: 5" | threatmed$X1.3 =="Low Impact: 3" | threatmed$X1.3 =="Low Impact: 4" | threatmed$X1.3 =="Low Impact: 5"),]
ResLownum <- nrow(ResLow)
ResLowper <-round((ResLownum/threatobsnum * 100), dig=2)

ResMed <-threatmed[which(threatmed$X1.1 =="Medium Impact: 6" | threatmed$X1.1 =="Medium Impact: 7" | threatmed$X1.2 =="Medium Impact: 6" | threatmed$X1.2 =="Medium Impact: 7" | threatmed$X1.3 =="Medium Impact: 6" | threatmed$X1.3 =="Medium Impact: 7"),]
ResMednum <- nrow(ResMed)
ResMedper <-round((ResMednum/threatobsnum * 100), dig=2)

ResHigh <-threatmed[which(threatmed$X1.1 =="High Impact: 8" | threatmed$X1.1 =="High Impact: 9" | threatmed$X1.2 =="High Impact: 8" | threatmed$X1.2 =="High Impact: 9" | threatmed$X1.3 =="High Impact: 8" | threatmed$X1.3 =="High Impact: 9"),]
ResHighnum <- nrow(ResHigh)
ResHighper <-round((ResHighnum/threatobsnum * 100), dig=2)

ResUnk <-threatmed[which(threatmed$X1.1 =="Unknown"| threatmed$X1.2 =="Unknown" | threatmed$X1.3 =="Unknown"),]
ResUnknum <- nrow(ResUnk)
ResUnkper <-round((ResUnknum/threatobsnum * 100), dig=2)

ResPast <-threatmed[which(threatmed$X1.1 =="Past Impact" | threatmed$X1.2 =="Past Impact"| threatmed$X1.3 =="Past Impact"),]
ResPastnum <- nrow(ResPast)
ResPastper <-round((ResPastnum/threatobsnum * 100), dig=2)

Reslist <-threatmed[which(threatmed$X1.1 =="list()" | threatmed$X1.2 =="list()" | threatmed$X1.3 =="list()"),]
Reslistnum <- nrow(Reslist)
Reslistper <-round((Reslistnum/threatobsnum * 100), dig=2)

ResNS <-threatmed[which(threatmed$X1.1 =="(Not specified)" | threatmed$X1.2 =="(Not specified)" | threatmed$X1.3 =="(Not specified)"),]
ResNSnum <- nrow(ResNS)
ResNSper <-round((ResNSnum/threatobsnum * 100), dig=2)

ResNO <- threatmed[which(threatmed$X1.1 =="No/Negligible Impact: 0" | threatmed$X1.1 =="No/Negligible Impact: 1" | threatmed$X1.1 =="No/Negligible Impact: 2" | threatmed$X1.2 =="No/Negligible Impact: 0" | threatmed$X1.2 =="No/Negligible Impact: 1" | threatmed$X1.2 =="No/Negligible Impact: 2" | threatmed$X1.3 =="No/Negligible Impact: 0" | threatmed$X1.3 =="No/Negligible Impact: 1" | threatmed$X1.3 =="No/Negligible Impact: 2"),]
ResNOnum <- nrow(ResNO)
ResNOper <-round((ResNOnum/threatobsnum * 100), dig=2)

Restotal <- (ResLownum + ResMednum + ResHighnum + ResUnknum + ResPastnum + Reslistnum + ResNSnum + ResNOnum)
ResPer <- round((Restotal/threatobsnum * 100), dig = 2)

#Threat 2: Agriculture and aquaculture
AgriLow <-threatmed[which(threatmed$X2.1 =="Low Impact: 3" | threatmed$X2.1 =="Low Impact: 4" | threatmed$X2.1 =="Low Impact: 5" | threatmed$X2.1.1 =="Low Impact: 3" | threatmed$X2.1.1 =="Low Impact: 4" | threatmed$X2.1.1 =="Low Impact: 5" | threatmed$X2.1.2 =="Low Impact: 3" | threatmed$X2.1.2 =="Low Impact: 4" | threatmed$X2.1.2 =="Low Impact: 5" | threatmed$X2.1.3 =="Low Impact: 3" | threatmed$X2.1.3 =="Low Impact: 4" | threatmed$X2.1.3 =="Low Impact: 5" | threatmed$X2.1.4 =="Low Impact: 3" | threatmed$X2.1.4 =="Low Impact: 4" | threatmed$X2.1.4 =="Low Impact: 5" |
                            threatmed$X2.2 =="Low Impact: 3" | threatmed$X2.2 =="Low Impact: 4" | threatmed$X2.2 =="Low Impact: 5" | threatmed$X2.2.1 =="Low Impact: 3" | threatmed$X2.2.1 =="Low Impact: 4" | threatmed$X2.2.1 =="Low Impact: 5" | threatmed$X2.2.2 =="Low Impact: 3" | threatmed$X2.2.2 =="Low Impact: 4" | threatmed$X2.2.2 =="Low Impact: 5" | threatmed$X2.2.3 =="Low Impact: 3" | threatmed$X2.2.3 =="Low Impact: 4" | threatmed$X2.2.3 =="Low Impact: 5" | 
                            threatmed$X2.3 =="Low Impact: 3" | threatmed$X2.3 =="Low Impact: 4" | threatmed$X2.3 =="Low Impact: 5" | threatmed$X2.3.1 =="Low Impact: 3" | threatmed$X2.3.1 =="Low Impact: 4" | threatmed$X2.3.1 =="Low Impact: 5" | threatmed$X2.3.2 =="Low Impact: 3" | threatmed$X2.3.2 =="Low Impact: 4" | threatmed$X2.3.2 =="Low Impact: 5" | threatmed$X2.3.3 =="Low Impact: 3" | threatmed$X2.3.3 =="Low Impact: 4" | threatmed$X2.3.3 =="Low Impact: 5" | threatmed$X2.3.4 =="Low Impact: 3" | threatmed$X2.3.4 =="Low Impact: 4" | threatmed$X2.3.4 =="Low Impact: 5" | 
                            threatmed$X2.4 =="Low Impact: 3" | threatmed$X2.4 =="Low Impact: 4" | threatmed$X2.4 =="Low Impact: 5" | threatmed$X2.4.1 =="Low Impact: 3" | threatmed$X2.4.1 =="Low Impact: 4" | threatmed$X2.4.1 =="Low Impact: 5" | threatmed$X2.4.2 =="Low Impact: 3" | threatmed$X2.4.2 =="Low Impact: 4" | threatmed$X2.4.2 =="Low Impact: 5" | threatmed$X2.4.3 =="Low Impact: 3" | threatmed$X2.4.3 =="Low Impact: 4" | threatmed$X2.4.3 =="Low Impact: 5"),]
AgriLownum <- nrow(AgriLow)
AgriLowper <-round((AgriLownum/threatobsnum * 100), dig=2)

AgriMed <-threatmed[which(threatmed$X2.1 =="Medium Impact: 6" | threatmed$X2.1 =="Medium Impact: 7" | threatmed$X2.1.1 =="Medium Impact: 6" | threatmed$X2.1.1 =="Medium Impact: 7" | threatmed$X2.1.2 =="Medium Impact: 6" | threatmed$X2.1.2 =="Medium Impact: 7" | threatmed$X2.1.3 =="Medium Impact: 6" | threatmed$X2.1.3 =="Medium Impact: 7" | threatmed$X2.1.4 =="Medium Impact: 6" | threatmed$X2.1.4 =="Medium Impact: 7" | 
                            threatmed$X2.2 =="Medium Impact: 6" | threatmed$X2.2 =="Medium Impact: 7" | threatmed$X2.2.1 =="Medium Impact: 6" | threatmed$X2.2.1 =="Medium Impact: 7" | threatmed$X2.2.2 =="Medium Impact: 6" | threatmed$X2.2.2 =="Medium Impact: 7" | threatmed$X2.2.3 =="Medium Impact: 6" | threatmed$X2.2.3 =="Medium Impact: 7" |  
                            threatmed$X2.3 =="Medium Impact: 6" | threatmed$X2.3 =="Medium Impact: 7" | threatmed$X2.3.1 =="Medium Impact: 6" | threatmed$X2.3.1 =="Medium Impact: 7" | threatmed$X2.3.2 =="Medium Impact: 6" | threatmed$X2.3.2 =="Medium Impact: 7" | threatmed$X2.3.3 =="Medium Impact: 6" | threatmed$X2.3.3 =="Medium Impact: 7" | threatmed$X2.3.4 =="Medium Impact: 6" | threatmed$X2.3.4 =="Medium Impact: 7" | 
                            threatmed$X2.4 =="Medium Impact: 6" | threatmed$X2.4 =="Medium Impact: 7" | threatmed$X2.4.1 =="Medium Impact: 6" | threatmed$X2.4.1 =="Medium Impact: 7" | threatmed$X2.4.2 =="Medium Impact: 6" | threatmed$X2.4.2 =="Medium Impact: 7" | threatmed$X2.4.3 =="Medium Impact: 6" | threatmed$X2.4.3 =="Medium Impact: 7"),]
AgriMednum <- nrow(AgriMed)
AgriMedper <-round((AgriMednum/threatobsnum * 100), dig=2)

AgriHigh <-threatmed[which(threatmed$X2.1 =="High Impact: 8" | threatmed$X2.1 =="High Impact: 9" | threatmed$X2.1.1 =="High Impact: 8" | threatmed$X2.1.1 =="High Impact: 9" | threatmed$X2.1.2 =="High Impact: 8" | threatmed$X2.1.2 =="High Impact: 9" | threatmed$X2.1.3 =="High Impact: 8" | threatmed$X2.1.3 =="High Impact: 9" | threatmed$X2.1.4 =="High Impact: 8" | threatmed$X2.1.4 =="High Impact: 9" | 
                             threatmed$X2.2 =="High Impact: 8" | threatmed$X2.2 =="High Impact: 9" | threatmed$X2.2.1 =="High Impact: 8" | threatmed$X2.2.1 =="High Impact: 9" | threatmed$X2.2.2 =="High Impact: 8" | threatmed$X2.2.2 =="High Impact: 9" | threatmed$X2.2.3 =="High Impact: 8" | threatmed$X2.2.3 =="High Impact: 9" |  
                             threatmed$X2.3 =="High Impact: 8" | threatmed$X2.3 =="High Impact: 9" |threatmed$X2.3.1 =="High Impact: 8" | threatmed$X2.3.1 =="High Impact: 9" | threatmed$X2.3.2 =="High Impact: 8" | threatmed$X2.3.2 =="High Impact: 9" | threatmed$X2.3.3 =="High Impact: 8" | threatmed$X2.3.3 =="High Impact: 9" | threatmed$X2.3.4 =="High Impact: 8" | threatmed$X2.3.4 =="High Impact: 9" | 
                             threatmed$X2.4 =="High Impact: 8" | threatmed$X2.4 =="High Impact: 9" | threatmed$X2.4.1 =="High Impact: 8" | threatmed$X2.4.1 =="High Impact: 9" | threatmed$X2.4.2 =="High Impact: 8" | threatmed$X2.4.2 =="High Impact: 9" | threatmed$X2.4.3 =="High Impact: 8" | threatmed$X2.4.3 =="High Impact: 9"),]
AgriHighnum <- nrow(AgriHigh)
AgriHighper <-round((AgriHighnum/threatobsnum * 100), dig=2)

AgriUnk <-threatmed[which(threatmed$X2.1 =="Unknown"| threatmed$X2.1.1 =="Unknown" | threatmed$X2.1.2 =="Unknown" | threatmed$X2.1.3 =="Unknown"| threatmed$X2.1.4 =="Unknown" | threatmed$X2.2 =="Unknown" | threatmed$X2.2.1 =="Unknown"| threatmed$X2.2.2 =="Unknown" | threatmed$X2.2.3 =="Unknown" | threatmed$X2.3 =="Unknown"| threatmed$X2.3.1 =="Unknown" | threatmed$X2.3.2 =="Unknown" |threatmed$X2.3.3 =="Unknown"| threatmed$X2.3.4 =="Unknown" | threatmed$X2.4 =="Unknown" |threatmed$X2.4.1 =="Unknown"| threatmed$X2.4.2 =="Unknown" | threatmed$X2.4.3 =="Unknown"),]
AgriUnknum <- nrow(AgriUnk)
AgriUnkper <-round((AgriUnknum/threatobsnum * 100), dig=2)

AgriPast <-threatmed[which(threatmed$X2.1 =="Past Impact" | threatmed$X2.1.1 =="Past Impact" | threatmed$X2.1.2 =="Past Impact" | threatmed$X2.1.3 =="Past Impact"| threatmed$X2.1.4 =="Past Impact" | threatmed$X2.2 =="Past Impact" | threatmed$X2.2.1 =="Past Impact"| threatmed$X2.2.2 =="Past Impact" | threatmed$X2.2.3 =="Past Impact" | threatmed$X2.3 =="Past Impact"| threatmed$X2.3.1 =="Past Impact" | threatmed$X2.3.2 =="Past Impact" |threatmed$X2.3.3 =="Past Impact"| threatmed$X2.3.4 =="Past Impact" | threatmed$X2.4 =="Past Impact" |threatmed$X2.4.1 =="Past Impact"| threatmed$X2.4.2 =="Past Impact" | threatmed$X2.4.3 =="Past Impact"),]
AgriPastnum <- nrow(AgriPast)
AgriPastper <-round((AgriPastnum/threatobsnum * 100), dig=2)

Agrilist <-threatmed[which(threatmed$X2.1 =="list()" | threatmed$X2.1.1 =="list()" | threatmed$X2.1.2 =="list()" | threatmed$X2.1.3 =="list()"| threatmed$X2.1.4 =="list()" | threatmed$X2.2 =="list()" | threatmed$X2.2.1 =="list()"| threatmed$X2.2.2 =="list()" | threatmed$X2.2.3 =="list()" | threatmed$X2.3 =="list()"| threatmed$X2.3.1 =="list()" | threatmed$X2.3.2 =="list()" |threatmed$X2.3.3 =="list()"| threatmed$X2.3.4 =="list()" | threatmed$X2.4 =="list()" |threatmed$X2.4.1 =="list()"| threatmed$X2.4.2 =="list()" | threatmed$X2.4.3 =="list()"),]
Agrilistnum <- nrow(Agrilist)
Agrilistper <-round((Agrilistnum/threatobsnum * 100), dig=2)

AgriNS <-threatmed[which(threatmed$X2.1 =="(Not specified)" | threatmed$X2.1.1 =="(Not specified)" | threatmed$X2.1.2 =="(Not specified)" | threatmed$X2.1.3 =="(Not specified)"| threatmed$X2.1.4 =="(Not specified)" | threatmed$X2.2 =="(Not specified)" | threatmed$X2.2.1 =="(Not specified)"| threatmed$X2.2.2 =="(Not specified)" | threatmed$X2.2.3 =="(Not specified)" | threatmed$X2.3 =="(Not specified)"| threatmed$X2.3.1 =="(Not specified)" | threatmed$X2.3.2 =="(Not specified)" |threatmed$X2.3.3 =="(Not specified)"| threatmed$X2.3.4 =="(Not specified)" | threatmed$X2.4 =="(Not specified)" |threatmed$X2.4.1 =="(Not specified)"| threatmed$X2.4.2 =="(Not specified)" | threatmed$X2.4.3 =="(Not specified)"),]
AgriNSnum <- nrow(AgriNS)
AgriNSper <-round((AgriNSnum/threatobsnum * 100), dig=2)

AgriNO <- threatmed[which(threatmed$X2.1 =="No/Negligible Impact: 0" | threatmed$X2.1 =="No/Negligible Impact: 1" | threatmed$X2.1 =="No/Negligible Impact: 2" | threatmed$X2.1.1 =="No/Negligible Impact: 0" | threatmed$X2.1.1 =="No/Negligible Impact: 1" | threatmed$X2.1.1 =="No/Negligible Impact: 2" | threatmed$X2.1.2 =="No/Negligible Impact: 0" | threatmed$X2.1.2 =="No/Negligible Impact: 1" | threatmed$X2.1.2 =="No/Negligible Impact: 2" | threatmed$X2.1.3 =="No/Negligible Impact: 0" | threatmed$X2.1.3 =="No/Negligible Impact: 1" | threatmed$X2.1.3 =="No/Negligible Impact: 2" | threatmed$X2.1.4 =="No/Negligible Impact: 0" | threatmed$X2.1.4 =="No/Negligible Impact: 1" | threatmed$X2.1.4 =="No/Negligible Impact: 2" | 
                            threatmed$X2.2 =="No/Negligible Impact: 0" | threatmed$X2.2 =="No/Negligible Impact: 1" | threatmed$X2.2 =="No/Negligible Impact: 2" | threatmed$X2.2.1 =="No/Negligible Impact: 0" | threatmed$X2.2.1 =="No/Negligible Impact: 1" | threatmed$X2.2.1 =="No/Negligible Impact: 2" | threatmed$X2.2.2 =="No/Negligible Impact: 0" | threatmed$X2.2.2 =="No/Negligible Impact: 1" | threatmed$X2.2.2 =="No/Negligible Impact: 2" | threatmed$X2.2.3 =="No/Negligible Impact: 0" | threatmed$X2.2.3 =="No/Negligible Impact: 1" | threatmed$X2.2.3 =="No/Negligible Impact: 2" |
                            threatmed$X2.3 =="No/Negligible Impact: 0" | threatmed$X2.3 =="No/Negligible Impact: 1" | threatmed$X2.3 =="No/Negligible Impact: 2" | threatmed$X2.3.1 =="No/Negligible Impact: 0" | threatmed$X2.3.1 =="No/Negligible Impact: 1" | threatmed$X2.3.1 =="No/Negligible Impact: 2" | threatmed$X2.3.2 =="No/Negligible Impact: 0" | threatmed$X2.3.2 =="No/Negligible Impact: 1" | threatmed$X2.3.2 =="No/Negligible Impact: 2" | threatmed$X2.3.3 =="No/Negligible Impact: 0" | threatmed$X2.3.3 =="No/Negligible Impact: 1" | threatmed$X2.3.3 =="No/Negligible Impact: 2" | threatmed$X2.3.4 =="No/Negligible Impact: 0" | threatmed$X2.3.4 =="No/Negligible Impact: 1" | threatmed$X2.3.4 =="No/Negligible Impact: 2" |
                            threatmed$X2.4 =="No/Negligible Impact: 0" | threatmed$X2.4 =="No/Negligible Impact: 1" | threatmed$X2.4 =="No/Negligible Impact: 2" | threatmed$X2.4.1 =="No/Negligible Impact: 0" | threatmed$X2.4.1 =="No/Negligible Impact: 1" | threatmed$X2.4.1 =="No/Negligible Impact: 2" | threatmed$X2.4.2 =="No/Negligible Impact: 0" | threatmed$X2.4.2 =="No/Negligible Impact: 1" | threatmed$X2.4.2 =="No/Negligible Impact: 2" | threatmed$X2.4.3 =="No/Negligible Impact: 0" | threatmed$X2.4.3 =="No/Negligible Impact: 1" | threatmed$X2.4.3 =="No/Negligible Impact: 2"),]
AgriNOnum <- nrow(AgriNO)
AgriNOper <-round((AgriNOnum/threatobsnum * 100), dig=2)

Agritotal <- (AgriLownum + AgriMednum + AgriHighnum + AgriUnknum + AgriPastnum + Agrilistnum + AgriNSnum + AgriNOnum)
AgriPer <- round((Agritotal/threatobsnum * 100), dig = 2)

#Threat 3: Energy Production and mining
EnLow <-threatmed[which(threatmed$X3.1 =="Low Impact: 3" | threatmed$X3.1 =="Low Impact: 4" | threatmed$X3.1 =="Low Impact: 5" | threatmed$X3.2 =="Low Impact: 3" | threatmed$X3.2 =="Low Impact: 4" | threatmed$X3.2 =="Low Impact: 5" | threatmed$X3.3 =="Low Impact: 3" | threatmed$X3.3 =="Low Impact: 4" | threatmed$X3.3 =="Low Impact: 5"),]
EnLownum <- nrow(EnLow)
EnLowper <-round((EnLownum/threatobsnum * 100), dig=2)

EnMed <-threatmed[which(threatmed$X3.1 =="Medium Impact: 6" | threatmed$X3.1 =="Medium Impact: 7" | threatmed$X3.2 =="Medium Impact: 6" | threatmed$X3.2 =="Medium Impact: 7" | threatmed$X3.3 =="Medium Impact: 6" | threatmed$X3.3 =="Medium Impact: 7"),]
EnMednum <- nrow(EnMed)
EnMedper <-round((EnMednum/threatobsnum * 100), dig=2)

EnHigh <-threatmed[which(threatmed$X3.1 =="High Impact: 8" | threatmed$X3.1 =="High Impact: 9" | threatmed$X3.2 =="High Impact: 8" | threatmed$X3.2 =="High Impact: 9" | threatmed$X3.3 =="High Impact: 8" | threatmed$X3.3 =="High Impact: 9"),]
EnHighnum <- nrow(EnHigh)
EnHighper <-round((EnHighnum/threatobsnum * 100), dig=2)

EnUnk <-threatmed[which(threatmed$X3.1 =="Unknown"| threatmed$X3.2 =="Unknown" | threatmed$X3.3 =="Unknown"),]
EnUnknum <- nrow(EnUnk)
EnUnkper <-round((EnUnknum/threatobsnum * 100), dig=2)

EnPast <-threatmed[which(threatmed$X3.1 =="Past Impact" | threatmed$X3.2 =="Past Impact"| threatmed$X3.3 =="Past Impact"),]
EnPastnum <- nrow(EnPast)
EnPastper <-round((EnPastnum/threatobsnum * 100), dig=2)

Enlist <-threatmed[which(threatmed$X3.1 =="list()" | threatmed$X3.2 =="list()" | threatmed$X3.3 =="list()"),]
Enlistnum <- nrow(Enlist)
Enlistper <-round((Enlistnum/threatobsnum * 100), dig=2)

EnNS <-threatmed[which(threatmed$X3.1 =="(Not specified)" | threatmed$X3.2 =="(Not specified)" | threatmed$X3.3 =="(Not specified)"),]
EnNSnum <- nrow(EnNS)
EnNSper <-round((EnNSnum/threatobsnum * 100), dig=2)

EnNO <- threatmed[which(threatmed$X3.1 =="No/Negligible Impact: 0" | threatmed$X3.1 =="No/Negligible Impact: 1" | threatmed$X3.1 =="No/Negligible Impact: 2" | threatmed$X3.2 =="No/Negligible Impact: 0" | threatmed$X3.2 =="No/Negligible Impact: 1" | threatmed$X3.2 =="No/Negligible Impact: 2" | threatmed$X3.3 =="No/Negligible Impact: 0" | threatmed$X3.3 =="No/Negligible Impact: 1" | threatmed$X3.3 =="No/Negligible Impact: 2"),]
EnNOnum <- nrow(EnNO)
EnNOper <-round((EnNOnum/threatobsnum * 100), dig=2)

Entotal <- (EnLownum + EnMednum + EnHighnum + EnUnknum + EnPastnum + Enlistnum + EnNSnum + EnNOnum)
EnPer <- round((Entotal/threatobsnum * 100), dig = 2)

#Threat 4: Transportation and service corridors
TransLow <-threatmed[which(threatmed$X4.1 =="Low Impact: 3" | threatmed$X4.1 =="Low Impact: 4" | threatmed$X4.1 =="Low Impact: 5" | threatmed$X4.2 =="Low Impact: 3" | threatmed$X4.2 =="Low Impact: 4" | threatmed$X4.2 =="Low Impact: 5" | threatmed$X4.3 =="Low Impact: 3" | threatmed$X4.3 =="Low Impact: 4" | threatmed$X4.3 =="Low Impact: 5" | threatmed$X4.4 =="Low Impact: 3" | threatmed$X4.4 =="Low Impact: 4" | threatmed$X4.4 =="Low Impact: 5"),]
TransLownum <- nrow(TransLow)
TransLowper <-round((TransLownum/threatobsnum * 100), dig=2)

TransMed <-threatmed[which(threatmed$X4.1 =="Medium Impact: 6" | threatmed$X4.1 =="Medium Impact: 7" | threatmed$X4.2 =="Medium Impact: 6" | threatmed$X4.2 =="Medium Impact: 7" | threatmed$X4.3 =="Medium Impact: 6" | threatmed$X4.3 =="Medium Impact: 7" | threatmed$X4.4 =="Medium Impact: 6" | threatmed$X4.4 =="Medium Impact: 7"),]
TransMednum <- nrow(TransMed)
TransMedper <-round((TransMednum/threatobsnum * 100), dig=2)

TransHigh <-threatmed[which(threatmed$X4.1 =="High Impact: 8" | threatmed$X4.1 =="High Impact: 9" | threatmed$X4.2 =="High Impact: 8" | threatmed$X4.2 =="High Impact: 9" | threatmed$X4.3 =="High Impact: 8" | threatmed$X4.3 =="High Impact: 9" | threatmed$X4.4 =="High Impact: 8" | threatmed$X4.4 =="High Impact: 9"),]
TransHighnum <- nrow(TransHigh)
TransHighper <-round((TransHighnum/threatobsnum * 100), dig=2)

TransUnk <-threatmed[which(threatmed$X4.1 =="Unknown"| threatmed$X4.2 =="Unknown" | threatmed$X4.3 =="Unknown" | threatmed$X4.4 =="Unknown"),]
TransUnknum <- nrow(TransUnk)
TransUnkper <-round((TransUnknum/threatobsnum * 100), dig=2)

TransPast <-threatmed[which(threatmed$X4.1 =="Past Impact" | threatmed$X4.2 =="Past Impact"| threatmed$X4.3 =="Past Impact" | threatmed$X4.4 =="Past Impact"),]
TransPastnum <- nrow(TransPast)
TransPastper <-round((TransPastnum/threatobsnum * 100), dig=2)
Translist <-threatmed[which(threatmed$X4.1 =="list()" | threatmed$X4.2 =="list()" | threatmed$X4.3 =="list()" | threatmed$X4.4 =="list()"),]
Translistnum <- nrow(Translist)
Translistper <-round((Translistnum/threatobsnum * 100), dig=2)

TransNS <-threatmed[which(threatmed$X4.1 =="(Not specified)" | threatmed$X4.2 =="(Not specified)" | threatmed$X4.3 =="(Not specified)" | threatmed$X4.4 =="(Not specified)"),]
TransNSnum <- nrow(TransNS)
TransNSper <-round((TransNSnum/threatobsnum * 100), dig=2)

TransNO <- threatmed[which(threatmed$X4.1 =="No/Negligible Impact: 0" | threatmed$X4.1 =="No/Negligible Impact: 1" | threatmed$X4.1 =="No/Negligible Impact: 2" | threatmed$X4.2 =="No/Negligible Impact: 0" | threatmed$X4.2 =="No/Negligible Impact: 1" | threatmed$X4.2 =="No/Negligible Impact: 2" | threatmed$X4.3 =="No/Negligible Impact: 0" | threatmed$X4.3 =="No/Negligible Impact: 1" | threatmed$X4.3 =="No/Negligible Impact: 2" | threatmed$X4.4 =="No/Negligible Impact: 0" | threatmed$X4.4 =="No/Negligible Impact: 1" | threatmed$X4.4 =="No/Negligible Impact: 2"),]
TransNOnum <- nrow(TransNO)
TransNOper <-round((TransNOnum/threatobsnum * 100), dig=2)

Transtotal <- (TransLownum + TransMednum + TransHighnum + TransUnknum + TransPastnum + Translistnum + TransNSnum + TransNOnum)
TransPer <- round((Transtotal/threatobsnum * 100), dig = 2)

#Threat 5: Biological resource use
BioLow <-threatmed[which(threatmed$X5.1 =="Low Impact: 3" | threatmed$X5.1 =="Low Impact: 4" | threatmed$X5.1 =="Low Impact: 5" | threatmed$X5.1.1 =="Low Impact: 3" | threatmed$X5.1.1 =="Low Impact: 4" | threatmed$X5.1.1 =="Low Impact: 5" | threatmed$X5.1.2 =="Low Impact: 3" | threatmed$X5.1.2 =="Low Impact: 4" | threatmed$X5.1.2 =="Low Impact: 5" | threatmed$X5.1.3 =="Low Impact: 3" | threatmed$X5.1.3 =="Low Impact: 4" | threatmed$X5.1.3 =="Low Impact: 5" | threatmed$X5.1.4 =="Low Impact: 3" | threatmed$X5.1.4 =="Low Impact: 4" | threatmed$X5.1.4 =="Low Impact: 5" |
                           threatmed$X5.2 =="Low Impact: 3" | threatmed$X5.2 =="Low Impact: 4" | threatmed$X5.2 =="Low Impact: 5" | threatmed$X5.2.1 =="Low Impact: 3" | threatmed$X5.2.1 =="Low Impact: 4" | threatmed$X5.2.1 =="Low Impact: 5" | threatmed$X5.2.2 =="Low Impact: 3" | threatmed$X5.2.2 =="Low Impact: 4" | threatmed$X5.2.2 =="Low Impact: 5" | threatmed$X5.2.3 =="Low Impact: 3" | threatmed$X5.2.3 =="Low Impact: 4" | threatmed$X5.2.3 =="Low Impact: 5" | threatmed$X5.2.4 =="Low Impact: 3" | threatmed$X5.2.4 =="Low Impact: 4" | threatmed$X5.2.4 =="Low Impact: 5" | 
                           threatmed$X5.3 =="Low Impact: 3" | threatmed$X5.3 =="Low Impact: 4" | threatmed$X5.3 =="Low Impact: 5" | threatmed$X5.3.1 =="Low Impact: 3" | threatmed$X5.3.1 =="Low Impact: 4" | threatmed$X5.3.1 =="Low Impact: 5" | threatmed$X5.3.2 =="Low Impact: 3" | threatmed$X5.3.2 =="Low Impact: 4" | threatmed$X5.3.2 =="Low Impact: 5" | threatmed$X5.3.3 =="Low Impact: 3" | threatmed$X5.3.3 =="Low Impact: 4" | threatmed$X5.3.3 =="Low Impact: 5" | threatmed$X5.3.4 =="Low Impact: 3" | threatmed$X5.3.4 =="Low Impact: 4" | threatmed$X5.3.4 =="Low Impact: 5" | 
                           threatmed$X5.4 =="Low Impact: 3" | threatmed$X5.4 =="Low Impact: 4" | threatmed$X5.4 =="Low Impact: 5" | threatmed$X5.4.1 =="Low Impact: 3" | threatmed$X5.4.1 =="Low Impact: 4" | threatmed$X5.4.1 =="Low Impact: 5" | threatmed$X5.4.2 =="Low Impact: 3" | threatmed$X5.4.2 =="Low Impact: 4" | threatmed$X5.4.2 =="Low Impact: 5" | threatmed$X5.4.3 =="Low Impact: 3" | threatmed$X5.4.3 =="Low Impact: 4" | threatmed$X5.4.3 =="Low Impact: 5" | threatmed$X5.4.4 =="Low Impact: 3" | threatmed$X5.4.4 =="Low Impact: 4" | threatmed$X5.4.4 =="Low Impact: 5" | threatmed$X5.4.5 =="Low Impact: 3" | threatmed$X5.4.5 =="Low Impact: 4" | threatmed$X5.4.5 =="Low Impact: 5" | threatmed$X5.4.6 =="Low Impact: 3" | threatmed$X5.4.6 =="Low Impact: 4" | threatmed$X5.4.6 =="Low Impact: 5"),]
BioLownum <- nrow(BioLow)
BioLowper <-round((BioLownum/threatobsnum * 100), dig=2)

BioMed <-threatmed[which(threatmed$X5.1 =="Medium Impact: 6" | threatmed$X5.1 =="Medium Impact: 7" | threatmed$X5.1.1 =="Medium Impact: 6" | threatmed$X5.1.1 =="Medium Impact: 7" | threatmed$X5.1.2 =="Medium Impact: 6" | threatmed$X5.1.2 =="Medium Impact: 7" | threatmed$X5.1.3 =="Medium Impact: 6" | threatmed$X5.1.3 =="Medium Impact: 7" | threatmed$X5.1.4 =="Medium Impact: 6" | threatmed$X5.1.4 =="Medium Impact: 7" | 
                           threatmed$X5.2 =="Medium Impact: 6" | threatmed$X5.2 =="Medium Impact: 7" | threatmed$X5.2.1 =="Medium Impact: 6" | threatmed$X5.2.1 =="Medium Impact: 7" | threatmed$X5.2.2 =="Medium Impact: 6" | threatmed$X5.2.2 =="Medium Impact: 7" | threatmed$X5.2.3 =="Medium Impact: 6" | threatmed$X5.2.3 =="Medium Impact: 7" | threatmed$X5.2.4 =="Medium Impact: 6" | threatmed$X5.2.4 =="Medium Impact: 7" |  
                           threatmed$X5.3 =="Medium Impact: 6" | threatmed$X5.3 =="Medium Impact: 7" | threatmed$X5.3.1 =="Medium Impact: 6" | threatmed$X5.3.1 =="Medium Impact: 7" | threatmed$X5.3.2 =="Medium Impact: 6" | threatmed$X5.3.2 =="Medium Impact: 7" | threatmed$X5.3.3 =="Medium Impact: 6" | threatmed$X5.3.3 =="Medium Impact: 7" | threatmed$X5.3.4 =="Medium Impact: 6" | threatmed$X5.3.4 =="Medium Impact: 7" | 
                           threatmed$X5.4 =="Medium Impact: 6" | threatmed$X5.4 =="Medium Impact: 7" | threatmed$X5.4.1 =="Medium Impact: 6" | threatmed$X5.4.1 =="Medium Impact: 7" | threatmed$X5.4.2 =="Medium Impact: 6" | threatmed$X5.4.2 =="Medium Impact: 7" | threatmed$X5.4.3 =="Medium Impact: 6" | threatmed$X5.4.3 =="Medium Impact: 7" | threatmed$X5.4.4 =="Medium Impact: 6" | threatmed$X5.4.4 =="Medium Impact: 7" | threatmed$X5.4.5 =="Medium Impact: 6" | threatmed$X5.4.5 =="Medium Impact: 7" | threatmed$X5.4.6 =="Medium Impact: 6" | threatmed$X5.4.6 =="Medium Impact: 7"),]
BioMednum <- nrow(BioMed)
BioMedper <-round((BioMednum/threatobsnum * 100), dig=2)

BioHigh <-threatmed[which(threatmed$X5.1 =="High Impact: 8" | threatmed$X5.1 =="High Impact: 9" | threatmed$X5.1.1 =="High Impact: 8" | threatmed$X5.1.1 =="High Impact: 9" | threatmed$X5.1.2 =="High Impact: 8" | threatmed$X5.1.2 =="High Impact: 9" | threatmed$X5.1.3 =="High Impact: 8" | threatmed$X5.1.3 =="High Impact: 9" | threatmed$X5.1.4 =="High Impact: 8" | threatmed$X5.1.4 =="High Impact: 9" | 
                            threatmed$X5.2 =="High Impact: 8" | threatmed$X5.2 =="High Impact: 9" | threatmed$X5.2.1 =="High Impact: 8" | threatmed$X5.2.1 =="High Impact: 9" | threatmed$X5.2.2 =="High Impact: 8" | threatmed$X5.2.2 =="High Impact: 9" | threatmed$X5.2.3 =="High Impact: 8" | threatmed$X5.2.3 =="High Impact: 9" | threatmed$X5.2.4 =="High Impact: 8" | threatmed$X5.2.4 =="High Impact: 9" |  
                            threatmed$X5.3 =="High Impact: 8" | threatmed$X5.3 =="High Impact: 9" |threatmed$X5.3.1 =="High Impact: 8" | threatmed$X5.3.1 =="High Impact: 9" | threatmed$X5.3.2 =="High Impact: 8" | threatmed$X5.3.2 =="High Impact: 9" | threatmed$X5.3.3 =="High Impact: 8" | threatmed$X5.3.3 =="High Impact: 9" | threatmed$X5.3.4 =="High Impact: 8" | threatmed$X5.3.4 =="High Impact: 9" | 
                            threatmed$X5.4 =="High Impact: 8" | threatmed$X5.4 =="High Impact: 9" | threatmed$X5.4.1 =="High Impact: 8" | threatmed$X5.4.1 =="High Impact: 9" | threatmed$X5.4.2 =="High Impact: 8" | threatmed$X5.4.2 =="High Impact: 9" | threatmed$X5.4.3 =="High Impact: 8" | threatmed$X5.4.3 =="High Impact: 9" | threatmed$X5.4.4 =="High Impact: 8" | threatmed$X5.4.4 =="High Impact: 9"| threatmed$X5.4.5 =="High Impact: 8" | threatmed$X5.4.5 =="High Impact: 9"| threatmed$X5.4.6 =="High Impact: 8" | threatmed$X5.4.6 =="High Impact: 9"),]
BioHighnum <- nrow(BioHigh)
BioHighper <-round((BioHighnum/threatobsnum * 100), dig=2)

BioUnk <-threatmed[which(threatmed$X5.1 =="Unknown"| threatmed$X5.1.1 =="Unknown" | threatmed$X5.1.2 =="Unknown" | threatmed$X5.1.3 =="Unknown"| threatmed$X5.1.4 =="Unknown" | threatmed$X5.2 =="Unknown" | threatmed$X5.2.1 =="Unknown"| threatmed$X5.2.2 =="Unknown" | threatmed$X5.2.3 =="Unknown" | threatmed$X5.2.4 =="Unknown" | threatmed$X5.3 =="Unknown"| threatmed$X5.3.1 =="Unknown" | threatmed$X5.3.2 =="Unknown" |threatmed$X5.3.3 =="Unknown"| threatmed$X5.3.4 =="Unknown" | threatmed$X5.4 =="Unknown" |threatmed$X5.4.1 =="Unknown"| threatmed$X5.4.2 =="Unknown" | threatmed$X5.4.3 =="Unknown" | threatmed$X5.4.4 =="Unknown" | threatmed$X5.4.5 =="Unknown" | threatmed$X5.4.6 =="Unknown"),]
BioUnknum <- nrow(BioUnk)
BioUnkper <-round((BioUnknum/threatobsnum * 100), dig=2)

BioPast <-threatmed[which(threatmed$X5.1 =="Past Impact" | threatmed$X5.1.1 =="Past Impact" | threatmed$X5.1.2 =="Past Impact" | threatmed$X5.1.3 =="Past Impact"| threatmed$X5.1.4 =="Past Impact" | threatmed$X5.2 =="Past Impact" | threatmed$X5.2.1 =="Past Impact"| threatmed$X5.2.2 =="Past Impact" | threatmed$X5.2.3 =="Past Impact" | threatmed$X5.2.4 =="Past Impact" | threatmed$X5.3 =="Past Impact"| threatmed$X5.3.1 =="Past Impact" | threatmed$X5.3.2 =="Past Impact" |threatmed$X5.3.3 =="Past Impact"| threatmed$X5.3.4 =="Past Impact" | threatmed$X5.4 =="Past Impact" |threatmed$X5.4.1 =="Past Impact"| threatmed$X5.4.2 =="Past Impact" | threatmed$X5.4.3 =="Past Impact" | threatmed$X5.4.4 =="Past Impact" | threatmed$X5.4.5 =="Past Impact" | threatmed$X5.4.6 =="Past Impact"),]
BioPastnum <- nrow(BioPast)
BioPastper <-round((BioPastnum/threatobsnum * 100), dig=2)

Biolist <-threatmed[which(threatmed$X5.1 =="list()" | threatmed$X5.1.1 =="list()" | threatmed$X5.1.2 =="list()" | threatmed$X5.1.3 =="list()"| threatmed$X5.1.4 =="list()" | threatmed$X5.2 =="list()" | threatmed$X5.2.1 =="list()"| threatmed$X5.2.2 =="list()" | threatmed$X5.2.3 =="list()" | threatmed$X5.2.4 =="list()" | threatmed$X5.3 =="list()"| threatmed$X5.3.1 =="list()" | threatmed$X5.3.2 =="list()" |threatmed$X5.3.3 =="list()"| threatmed$X5.3.4 =="list()" | threatmed$X5.4 =="list()" |threatmed$X5.4.1 =="list()"| threatmed$X5.4.2 =="list()" | threatmed$X5.4.3 =="list()" | threatmed$X5.4.4 =="list()" | threatmed$X5.4.5 =="list()" | threatmed$X5.4.6 =="list()"),]
Biolistnum <- nrow(Biolist)
Biolistper <-round((Biolistnum/threatobsnum * 100), dig=2)

BioNS <-threatmed[which(threatmed$X5.1 =="(Not specified)" | threatmed$X5.1.1 =="(Not specified)" | threatmed$X5.1.2 =="(Not specified)" | threatmed$X5.1.3 =="(Not specified)"| threatmed$X5.1.4 =="(Not specified)" | threatmed$X5.2 =="(Not specified)" | threatmed$X5.2.1 =="(Not specified)"| threatmed$X5.2.2 =="(Not specified)" | threatmed$X5.2.3 =="(Not specified)" | threatmed$X5.2.4 =="(Not specified)" | threatmed$X5.3 =="(Not specified)"| threatmed$X5.3.1 =="(Not specified)" | threatmed$X5.3.2 =="(Not specified)" |threatmed$X5.3.3 =="(Not specified)"| threatmed$X5.3.4 =="(Not specified)" | threatmed$X5.4 =="(Not specified)" |threatmed$X5.4.1 =="(Not specified)"| threatmed$X5.4.2 =="(Not specified)" | threatmed$X5.4.3 =="(Not specified)" | threatmed$X5.4.4 =="(Not specified)" | threatmed$X5.4.5 =="(Not specified)" | threatmed$X5.4.6 =="(Not specified)"),]
BioNSnum <- nrow(BioNS)
BioNSper <-round((BioNSnum/threatobsnum * 100), dig=2)

BioNO <- threatmed[which(threatmed$X5.1 =="No/Negligible Impact: 0" | threatmed$X5.1 =="No/Negligible Impact: 1" | threatmed$X5.1 =="No/Negligible Impact: 2" | threatmed$X5.1.1 =="No/Negligible Impact: 0" | threatmed$X5.1.1 =="No/Negligible Impact: 1" | threatmed$X5.1.1 =="No/Negligible Impact: 2" | threatmed$X5.1.2 =="No/Negligible Impact: 0" | threatmed$X5.1.2 =="No/Negligible Impact: 1" | threatmed$X5.1.2 =="No/Negligible Impact: 2" | threatmed$X5.1.3 =="No/Negligible Impact: 0" | threatmed$X5.1.3 =="No/Negligible Impact: 1" | threatmed$X5.1.3 =="No/Negligible Impact: 2" | threatmed$X5.1.4 =="No/Negligible Impact: 0" | threatmed$X5.1.4 =="No/Negligible Impact: 1" | threatmed$X5.1.4 =="No/Negligible Impact: 2" | 
                           threatmed$X5.2 =="No/Negligible Impact: 0" | threatmed$X5.2 =="No/Negligible Impact: 1" | threatmed$X5.2 =="No/Negligible Impact: 2" | threatmed$X5.2.1 =="No/Negligible Impact: 0" | threatmed$X5.2.1 =="No/Negligible Impact: 1" | threatmed$X5.2.1 =="No/Negligible Impact: 2" | threatmed$X5.2.2 =="No/Negligible Impact: 0" | threatmed$X5.2.2 =="No/Negligible Impact: 1" | threatmed$X5.2.2 =="No/Negligible Impact: 2" | threatmed$X5.2.3 =="No/Negligible Impact: 0" | threatmed$X5.2.3 =="No/Negligible Impact: 1" | threatmed$X5.2.3 =="No/Negligible Impact: 2" | threatmed$X5.2.4 =="No/Negligible Impact: 0" | threatmed$X5.2.4 =="No/Negligible Impact: 1" | threatmed$X5.2.4 =="No/Negligible Impact: 2" |
                           threatmed$X5.3 =="No/Negligible Impact: 0" | threatmed$X5.3 =="No/Negligible Impact: 1" | threatmed$X5.3 =="No/Negligible Impact: 2" | threatmed$X5.3.1 =="No/Negligible Impact: 0" | threatmed$X5.3.1 =="No/Negligible Impact: 1" | threatmed$X5.3.1 =="No/Negligible Impact: 2" | threatmed$X5.3.2 =="No/Negligible Impact: 0" | threatmed$X5.3.2 =="No/Negligible Impact: 1" | threatmed$X5.3.2 =="No/Negligible Impact: 2" | threatmed$X5.3.3 =="No/Negligible Impact: 0" | threatmed$X5.3.3 =="No/Negligible Impact: 1" | threatmed$X5.3.3 =="No/Negligible Impact: 2" | threatmed$X5.3.4 =="No/Negligible Impact: 0" | threatmed$X5.3.4 =="No/Negligible Impact: 1" | threatmed$X5.3.4 =="No/Negligible Impact: 2" |
                           threatmed$X5.4 =="No/Negligible Impact: 0" | threatmed$X5.4 =="No/Negligible Impact: 1" | threatmed$X5.4 =="No/Negligible Impact: 2" | threatmed$X5.4.1 =="No/Negligible Impact: 0" | threatmed$X5.4.1 =="No/Negligible Impact: 1" | threatmed$X5.4.1 =="No/Negligible Impact: 2" | threatmed$X5.4.2 =="No/Negligible Impact: 0" | threatmed$X5.4.2 =="No/Negligible Impact: 1" | threatmed$X5.4.2 =="No/Negligible Impact: 2" | threatmed$X5.4.3 =="No/Negligible Impact: 0" | threatmed$X5.4.3 =="No/Negligible Impact: 1" | threatmed$X5.4.3 =="No/Negligible Impact: 2" | threatmed$X5.4.4 =="No/Negligible Impact: 0" | threatmed$X5.4.4 =="No/Negligible Impact: 1" | threatmed$X5.4.4 =="No/Negligible Impact: 2" | threatmed$X5.4.5 =="No/Negligible Impact: 0" | threatmed$X5.4.5 =="No/Negligible Impact: 1" | threatmed$X5.4.5 =="No/Negligible Impact: 2" | threatmed$X5.4.6 =="No/Negligible Impact: 0" | threatmed$X5.4.6 =="No/Negligible Impact: 1" | threatmed$X5.4.6 =="No/Negligible Impact: 2"),]
BioNOnum <- nrow(BioNO)
BioNOper <-round((BioNOnum/threatobsnum * 100), dig=2)

Biototal <- (BioLownum + BioMednum + BioHighnum + BioUnknum + BioPastnum + Biolistnum + BioNSnum + BioNOnum)
BioPer <- round((Biototal/threatobsnum * 100), dig = 2)

#Threat 6: Human intrusions and disturbance
HuLow <-threatmed[which(threatmed$X6.1 =="Low Impact: 3" | threatmed$X6.1 =="Low Impact: 4" | threatmed$X6.1 =="Low Impact: 5" | threatmed$X6.2 =="Low Impact: 3" | threatmed$X6.2 =="Low Impact: 4" | threatmed$X6.2 =="Low Impact: 5" | threatmed$X6.3 =="Low Impact: 3" | threatmed$X6.3 =="Low Impact: 4" | threatmed$X6.3 =="Low Impact: 5"),]
HuLownum <- nrow(HuLow)
HuLowper <-round((HuLownum/threatobsnum * 100), dig=2)

HuMed <-threatmed[which(threatmed$X6.1 =="Medium Impact: 6" | threatmed$X6.1 =="Medium Impact: 7" | threatmed$X6.2 =="Medium Impact: 6" | threatmed$X6.2 =="Medium Impact: 7" | threatmed$X6.3 =="Medium Impact: 6" | threatmed$X6.3 =="Medium Impact: 7"),]
HuMednum <- nrow(HuMed)
HuMedper <-round((HuMednum/threatobsnum * 100), dig=2)

HuHigh <-threatmed[which(threatmed$X6.1 =="High Impact: 8" | threatmed$X6.1 =="High Impact: 9" | threatmed$X6.2 =="High Impact: 8" | threatmed$X6.2 =="High Impact: 9" | threatmed$X6.3 =="High Impact: 8" | threatmed$X6.3 =="High Impact: 9"),]
HuHighnum <- nrow(HuHigh)
HuHighper <-round((HuHighnum/threatobsnum * 100), dig=2)

HuUnk <-threatmed[which(threatmed$X6.1 =="Unknown"| threatmed$X6.2 =="Unknown" | threatmed$X6.3 =="Unknown"),]
HuUnknum <- nrow(HuUnk)
HuUnkper <-round((HuUnknum/threatobsnum * 100), dig=2)

HuPast <-threatmed[which(threatmed$X6.1 =="Past Impact" | threatmed$X6.2 =="Past Impact"| threatmed$X6.3 =="Past Impact"),]
HuPastnum <- nrow(HuPast)
HuPastper <-round((HuPastnum/threatobsnum * 100), dig=2)

Hulist <-threatmed[which(threatmed$X6.1 =="list()" | threatmed$X6.2 =="list()" | threatmed$X6.3 =="list()"),]
Hulistnum <- nrow(Hulist)
Hulistper <-round((Hulistnum/threatobsnum * 100), dig=2)

HuNS <-threatmed[which(threatmed$X6.1 =="(Not specified)" | threatmed$X6.2 =="(Not specified)" | threatmed$X6.3 =="(Not specified)"),]
HuNSnum <- nrow(HuNS)
HuNSper <-round((HuNSnum/threatobsnum * 100), dig=2)

HuNO <- threatmed[which(threatmed$X6.1 =="No/Negligible Impact: 0" | threatmed$X6.1 =="No/Negligible Impact: 1" | threatmed$X6.1 =="No/Negligible Impact: 2" | threatmed$X6.2 =="No/Negligible Impact: 0" | threatmed$X6.2 =="No/Negligible Impact: 1" | threatmed$X6.2 =="No/Negligible Impact: 2" | threatmed$X6.3 =="No/Negligible Impact: 0" | threatmed$X6.3 =="No/Negligible Impact: 1" | threatmed$X6.3 =="No/Negligible Impact: 2"),]
HuNOnum <- nrow(HuNO)
HuNOper <-round((HuNOnum/threatobsnum * 100), dig=2)

Hutotal <- (HuLownum + HuMednum + HuHighnum + HuUnknum + HuPastnum + Hulistnum + HuNSnum + HuNOnum)
HuPer <- round((Hutotal/threatobsnum * 100), dig = 2)

#Threat 7: Natural system modifications
NatLow <-threatmed[which(threatmed$X7.1 =="Low Impact: 3" | threatmed$X7.1 =="Low Impact: 4" | threatmed$X7.1 =="Low Impact: 5" | threatmed$X7.1.1 =="Low Impact: 3" | threatmed$X7.1.1 =="Low Impact: 4" | threatmed$X7.1.1 =="Low Impact: 5" | threatmed$X7.1.2 =="Low Impact: 3" | threatmed$X7.1.2 =="Low Impact: 4" | threatmed$X7.1.2 =="Low Impact: 5" | threatmed$X7.1.3 =="Low Impact: 3" | threatmed$X7.1.3 =="Low Impact: 4" | threatmed$X7.1.3 =="Low Impact: 5" | 
                           threatmed$X7.2 =="Low Impact: 3" | threatmed$X7.2 =="Low Impact: 4" | threatmed$X7.2 =="Low Impact: 5" | threatmed$X7.2.1 =="Low Impact: 3" | threatmed$X7.2.1 =="Low Impact: 4" | threatmed$X7.2.1 =="Low Impact: 5" | threatmed$X7.2.2 =="Low Impact: 3" | threatmed$X7.2.2 =="Low Impact: 4" | threatmed$X7.2.2 =="Low Impact: 5" | threatmed$X7.2.3 =="Low Impact: 3" | threatmed$X7.2.3 =="Low Impact: 4" | threatmed$X7.2.3 =="Low Impact: 5" | threatmed$X7.2.4 =="Low Impact: 3" | threatmed$X7.2.4 =="Low Impact: 4" | threatmed$X7.2.4 =="Low Impact: 5" | threatmed$X7.2.5 =="Low Impact: 3" | threatmed$X7.2.5 =="Low Impact: 4" | threatmed$X7.2.5 =="Low Impact: 5" | threatmed$X7.2.6 =="Low Impact: 3" | threatmed$X7.2.6 =="Low Impact: 4" | threatmed$X7.2.6 =="Low Impact: 5" | threatmed$X7.2.7 =="Low Impact: 3" | threatmed$X7.2.7 =="Low Impact: 4" | threatmed$X7.2.7 =="Low Impact: 5" | threatmed$X7.2.8 =="Low Impact: 3" | threatmed$X7.2.8 =="Low Impact: 4" | threatmed$X7.2.8 =="Low Impact: 5" | threatmed$X7.2.9 =="Low Impact: 3" | threatmed$X7.2.9 =="Low Impact: 4" | threatmed$X7.2.9 =="Low Impact: 5" | threatmed$X7.2.10 =="Low Impact: 3" | threatmed$X7.2.10 =="Low Impact: 4" | threatmed$X7.2.10 =="Low Impact: 5" | threatmed$X7.2.11 =="Low Impact: 3" | threatmed$X7.2.11 =="Low Impact: 4" | threatmed$X7.2.11 =="Low Impact: 5" | 
                           threatmed$X7.3 =="Low Impact: 3" | threatmed$X7.3 =="Low Impact: 4" | threatmed$X7.3 =="Low Impact: 5"),]
NatLownum <- nrow(NatLow)
NatLowper <-round((NatLownum/threatobsnum * 100), dig=2)

NatMed <-threatmed[which(threatmed$X7.1 =="Medium Impact: 6" | threatmed$X7.1 =="Medium Impact: 7" | threatmed$X7.1.1 =="Medium Impact: 6" | threatmed$X7.1.1 =="Medium Impact: 7" | threatmed$X7.1.2 =="Medium Impact: 6" | threatmed$X7.1.2 =="Medium Impact: 7" | threatmed$X7.1.3 =="Medium Impact: 6" | threatmed$X7.1.3 =="Medium Impact: 7" | 
                           threatmed$X7.2 =="Medium Impact: 6" | threatmed$X7.2 =="Medium Impact: 7" | threatmed$X7.2.1 =="Medium Impact: 6" | threatmed$X7.2.1 =="Medium Impact: 7" | threatmed$X7.2.2 =="Medium Impact: 6" | threatmed$X7.2.2 =="Medium Impact: 7" | threatmed$X7.2.3 =="Medium Impact: 6" | threatmed$X7.2.3 =="Medium Impact: 7" | threatmed$X7.2.4 =="Medium Impact: 6" | threatmed$X7.2.4 =="Medium Impact: 7" | threatmed$X7.2.5 =="Medium Impact: 6" | threatmed$X7.2.5 =="Medium Impact: 7" | threatmed$X7.2.6 =="Medium Impact: 6" | threatmed$X7.2.6 =="Medium Impact: 7" | threatmed$X7.2.7 =="Medium Impact: 6" | threatmed$X7.2.7 =="Medium Impact: 7" | threatmed$X7.2.8 =="Medium Impact: 6" | threatmed$X7.2.8 =="Medium Impact: 7" | threatmed$X7.2.9 =="Medium Impact: 6" | threatmed$X7.2.9 =="Medium Impact: 7" | threatmed$X7.2.10 =="Medium Impact: 6" | threatmed$X7.2.10 =="Medium Impact: 7" | threatmed$X7.2.11 =="Medium Impact: 6" | threatmed$X7.2.11 =="Medium Impact: 7" |  
                           threatmed$X7.3 =="Medium Impact: 6" | threatmed$X7.3 =="Medium Impact: 7"),]
NatMednum <- nrow(NatMed)
NatMedper <-round((NatMednum/threatobsnum * 100), dig=2)

NatHigh <-threatmed[which(threatmed$X7.1 =="High Impact: 8" | threatmed$X7.1 =="High Impact: 9" | threatmed$X7.1.1 =="High Impact: 8" | threatmed$X7.1.1 =="High Impact: 9" | threatmed$X7.1.2 =="High Impact: 8" | threatmed$X7.1.2 =="High Impact: 9" | threatmed$X7.1.3 =="High Impact: 8" | threatmed$X7.1.3 =="High Impact: 9" | 
                            threatmed$X7.2 =="High Impact: 8" | threatmed$X7.2 =="High Impact: 9" | threatmed$X7.2.1 =="High Impact: 8" | threatmed$X7.2.1 =="High Impact: 9" | threatmed$X7.2.2 =="High Impact: 8" | threatmed$X7.2.2 =="High Impact: 9" | threatmed$X7.2.3 =="High Impact: 8" | threatmed$X7.2.3 =="High Impact: 9" | threatmed$X7.2.4 =="High Impact: 8" | threatmed$X7.2.4 =="High Impact: 9" | threatmed$X7.2.5 =="High Impact: 8" | threatmed$X7.2.5 =="High Impact: 9" | threatmed$X7.2.6 =="High Impact: 8" | threatmed$X7.2.6 =="High Impact: 9" | threatmed$X7.2.7 =="High Impact: 8" | threatmed$X7.2.7 =="High Impact: 9" | threatmed$X7.2.8 =="High Impact: 8" | threatmed$X7.2.8 =="High Impact: 9" | threatmed$X7.2.9 =="High Impact: 8" | threatmed$X7.2.9 =="High Impact: 9" | threatmed$X7.2.10 =="High Impact: 8" | threatmed$X7.2.10 =="High Impact: 9" | threatmed$X7.2.11 =="High Impact: 8" | threatmed$X7.2.11 =="High Impact: 9" |  
                            threatmed$X7.3 =="High Impact: 8" | threatmed$X7.3 =="High Impact: 9"),]
NatHighnum <- nrow(NatHigh)
NatHighper <-round((NatHighnum/threatobsnum * 100), dig=2)

NatUnk <-threatmed[which(threatmed$X7.1 =="Unknown"| threatmed$X7.1.1 =="Unknown" | threatmed$X7.1.2 =="Unknown" | threatmed$X7.1.3 =="Unknown"| threatmed$X7.2 =="Unknown" | threatmed$X7.2.1 =="Unknown"| threatmed$X7.2.2 =="Unknown" | threatmed$X7.2.3 =="Unknown" | threatmed$X7.2.4 =="Unknown" | threatmed$X7.2.5 =="Unknown" |threatmed$X7.2.6 =="Unknown" |threatmed$X7.2.7 =="Unknown" |threatmed$X7.2.8 =="Unknown" |threatmed$X7.2.9 =="Unknown" |threatmed$X7.2.10 =="Unknown" |threatmed$X7.2.11 =="Unknown" | threatmed$X7.3 =="Unknown"),]
NatUnknum <- nrow(NatUnk)
NatUnkper <-round((NatUnknum/threatobsnum * 100), dig=2)

NatPast <-threatmed[which(threatmed$X7.1 =="Past Impact" | threatmed$X7.1.1 =="Past Impact" | threatmed$X7.1.2 =="Past Impact" | threatmed$X7.1.3 =="Past Impact" | threatmed$X7.2 =="Past Impact" | threatmed$X7.2.1 =="Past Impact"| threatmed$X7.2.2 =="Past Impact" | threatmed$X7.2.3 =="Past Impact" | threatmed$X7.2.4 =="Past Impact" | threatmed$X7.2.5 =="Past Impact" | threatmed$X7.2.6 =="Past Impact" | threatmed$X7.2.7 =="Past Impact" | threatmed$X7.2.8 =="Past Impact" | threatmed$X7.2.9 =="Past Impact" | threatmed$X7.2.10 =="Past Impact" | threatmed$X7.2.11 =="Past Impact" | threatmed$X7.3 =="Past Impact"),]
NatPastnum <- nrow(NatPast)
NatPastper <-round((NatPastnum/threatobsnum * 100), dig=2)

Natlist <-threatmed[which(threatmed$X7.1 =="list()" | threatmed$X7.1.1 =="list()" | threatmed$X7.1.2 =="list()" | threatmed$X7.1.3 =="list()"| threatmed$X7.2 =="list()" | threatmed$X7.2.1 =="list()"| threatmed$X7.2.2 =="list()" | threatmed$X7.2.3 =="list()" | threatmed$X7.2.4 =="list()" | threatmed$X7.2.5 =="list()" | threatmed$X7.2.6 =="list()" | threatmed$X7.2.7 =="list()" | threatmed$X7.2.8 =="list()" | threatmed$X7.2.9 =="list()" | threatmed$X7.2.10 =="list()" | threatmed$X7.2.11 =="list()" | threatmed$X7.3 =="list()"),]
Natlistnum <- nrow(Natlist)
Natlistper <-round((Natlistnum/threatobsnum * 100), dig=2)

NatNS <-threatmed[which(threatmed$X7.1 =="(Not specified)" | threatmed$X7.1.1 =="(Not specified)" | threatmed$X7.1.2 =="(Not specified)" | threatmed$X7.1.3 =="(Not specified)"| threatmed$X7.2 =="(Not specified)" | threatmed$X7.2.1 =="(Not specified)"| threatmed$X7.2.2 =="(Not specified)" | threatmed$X7.2.3 =="(Not specified)" | threatmed$X7.2.4 =="(Not specified)" | threatmed$X7.2.5 =="(Not specified)" | threatmed$X7.2.6 =="(Not specified)" | threatmed$X7.2.7 =="(Not specified)" | threatmed$X7.2.8 =="(Not specified)" | threatmed$X7.2.9 =="(Not specified)" | threatmed$X7.2.10 =="(Not specified)" | threatmed$X7.2.11 =="(Not specified)" | threatmed$X7.3 =="(Not specified)"),]
NatNSnum <- nrow(NatNS)
NatNSper <-round((NatNSnum/threatobsnum * 100), dig=2)

NatNO <- threatmed[which(threatmed$X7.1 =="No/Negligible Impact: 0" | threatmed$X7.1 =="No/Negligible Impact: 1" | threatmed$X7.1 =="No/Negligible Impact: 2" | threatmed$X7.1.1 =="No/Negligible Impact: 0" | threatmed$X7.1.1 =="No/Negligible Impact: 1" | threatmed$X7.1.1 =="No/Negligible Impact: 2" | threatmed$X7.1.2 =="No/Negligible Impact: 0" | threatmed$X7.1.2 =="No/Negligible Impact: 1" | threatmed$X7.1.2 =="No/Negligible Impact: 2" | threatmed$X7.1.3 =="No/Negligible Impact: 0" | threatmed$X7.1.3 =="No/Negligible Impact: 1" | threatmed$X7.1.3 =="No/Negligible Impact: 2" | 
                           threatmed$X7.2 =="No/Negligible Impact: 0" | threatmed$X7.2 =="No/Negligible Impact: 1" | threatmed$X7.2 =="No/Negligible Impact: 2" | threatmed$X7.2.1 =="No/Negligible Impact: 0" | threatmed$X7.2.1 =="No/Negligible Impact: 1" | threatmed$X7.2.1 =="No/Negligible Impact: 2" | threatmed$X7.2.2 =="No/Negligible Impact: 0" | threatmed$X7.2.2 =="No/Negligible Impact: 1" | threatmed$X7.2.2 =="No/Negligible Impact: 2" | threatmed$X7.2.3 =="No/Negligible Impact: 0" | threatmed$X7.2.3 =="No/Negligible Impact: 1" | threatmed$X7.2.3 =="No/Negligible Impact: 2" | threatmed$X7.2.4 =="No/Negligible Impact: 0" | threatmed$X7.2.4 =="No/Negligible Impact: 1" | threatmed$X7.2.4 =="No/Negligible Impact: 2" |threatmed$X7.2.5 =="No/Negligible Impact: 0" | threatmed$X7.2.5 =="No/Negligible Impact: 1" | threatmed$X7.2.5 =="No/Negligible Impact: 2" |threatmed$X7.2.6 =="No/Negligible Impact: 0" | threatmed$X7.2.6 =="No/Negligible Impact: 1" | threatmed$X7.2.6 =="No/Negligible Impact: 2" |threatmed$X7.2.7 =="No/Negligible Impact: 0" | threatmed$X7.2.7 =="No/Negligible Impact: 1" | threatmed$X7.2.7 =="No/Negligible Impact: 2" |threatmed$X7.2.8 =="No/Negligible Impact: 0" | threatmed$X7.2.8 =="No/Negligible Impact: 1" | threatmed$X7.2.8 =="No/Negligible Impact: 2" |threatmed$X7.2.9 =="No/Negligible Impact: 0" | threatmed$X7.2.9 =="No/Negligible Impact: 1" | threatmed$X7.2.9 =="No/Negligible Impact: 2" |threatmed$X7.2.10 =="No/Negligible Impact: 0" | threatmed$X7.2.10 =="No/Negligible Impact: 1" | threatmed$X7.2.10 =="No/Negligible Impact: 2" |threatmed$X7.2.11 =="No/Negligible Impact: 0" | threatmed$X7.2.11 =="No/Negligible Impact: 1" | threatmed$X7.2.11 =="No/Negligible Impact: 2" |
                           threatmed$X7.3 =="No/Negligible Impact: 0" | threatmed$X7.3 =="No/Negligible Impact: 1" | threatmed$X7.3 =="No/Negligible Impact: 2"),]
NatNOnum <- nrow(NatNO)
NatNOper <-round((NatNOnum/threatobsnum * 100), dig=2)

Nattotal <- (NatLownum + NatMednum + NatHighnum + NatUnknum + NatPastnum + Natlistnum + NatNSnum + NatNOnum)
NatPer <- round((Nattotal/threatobsnum * 100), dig = 2)

#Threat 8: Invasion and other problematic species, genes and diseases
InvLow <-threatmed[which(threatmed$X8.1 =="Low Impact: 3" | threatmed$X8.1 =="Low Impact: 4" | threatmed$X8.1 =="Low Impact: 5" | threatmed$X8.1.1 =="Low Impact: 3" | threatmed$X8.1.1 =="Low Impact: 4" | threatmed$X8.1.1 =="Low Impact: 5" | threatmed$X8.1.2 =="Low Impact: 3" | threatmed$X8.1.2 =="Low Impact: 4" | threatmed$X8.1.2 =="Low Impact: 5" | 
                           threatmed$X8.2 =="Low Impact: 3" | threatmed$X8.2 =="Low Impact: 4" | threatmed$X8.2 =="Low Impact: 5" | threatmed$X8.2.1 =="Low Impact: 3" | threatmed$X8.2.1 =="Low Impact: 4" | threatmed$X8.2.1 =="Low Impact: 5" | threatmed$X8.2.2 =="Low Impact: 3" | threatmed$X8.2.2 =="Low Impact: 4" | threatmed$X8.2.2 =="Low Impact: 5" |
                           threatmed$X8.3 =="Low Impact: 3" | threatmed$X8.3 =="Low Impact: 4" | threatmed$X8.3 =="Low Impact: 5" |  
                           threatmed$X8.4 =="Low Impact: 3" | threatmed$X8.4 =="Low Impact: 4" | threatmed$X8.4 =="Low Impact: 5" | threatmed$X8.4.1 =="Low Impact: 3" | threatmed$X8.4.1 =="Low Impact: 4" | threatmed$X8.4.1 =="Low Impact: 5" | threatmed$X8.4.2 =="Low Impact: 3" | threatmed$X8.4.2 =="Low Impact: 4" | threatmed$X8.4.2 =="Low Impact: 5" |
                           threatmed$X8.5 =="Low Impact: 3" | threatmed$X8.5 =="Low Impact: 4" | threatmed$X8.5 =="Low Impact: 5" | threatmed$X8.5.1 =="Low Impact: 3" | threatmed$X8.5.1 =="Low Impact: 4" | threatmed$X8.5.1 =="Low Impact: 5" | threatmed$X8.5.2 =="Low Impact: 3" | threatmed$X8.5.2 =="Low Impact: 4" | threatmed$X8.5.2 =="Low Impact: 5" |
                           threatmed$X8.6 =="Low Impact: 3" | threatmed$X8.6 =="Low Impact: 4" | threatmed$X8.6 =="Low Impact: 5"),]
InvLownum <- nrow(InvLow)
InvLowper <-round((InvLownum/threatobsnum * 100), dig=2)

InvMed <-threatmed[which(threatmed$X8.1 =="Medium Impact: 6" | threatmed$X8.1 =="Medium Impact: 7" | threatmed$X8.1.1 =="Medium Impact: 6" | threatmed$X8.1.1 =="Medium Impact: 7" | threatmed$X8.1.2 =="Medium Impact: 6" | threatmed$X8.1.2 =="Medium Impact: 7" |
                           threatmed$X8.2 =="Medium Impact: 6" | threatmed$X8.2 =="Medium Impact: 7" | threatmed$X8.2.1 =="Medium Impact: 6" | threatmed$X8.2.1 =="Medium Impact: 7" | threatmed$X8.2.2 =="Medium Impact: 6" | threatmed$X8.2.2 =="Medium Impact: 7" | 
                           threatmed$X8.3 =="Medium Impact: 6" | threatmed$X8.3 =="Medium Impact: 7" | 
                           threatmed$X8.4 =="Medium Impact: 6" | threatmed$X8.4 =="Medium Impact: 7" | threatmed$X8.4.1 =="Medium Impact: 6" | threatmed$X8.4.1 =="Medium Impact: 7" | threatmed$X8.4.2 =="Medium Impact: 6" | threatmed$X8.4.2 =="Medium Impact: 7" | 
                           threatmed$X8.5 =="Medium Impact: 6" | threatmed$X8.5 =="Medium Impact: 7" | threatmed$X8.5.1 =="Medium Impact: 6" | threatmed$X8.5.1 =="Medium Impact: 7" | threatmed$X8.5.2 =="Medium Impact: 6" | threatmed$X8.5.2 =="Medium Impact: 7" | 
                           threatmed$X8.6 =="Medium Impact: 6" | threatmed$X8.6 =="Medium Impact: 7"),]
InvMednum <- nrow(InvMed)
InvMedper <-round((InvMednum/threatobsnum * 100), dig=2)

InvHigh <-threatmed[which(threatmed$X8.1 =="High Impact: 8" | threatmed$X8.1 =="High Impact: 9" | threatmed$X8.1.1 =="High Impact: 8" | threatmed$X8.1.1 =="High Impact: 9" | threatmed$X8.1.2 =="High Impact: 8" | threatmed$X8.1.2 =="High Impact: 9" | 
                            threatmed$X8.2 =="High Impact: 8" | threatmed$X8.2 =="High Impact: 9" | threatmed$X8.2.1 =="High Impact: 8" | threatmed$X8.2.1 =="High Impact: 9" | threatmed$X8.2.2 =="High Impact: 8" | threatmed$X8.2.2 =="High Impact: 9" | 
                            threatmed$X8.3 =="High Impact: 8" | threatmed$X8.3 =="High Impact: 9" |
                            threatmed$X8.4 =="High Impact: 8" | threatmed$X8.4 =="High Impact: 9" | threatmed$X8.4.1 =="High Impact: 8" | threatmed$X8.4.1 =="High Impact: 9" | threatmed$X8.4.2 =="High Impact: 8" | threatmed$X8.4.2 =="High Impact: 9" | 
                            threatmed$X8.5 =="High Impact: 8" | threatmed$X8.5 =="High Impact: 9" | threatmed$X8.5.1 =="High Impact: 8" | threatmed$X8.5.1 =="High Impact: 9" | threatmed$X8.5.2 =="High Impact: 8" | threatmed$X8.5.2 =="High Impact: 9" | 
                            threatmed$X8.6 =="High Impact: 8" | threatmed$X8.6 =="High Impact: 9"),]
InvHighnum <- nrow(InvHigh)
InvHighper <-round((InvHighnum/threatobsnum * 100), dig=2)

InvUnk <-threatmed[which(threatmed$X8.1 =="Unknown"| threatmed$X8.1.1 =="Unknown" | threatmed$X8.1.2 =="Unknown" | threatmed$X8.2 =="Unknown" | threatmed$X8.2.1 =="Unknown"| threatmed$X8.2.2 =="Unknown" | threatmed$X8.3 =="Unknown" | threatmed$X8.4 =="Unknown" |threatmed$X8.4.1 =="Unknown"| threatmed$X8.4.2 =="Unknown" | threatmed$X8.5 =="Unknown" | threatmed$X8.5.1 =="Unknown" | threatmed$X8.5.2 =="Unknown" | threatmed$X8.6 =="Unknown"),]
InvUnknum <- nrow(InvUnk)
InvUnkper <-round((InvUnknum/threatobsnum * 100), dig=2)

InvPast <-threatmed[which(threatmed$X8.1 =="Past Impact" | threatmed$X8.1.1 =="Past Impact" | threatmed$X8.1.2 =="Past Impact" | threatmed$X8.2 =="Past Impact" | threatmed$X8.2.1 =="Past Impact"| threatmed$X8.2.2 =="Past Impact" | threatmed$X8.3 =="Past Impact" | threatmed$X8.4 =="Past Impact" |threatmed$X8.4.1 =="Past Impact"| threatmed$X8.4.2 =="Past Impact" | threatmed$X8.5 =="Past Impact" | threatmed$X8.5.1 =="Past Impact" | threatmed$X8.5.2 =="Past Impact" | threatmed$X8.6 =="Past Impact"),]
InvPastnum <- nrow(InvPast)
InvPastper <-round((InvPastnum/threatobsnum * 100), dig=2)

Invlist <-threatmed[which(threatmed$X8.1 =="list()" | threatmed$X8.1.1 =="list()" | threatmed$X8.1.2 =="list()" | threatmed$X8.2 =="list()" | threatmed$X8.2.1 =="list()"| threatmed$X8.2.2 =="list()" | threatmed$X8.3 =="list()" | threatmed$X8.4 =="list()" |threatmed$X8.4.1 =="list()"| threatmed$X8.4.2 =="list()" | threatmed$X8.5 =="list()" | threatmed$X8.5.1 =="list()" | threatmed$X8.5.2 =="list()" | threatmed$X8.6 =="list()"),]
Invlistnum <- nrow(Invlist)
Invlistper <-round((Invlistnum/threatobsnum * 100), dig=2)

InvNS <-threatmed[which(threatmed$X8.1 =="(Not specified)" | threatmed$X8.1.1 =="(Not specified)" | threatmed$X8.1.2 =="(Not specified)" | threatmed$X8.2 =="(Not specified)" | threatmed$X8.2.1 =="(Not specified)"| threatmed$X8.2.2 =="(Not specified)" | threatmed$X8.3 =="(Not specified)" | threatmed$X8.4 =="(Not specified)" |threatmed$X8.4.1 =="(Not specified)"| threatmed$X8.4.2 =="(Not specified)" | threatmed$X8.5 =="(Not specified)" | threatmed$X8.5.1 =="(Not specified)" | threatmed$X8.5.2 =="(Not specified)" | threatmed$X8.6 =="(Not specified)"),]
InvNSnum <- nrow(InvNS)
InvNSper <-round((InvNSnum/threatobsnum * 100), dig=2)

InvNO <- threatmed[which(threatmed$X8.1 =="No/Negligible Impact: 0" | threatmed$X8.1 =="No/Negligible Impact: 1" | threatmed$X8.1 =="No/Negligible Impact: 2" | threatmed$X8.1.1 =="No/Negligible Impact: 0" | threatmed$X8.1.1 =="No/Negligible Impact: 1" | threatmed$X8.1.1 =="No/Negligible Impact: 2" | threatmed$X8.1.2 =="No/Negligible Impact: 0" | threatmed$X8.1.2 =="No/Negligible Impact: 1" | threatmed$X8.1.2 =="No/Negligible Impact: 2" | 
                           threatmed$X8.2 =="No/Negligible Impact: 0" | threatmed$X8.2 =="No/Negligible Impact: 1" | threatmed$X8.2 =="No/Negligible Impact: 2" | threatmed$X8.2.1 =="No/Negligible Impact: 0" | threatmed$X8.2.1 =="No/Negligible Impact: 1" | threatmed$X8.2.1 =="No/Negligible Impact: 2" | threatmed$X8.2.2 =="No/Negligible Impact: 0" | threatmed$X8.2.2 =="No/Negligible Impact: 1" | threatmed$X8.2.2 =="No/Negligible Impact: 2" | 
                           threatmed$X8.3 =="No/Negligible Impact: 0" | threatmed$X8.3 =="No/Negligible Impact: 1" | threatmed$X8.3 =="No/Negligible Impact: 2" | 
                           threatmed$X8.4 =="No/Negligible Impact: 0" | threatmed$X8.4 =="No/Negligible Impact: 1" | threatmed$X8.4 =="No/Negligible Impact: 2" | threatmed$X8.4.1 =="No/Negligible Impact: 0" | threatmed$X8.4.1 =="No/Negligible Impact: 1" | threatmed$X8.4.1 =="No/Negligible Impact: 2" | threatmed$X8.4.2 =="No/Negligible Impact: 0" | threatmed$X8.4.2 =="No/Negligible Impact: 1" | threatmed$X8.4.2 =="No/Negligible Impact: 2" | 
                           threatmed$X8.5 =="No/Negligible Impact: 0" | threatmed$X8.5 =="No/Negligible Impact: 1" | threatmed$X8.5 =="No/Negligible Impact: 2" | threatmed$X8.5.1 =="No/Negligible Impact: 0" | threatmed$X8.5.1 =="No/Negligible Impact: 1" | threatmed$X8.5.1 =="No/Negligible Impact: 2" | threatmed$X8.5.2 =="No/Negligible Impact: 0" | threatmed$X8.5.2 =="No/Negligible Impact: 1" | threatmed$X8.5.2 =="No/Negligible Impact: 2" |
                           threatmed$X8.6 =="No/Negligible Impact: 0" | threatmed$X8.6 =="No/Negligible Impact: 1" | threatmed$X8.6 =="No/Negligible Impact: 2"),]
InvNOnum <- nrow(InvNO)
InvNOper <-round((InvNOnum/threatobsnum * 100), dig=2)

Invtotal <- (InvLownum + InvMednum + InvHighnum + InvUnknum + InvPastnum + Invlistnum + InvNSnum + InvNOnum)
InvPer <- round((Invtotal/threatobsnum * 100), dig = 2)

#Threat 9: Pollution
PollLow <-threatmed[which(threatmed$X9.1 =="Low Impact: 3" | threatmed$X9.1 =="Low Impact: 4" | threatmed$X9.1 =="Low Impact: 5" | threatmed$X9.1.1 =="Low Impact: 3" | threatmed$X9.1.1 =="Low Impact: 4" | threatmed$X9.1.1 =="Low Impact: 5" | threatmed$X9.1.2 =="Low Impact: 3" | threatmed$X9.1.2 =="Low Impact: 4" | threatmed$X9.1.2 =="Low Impact: 5" | threatmed$X9.1.3 =="Low Impact: 3" | threatmed$X9.1.3 =="Low Impact: 4" | threatmed$X9.1.3 =="Low Impact: 5" | 
                            threatmed$X9.2 =="Low Impact: 3" | threatmed$X9.2 =="Low Impact: 4" | threatmed$X9.2 =="Low Impact: 5" | threatmed$X9.2.1 =="Low Impact: 3" | threatmed$X9.2.1 =="Low Impact: 4" | threatmed$X9.2.1 =="Low Impact: 5" | threatmed$X9.2.2 =="Low Impact: 3" | threatmed$X9.2.2 =="Low Impact: 4" | threatmed$X9.2.2 =="Low Impact: 5" | threatmed$X9.2.3 =="Low Impact: 3" | threatmed$X9.2.3 =="Low Impact: 4" | threatmed$X9.2.3 =="Low Impact: 5"),]
PollLownum <- nrow(PollLow)
PollLowper <-round((PollLownum/threatobsnum * 100), dig=2)

PollMed <-threatmed[which(threatmed$X9.1 =="Medium Impact: 6" | threatmed$X9.1 =="Medium Impact: 7" | threatmed$X9.1.1 =="Medium Impact: 6" | threatmed$X9.1.1 =="Medium Impact: 7" | threatmed$X9.1.2 =="Medium Impact: 6" | threatmed$X9.1.2 =="Medium Impact: 7" | threatmed$X9.1.3 =="Medium Impact: 6" | threatmed$X9.1.3 =="Medium Impact: 7" | 
                            threatmed$X9.2 =="Medium Impact: 6" | threatmed$X9.2 =="Medium Impact: 7" | threatmed$X9.2.1 =="Medium Impact: 6" | threatmed$X9.2.1 =="Medium Impact: 7" | threatmed$X9.2.2 =="Medium Impact: 6" | threatmed$X9.2.2 =="Medium Impact: 7" | threatmed$X9.2.3 =="Medium Impact: 6" | threatmed$X9.2.3 =="Medium Impact: 7"),]  
PollMednum <- nrow(PollMed)
PollMedper <-round((PollMednum/threatobsnum * 100), dig=2)

PollHigh <-threatmed[which(threatmed$X9.1 =="High Impact: 8" | threatmed$X9.1 =="High Impact: 9" | threatmed$X9.1.1 =="High Impact: 8" | threatmed$X9.1.1 =="High Impact: 9" | threatmed$X9.1.2 =="High Impact: 8" | threatmed$X9.1.2 =="High Impact: 9" | threatmed$X9.1.3 =="High Impact: 8" | threatmed$X9.1.3 =="High Impact: 9" | 
                             threatmed$X9.2 =="High Impact: 8" | threatmed$X9.2 =="High Impact: 9" | threatmed$X9.2.1 =="High Impact: 8" | threatmed$X9.2.1 =="High Impact: 9" | threatmed$X9.2.2 =="High Impact: 8" | threatmed$X9.2.2 =="High Impact: 9" | threatmed$X9.2.3 =="High Impact: 8" | threatmed$X9.2.3 =="High Impact: 9"),] 
PollHighnum <- nrow(PollHigh)
PollHighper <-round((PollHighnum/threatobsnum * 100), dig=2)

PollUnk <-threatmed[which(threatmed$X9.1 =="Unknown"| threatmed$X9.1.1 =="Unknown" | threatmed$X9.1.2 =="Unknown" | threatmed$X9.1.3 =="Unknown"| threatmed$X9.2 =="Unknown" | threatmed$X9.2.1 =="Unknown"| threatmed$X9.2.2 =="Unknown" | threatmed$X9.2.3 =="Unknown"),]
PollUnknum <- nrow(PollUnk)
PollUnkper <-round((PollUnknum/threatobsnum * 100), dig=2)

PollPast <-threatmed[which(threatmed$X9.1 =="Past Impact" | threatmed$X9.1.1 =="Past Impact" | threatmed$X9.1.2 =="Past Impact" | threatmed$X9.1.3 =="Past Impact" | threatmed$X9.2 =="Past Impact" | threatmed$X9.2.1 =="Past Impact"| threatmed$X9.2.2 =="Past Impact" | threatmed$X9.2.3 =="Past Impact"),]
PollPastnum <- nrow(PollPast)
PollPastper <-round((PollPastnum/threatobsnum * 100), dig=2)

Polllist <-threatmed[which(threatmed$X9.1 =="list()" | threatmed$X9.1.1 =="list()" | threatmed$X9.1.2 =="list()" | threatmed$X9.1.3 =="list()"| threatmed$X9.2 =="list()" | threatmed$X9.2.1 =="list()"| threatmed$X9.2.2 =="list()" | threatmed$X9.2.3 =="list()"),]
Polllistnum <- nrow(Polllist)
Polllistper <-round((Polllistnum/threatobsnum * 100), dig=2)

PollNS <-threatmed[which(threatmed$X9.1 =="(Not specified)" | threatmed$X9.1.1 =="(Not specified)" | threatmed$X9.1.2 =="(Not specified)" | threatmed$X9.1.3 =="(Not specified)"| threatmed$X9.2 =="(Not specified)" | threatmed$X9.2.1 =="(Not specified)"| threatmed$X9.2.2 =="(Not specified)" | threatmed$X9.2.3 =="(Not specified)"),]
PollNSnum <- nrow(PollNS)
PollNSper <-round((PollNSnum/threatobsnum * 100), dig=2)

PollNO <- threatmed[which(threatmed$X9.1 =="No/Negligible Impact: 0" | threatmed$X9.1 =="No/Negligible Impact: 1" | threatmed$X9.1 =="No/Negligible Impact: 2" | threatmed$X9.1.1 =="No/Negligible Impact: 0" | threatmed$X9.1.1 =="No/Negligible Impact: 1" | threatmed$X9.1.1 =="No/Negligible Impact: 2" | threatmed$X9.1.2 =="No/Negligible Impact: 0" | threatmed$X9.1.2 =="No/Negligible Impact: 1" | threatmed$X9.1.2 =="No/Negligible Impact: 2" | threatmed$X9.1.3 =="No/Negligible Impact: 0" | threatmed$X9.1.3 =="No/Negligible Impact: 1" | threatmed$X9.1.3 =="No/Negligible Impact: 2" | 
                            threatmed$X9.2 =="No/Negligible Impact: 0" | threatmed$X9.2 =="No/Negligible Impact: 1" | threatmed$X9.2 =="No/Negligible Impact: 2" | threatmed$X9.2.1 =="No/Negligible Impact: 0" | threatmed$X9.2.1 =="No/Negligible Impact: 1" | threatmed$X9.2.1 =="No/Negligible Impact: 2" | threatmed$X9.2.2 =="No/Negligible Impact: 0" | threatmed$X9.2.2 =="No/Negligible Impact: 1" | threatmed$X9.2.2 =="No/Negligible Impact: 2" | threatmed$X9.2.3 =="No/Negligible Impact: 0" | threatmed$X9.2.3 =="No/Negligible Impact: 1" | threatmed$X9.2.3 =="No/Negligible Impact: 2"),]
PollNOnum <- nrow(PollNO)
PollNOper <-round((PollNOnum/threatobsnum * 100), dig=2)

Polltotal <- (PollLownum + PollMednum + PollHighnum + PollUnknum + PollPastnum + Polllistnum + PollNSnum + PollNOnum)
PollPer <- round((Polltotal/threatobsnum * 100), dig = 2)

#Threat 10: Geological events
GeoLow <-threatmed[which(threatmed$X10.1 =="Low Impact: 3" | threatmed$X10.1 =="Low Impact: 4" | threatmed$X10.1 =="Low Impact: 5" | threatmed$X10.2 =="Low Impact: 3" | threatmed$X10.2 =="Low Impact: 4" | threatmed$X10.2 =="Low Impact: 5" | threatmed$X10.3 =="Low Impact: 3" | threatmed$X10.3 =="Low Impact: 4" | threatmed$X10.3 =="Low Impact: 5"),]
GeoLownum <- nrow(GeoLow)
GeoLowper <-round((GeoLownum/threatobsnum * 100), dig=2)

GeoMed <-threatmed[which(threatmed$X10.1 =="Medium Impact: 6" | threatmed$X10.1 =="Medium Impact: 7" | threatmed$X10.2 =="Medium Impact: 6" | threatmed$X10.2 =="Medium Impact: 7" | threatmed$X10.3 =="Medium Impact: 6" | threatmed$X10.3 =="Medium Impact: 7"),]
GeoMednum <- nrow(GeoMed)
GeoMedper <-round((GeoMednum/threatobsnum * 100), dig=2)

GeoHigh <-threatmed[which(threatmed$X10.1 =="High Impact: 8" | threatmed$X10.1 =="High Impact: 9" | threatmed$X10.2 =="High Impact: 8" | threatmed$X10.2 =="High Impact: 9" | threatmed$X10.3 =="High Impact: 8" | threatmed$X10.3 =="High Impact: 9"),]
GeoHighnum <- nrow(GeoHigh)
GeoHighper <-round((GeoHighnum/threatobsnum * 100), dig=2)

GeoUnk <-threatmed[which(threatmed$X10.1 =="Unknown"| threatmed$X10.2 =="Unknown" | threatmed$X10.3 =="Unknown"),]
GeoUnknum <- nrow(GeoUnk)
GeoUnkper <-round((GeoUnknum/threatobsnum * 100), dig=2)

GeoPast <-threatmed[which(threatmed$X10.1 =="Past Impact" | threatmed$X10.2 =="Past Impact"| threatmed$X10.3 =="Past Impact"),]
GeoPastnum <- nrow(GeoPast)
GeoPastper <-round((GeoPastnum/threatobsnum * 100), dig=2)

Geolist <-threatmed[which(threatmed$X10.1 =="list()" | threatmed$X10.2 =="list()" | threatmed$X10.3 =="list()"),]
Geolistnum <- nrow(Geolist)
Geolistper <-round((Geolistnum/threatobsnum * 100), dig=2)

GeoNS <-threatmed[which(threatmed$X10.1 =="(Not specified)" | threatmed$X10.2 =="(Not specified)" | threatmed$X10.3 =="(Not specified)"),]
GeoNSnum <- nrow(GeoNS)
GeoNSper <-round((GeoNSnum/threatobsnum * 100), dig=2)

GeoNO <- threatmed[which(threatmed$X10.1 =="No/Negligible Impact: 0" | threatmed$X10.1 =="No/Negligible Impact: 1" | threatmed$X10.1 =="No/Negligible Impact: 2" | threatmed$X10.2 =="No/Negligible Impact: 0" | threatmed$X10.2 =="No/Negligible Impact: 1" | threatmed$X10.2 =="No/Negligible Impact: 2" | threatmed$X10.3 =="No/Negligible Impact: 0" | threatmed$X10.3 =="No/Negligible Impact: 1" | threatmed$X10.3 =="No/Negligible Impact: 2"),]
GeoNOnum <- nrow(GeoNO)
GeoNOper <-round((GeoNOnum/threatobsnum * 100), dig=2)

Geototal <- (GeoLownum + GeoMednum + GeoHighnum + GeoUnknum + GeoPastnum + Geolistnum + GeoNSnum + GeoNOnum)
GeoPer <- round((Geototal/threatobsnum * 100), dig = 2)

#Threat 11: Climate change and severe weather
CCLow <-threatmed[which(threatmed$X11.1 =="Low Impact: 3" | threatmed$X11.1 =="Low Impact: 4" | threatmed$X11.1 =="Low Impact: 5" | threatmed$X11.2 =="Low Impact: 3" | threatmed$X11.2 =="Low Impact: 4" | threatmed$X11.2 =="Low Impact: 5" | threatmed$X11.3 =="Low Impact: 3" | threatmed$X11.3 =="Low Impact: 4" | threatmed$X11.3 =="Low Impact: 5" | threatmed$X11.4 =="Low Impact: 3" | threatmed$X11.4 =="Low Impact: 4" | threatmed$X11.4 =="Low Impact: 5" | threatmed$X11.5 =="Low Impact: 3" | threatmed$X11.5 =="Low Impact: 4" | threatmed$X11.5 =="Low Impact: 5"),]
CCLownum <- nrow(CCLow)
CCLowper <-round((CCLownum/threatobsnum * 100), dig=2)

CCMed <-threatmed[which(threatmed$X11.1 =="Medium Impact: 6" | threatmed$X11.1 =="Medium Impact: 7" | threatmed$X11.2 =="Medium Impact: 6" | threatmed$X11.2 =="Medium Impact: 7" | threatmed$X11.3 =="Medium Impact: 6" | threatmed$X11.3 =="Medium Impact: 7" | threatmed$X11.4 =="Medium Impact: 6" | threatmed$X11.4 =="Medium Impact: 7" | threatmed$X11.5 =="Medium Impact: 6" | threatmed$X11.5 =="Medium Impact: 7"),]
CCMednum <- nrow(CCMed)
CCMedper <-round((CCMednum/threatobsnum * 100), dig=2)

CCHigh <-threatmed[which(threatmed$X11.1 =="High Impact: 8" | threatmed$X11.1 =="High Impact: 9" | threatmed$X11.2 =="High Impact: 8" | threatmed$X11.2 =="High Impact: 9" | threatmed$X11.3 =="High Impact: 8" | threatmed$X11.3 =="High Impact: 9" | threatmed$X11.4 =="High Impact: 8" | threatmed$X11.4 =="High Impact: 9" | threatmed$X11.5 =="High Impact: 8" | threatmed$X11.5 =="High Impact: 9"),]
CCHighnum <- nrow(CCHigh)
CCHighper <-round((CCHighnum/threatobsnum * 100), dig=2)

CCUnk <-threatmed[which(threatmed$X11.1 =="Unknown"| threatmed$X11.2 =="Unknown" | threatmed$X11.3 =="Unknown" | threatmed$X11.4 =="Unknown" | threatmed$X11.5 =="Unknown"),]
CCUnknum <- nrow(CCUnk)
CCUnkper <-round((CCUnknum/threatobsnum * 100), dig=2)

CCPast <-threatmed[which(threatmed$X11.1 =="Past Impact" | threatmed$X11.2 =="Past Impact"| threatmed$X11.3 =="Past Impact" | threatmed$X11.4 =="Past Impact" | threatmed$X11.5 =="Past Impact"),]
CCPastnum <- nrow(CCPast)
CCPastper <-round((CCPastnum/threatobsnum * 100), dig=2)

CClist <-threatmed[which(threatmed$X11.1 =="list()" | threatmed$X11.2 =="list()" | threatmed$X11.3 =="list()" | threatmed$X11.4 =="list()" | threatmed$X11.5 =="list()"),]
CClistnum <- nrow(CClist)
CClistper <-round((CClistnum/threatobsnum * 100), dig=2)

CCNS <-threatmed[which(threatmed$X11.1 =="(Not specified)" | threatmed$X11.2 =="(Not specified)" | threatmed$X11.3 =="(Not specified)" | threatmed$X11.4 =="(Not specified)" | threatmed$X11.5 =="(Not specified)"),]
CCNSnum <- nrow(CCNS)
CCNSper <-round((CCNSnum/threatobsnum * 100), dig=2)

CCNO <- threatmed[which(threatmed$X11.1 =="No/Negligible Impact: 0" | threatmed$X11.1 =="No/Negligible Impact: 1" | threatmed$X11.1 =="No/Negligible Impact: 2" | threatmed$X11.2 =="No/Negligible Impact: 0" | threatmed$X11.2 =="No/Negligible Impact: 1" | threatmed$X11.2 =="No/Negligible Impact: 2" | threatmed$X11.3 =="No/Negligible Impact: 0" | threatmed$X11.3 =="No/Negligible Impact: 1" | threatmed$X11.3 =="No/Negligible Impact: 2" | threatmed$X11.4 =="No/Negligible Impact: 0" | threatmed$X11.4 =="No/Negligible Impact: 1" | threatmed$X11.4 =="No/Negligible Impact: 2" | threatmed$X11.5 =="No/Negligible Impact: 0" | threatmed$X11.5 =="No/Negligible Impact: 1" | threatmed$X11.5 =="No/Negligible Impact: 2"),]
CCNOnum <- nrow(CCNO)
CCNOper <-round((CCNOnum/threatobsnum * 100), dig=2)

CCtotal <- (CCLownum + CCMednum + CCHighnum + CCUnknum + CCPastnum + CClistnum + CCNSnum + CCNOnum)
CCPer <- round((CCtotal/threatobsnum * 100), dig = 2)

#Threat 12: Other options
OthLow <-threatmed[which(threatmed$X12.1 =="Low Impact: 3" | threatmed$X12.1 =="Low Impact: 4" | threatmed$X12.1 =="Low Impact: 5"),]
OthLownum <- nrow(OthLow)
OthLowper <-round((OthLownum/threatobsnum * 100), dig=2)

OthMed <-threatmed[which(threatmed$X12.1 =="Medium Impact: 6" | threatmed$X12.1 =="Medium Impact: 7"),]
OthMednum <- nrow(OthMed)
OthMedper <-round((OthMednum/threatobsnum * 100), dig=2)

OthHigh <-threatmed[which(threatmed$X12.1 =="High Impact: 8" | threatmed$X12.1 =="High Impact: 9"),]
OthHighnum <- nrow(OthHigh)
OthHighper <-round((OthHighnum/threatobsnum * 100), dig=2)

OthUnk <-threatmed[which(threatmed$X12.1 =="Unknown"),]
OthUnknum <- nrow(OthUnk)
OthUnkper <-round((OthUnknum/threatobsnum * 100), dig=2)

OthPast <-threatmed[which(threatmed$X12.1 =="Past Impact"),]
OthPastnum <- nrow(OthPast)
OthPastper <-round((OthPastnum/threatobsnum * 100), dig=2)

Othlist <-threatmed[which(threatmed$X12.1 =="list()"),]
Othlistnum <- nrow(Othlist)
Othlistper <-round((Othlistnum/threatobsnum * 100), dig=2)

OthNS <-threatmed[which(threatmed$X12.1 =="(Not specified)"),]
OthNSnum <- nrow(OthNS)
OthNSper <-round((OthNSnum/threatobsnum * 100), dig=2)

OthNO <- threatmed[which(threatmed$X12.1 =="No/Negligible Impact: 0" | threatmed$X12.1 =="No/Negligible Impact: 1" | threatmed$X12.1 =="No/Negligible Impact: 2"),]
OthNOnum <- nrow(OthNO)
OthNOper <-round((OthNOnum/threatobsnum * 100), dig=2)

Othtotal <- (OthLownum + OthMednum + OthHighnum + OthUnknum + OthPastnum + Othlistnum + OthNSnum + OthNOnum)
OthPer <- round((Othtotal/threatobsnum * 100), dig = 2)

#create dataframe
data <- data.frame(threat = c("RCD", "AG", "EPM", "TSC", "BRU", "HID", "NSM", "IOP", "POL", "GE", "CCSW"), value1 = c(ResPer, AgriPer, EnPer, TransPer, BioPer, HuPer, NatPer, InvPer, PollPer, GeoPer, CCPer), value2 = c(ResLowper, AgriLowper, EnLowper, TransLowper, BioLowper, HuLowper, NatLowper, InvLowper, PollLowper, GeoLowper, CCLowper), value3 = c(ResMedper, AgriMedper, EnMedper, TransMedper, BioMedper, HuMedper, NatMedper, InvMedper, PollMedper, GeoMedper, CCMedper), value4 = c(ResHighper, AgriHighper, EnHighper, TransHighper, BioHighper, HuHighper, NatHighper, InvHighper, PollHighper, GeoHighper, CCHighper))

#plot lollipop chart
data <- data %>%
  arrange(value1) %>%
  mutate(threat = factor(threat, threat))

ggplot(data, aes(x=threat, y=value1)) +
  geom_segment( aes(x=threat, xend=threat, y=0, yend=value1)) +
  geom_point( aes(x = threat, y = value1, color="orange"), size=5 ) +
  geom_point( aes(x = threat, y = value2, color="#92C5DE"), size=5 ) +
  geom_point( aes(x = threat, y = value3, color= "#8073AC"), size=5 ) +
  geom_point( aes(x = threat, y = value4, color="#CA0020"), size=5 ) +
  scale_color_identity(name = "Threat Score",
                       breaks = c("orange", "#92C5DE", "#8073AC", "#CA0020"),
                       labels = c("Threat present", "Low impact", "Moderate impact", "High impact"),
                       guide = "legend") +
  coord_flip() +
  theme_light(base_size = 20) +
  geom_text(aes(label=round(data$value1, digits = 1), hjust=-.5), cex = 6) +
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
  xlab("Threat") +
  ylab("Percent Impacted") +
  expand_limits(y = 50)
