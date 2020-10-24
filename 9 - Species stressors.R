# Supplementary code for Short et al. Part 9 - proportions of medicinal species subject to each stressor
# Monica Short, August 2020

#Load packages
library(gridExtra)
library(ggplot2)
library(fmsb)

#Set working directory
setwd("~/Documents/Short")
getwd()

#Read in data
use.data<- read.csv("./Shortdata.csv", na.strings=c(""," ","NA"))

#filter medicinal use
threatmed <- use_clean[which(use_clean$useTradeId..30 =="TRUE"),]
threatmed <- threatmed[which(!is.na(threatmed$Y1) | !is.na(threatmed$Y1.1) | !is.na(threatmed$Y1.2) | !is.na(threatmed$Y1.3) | 
                               !is.na(threatmed$Y2) | !is.na(threatmed$Y2.1) | !is.na(threatmed$Y2.1.1) | !is.na(threatmed$Y2.1.2) | !is.na(threatmed$Y2.1.3) | !is.na(threatmed$Y2.1.4) | 
                               !is.na(threatmed$Y2.2) | !is.na(threatmed$Y2.2.1) | !is.na(threatmed$Y2.2.2) | !is.na(threatmed$Y2.2.3) | 
                               !is.na(threatmed$Y2.3) | !is.na(threatmed$Y2.3.1) | !is.na(threatmed$Y2.3.2) | !is.na(threatmed$Y2.3.3) | !is.na(threatmed$Y2.3.4) | 
                               !is.na(threatmed$Y2.4) | !is.na(threatmed$Y2.4.1) | !is.na(threatmed$Y2.4.2) | !is.na(threatmed$Y2.4.3) | 
                               !is.na(threatmed$Y3) | !is.na(threatmed$Y3.1) | !is.na(threatmed$Y3.2) | !is.na(threatmed$Y3.3) | 
                               !is.na(threatmed$Y4) | !is.na(threatmed$Y4.1) | !is.na(threatmed$Y4.2) | !is.na(threatmed$Y4.3) | !is.na(threatmed$Y4.4) | 
                               !is.na(threatmed$Y5) | !is.na(threatmed$Y5.1) | !is.na(threatmed$Y5.1.1) | !is.na(threatmed$Y5.1.2) | !is.na(threatmed$Y5.1.3) | !is.na(threatmed$Y5.1.4) | 
                               !is.na(threatmed$Y5.2) | !is.na(threatmed$Y5.2.1) | !is.na(threatmed$Y5.2.2) | !is.na(threatmed$Y5.2.3) | !is.na(threatmed$Y5.2.4) | 
                               !is.na(threatmed$Y5.3) | !is.na(threatmed$Y5.3.1) | !is.na(threatmed$Y5.3.2) | !is.na(threatmed$Y5.3.3) | !is.na(threatmed$Y5.3.4) | 
                               !is.na(threatmed$Y5.4) | !is.na(threatmed$Y5.4.1) | !is.na(threatmed$Y5.4.2) | !is.na(threatmed$Y5.4.3) | !is.na(threatmed$Y5.4.4) | !is.na(threatmed$Y5.4.5) | !is.na(threatmed$Y5.4.6) | 
                               !is.na(threatmed$Y6) | !is.na(threatmed$Y6.1) | !is.na(threatmed$Y6.2) | !is.na(threatmed$Y6.3) | 
                               !is.na(threatmed$Y7) | !is.na(threatmed$Y7.1) | !is.na(threatmed$Y7.1.1) | !is.na(threatmed$Y7.1.2) | !is.na(threatmed$Y7.1.3) | 
                               !is.na(threatmed$Y7.2) | !is.na(threatmed$Y7.2.1) | !is.na(threatmed$Y7.2.2) | !is.na(threatmed$Y7.2.3) | !is.na(threatmed$Y7.2.4) | !is.na(threatmed$Y7.2.5) | !is.na(threatmed$Y7.2.6) | !is.na(threatmed$Y7.2.7) | !is.na(threatmed$Y7.2.8) | !is.na(threatmed$Y7.2.9) | !is.na(threatmed$Y7.2.10) | !is.na(threatmed$Y7.2.11) | 
                               !is.na(threatmed$Y7.3) | !is.na(threatmed$Y8) | !is.na(threatmed$Y8.1) | !is.na(threatmed$Y8.1.1) | !is.na(threatmed$Y8.1.2) | 
                               !is.na(threatmed$Y8.2) | !is.na(threatmed$Y8.2.1) | !is.na(threatmed$Y8.2.2) | !is.na(threatmed$Y8.3) | 
                               !is.na(threatmed$Y8.4) | !is.na(threatmed$Y8.4.1) | !is.na(threatmed$Y8.4.2) | 
                               !is.na(threatmed$Y8.5) | !is.na(threatmed$Y8.5.1) | !is.na(threatmed$Y8.5.2) | 
                               !is.na(threatmed$Y8.6) | !is.na(threatmed$Y9) | !is.na(threatmed$Y9.1) | !is.na(threatmed$Y9.1.1) | !is.na(threatmed$Y9.1.2) | !is.na(threatmed$Y9.1.3) | 
                               !is.na(threatmed$Y9.2) | !is.na(threatmed$Y9.2.1) | !is.na(threatmed$Y9.2.2) | !is.na(threatmed$Y9.2.3) | 
                               !is.na(threatmed$Y10) | !is.na(threatmed$Y10.1) | !is.na(threatmed$Y10.2) | !is.na(threatmed$Y10.3) | 
                               !is.na(threatmed$Y11) | !is.na(threatmed$Y11.1) | !is.na(threatmed$Y11.2) | !is.na(threatmed$Y11.3) | !is.na(threatmed$Y11.4) | !is.na(threatmed$Y11.5) | 
                               !is.na(threatmed$Y12) | !is.na(threatmed$Y12.1)),]
#rerun with following line included for stressors of species with medicinal use only
#threatmed <- threatmed[which(threatmed$useTradeId..19 =="FALSE" & threatmed$useTradeId..23 == "FALSE" & threatmed$useTradeId..23 == "FALSE" & threatmed$useTradeId..27 == "FALSE" & threatmed$useTradeId..20 =="FALSE" & threatmed$useTradeId..32 =="FALSE" & threatmed$useTradeId..24 =="FALSE" & threatmed$useTradeId..29 =="FALSE" & threatmed$useTradeId..33 =="FALSE" & threatmed$useTradeId..25 =="FALSE" & threatmed$useTradeId..28 =="FALSE" & threatmed$useTradeId..22 =="FALSE" & threatmed$useTradeId..21 =="FALSE" & threatmed$useTradeId..35 =="FALSE" & threatmed$useTradeId..36 =="FALSE" & threatmed$useTradeId..34 =="FALSE" & threatmed$useTradeId..31 =="FALSE"),]

threatobsnum <- nrow(threatmed)

## -----------------------------------------------------------------------

# Threats by stressors 

## -----------------------------------------------------------------------

#Ecosystem Conversion

EcoCon <-subset(threatmed, grepl("1.1", threatmed$Y1.1) | grepl("1.1", threatmed$Y1.2) | grepl("1.1", threatmed$Y1.3) | 
                  grepl("1.1", threatmed$Y2.1) | grepl("1.1", threatmed$Y2.1.1) | grepl("1.1", threatmed$Y2.1.2) | grepl("1.1", threatmed$Y2.1.3) | grepl("1.1", threatmed$Y2.1.4) |
                  grepl("1.1", threatmed$Y2.2) | grepl("1.1", threatmed$Y2.2.1) | grepl("1.1", threatmed$Y2.2.2) | grepl("1.1", threatmed$Y2.2.3) |
                  grepl("1.1", threatmed$Y2.3) | grepl("1.1", threatmed$Y2.3.1) | grepl("1.1", threatmed$Y2.3.2) | grepl("1.1", threatmed$Y2.3.3) | grepl("1.1", threatmed$Y2.3.4) |
                  grepl("1.1", threatmed$Y2.4) | grepl("1.1", threatmed$Y2.4.1) | grepl("1.1", threatmed$Y2.4.2) | grepl("1.1", threatmed$Y2.4.3) |
                  grepl("1.1", threatmed$Y3.1) | grepl("1.1", threatmed$Y3.2) | grepl("1.1", threatmed$Y3.3) |
                  grepl("1.1", threatmed$Y4.1) | grepl("1.1", threatmed$Y4.2) | grepl("1.1", threatmed$Y4.3) | grepl("1.1", threatmed$Y4.4) |
                  grepl("1.1", threatmed$Y5.1) | grepl("1.1", threatmed$Y5.1.1) | grepl("1.1", threatmed$Y5.1.2) | grepl("1.1", threatmed$Y5.1.3) | grepl("1.1", threatmed$Y5.1.4) |
                  grepl("1.1", threatmed$Y5.2) | grepl("1.1", threatmed$Y5.2.1) | grepl("1.1", threatmed$Y5.2.2) | grepl("1.1", threatmed$Y5.2.3) | grepl("1.1", threatmed$Y5.2.4) | 
                  grepl("1.1", threatmed$Y5.3) | grepl("1.1", threatmed$Y5.3.1) | grepl("1.1", threatmed$Y5.3.2) | grepl("1.1", threatmed$Y5.3.3) | grepl("1.1", threatmed$Y5.3.4) |
                  grepl("1.1", threatmed$Y5.4) | grepl("1.1", threatmed$Y5.4.1) | grepl("1.1", threatmed$Y5.4.2) | grepl("1.1", threatmed$Y5.4.3) | grepl("1.1", threatmed$Y5.4.4) | grepl("1.1", threatmed$Y5.4.5) | grepl("1.1", threatmed$Y5.4.6) |
                  grepl("1.1", threatmed$Y6.1) | grepl("1.1", threatmed$Y6.2) | grepl("1.1", threatmed$Y6.3) |
                  grepl("1.1", threatmed$Y7.1) |  grepl("1.1", threatmed$Y7.1.1) | grepl("1.1", threatmed$Y7.1.2) | grepl("1.1", threatmed$Y7.1.3) |  
                  grepl("1.1", threatmed$Y7.2) |  grepl("1.1", threatmed$Y7.2.1) | grepl("1.1", threatmed$Y7.2.2) | grepl("1.1", threatmed$Y7.2.3) | grepl("1.1", threatmed$Y7.2.4) | grepl("1.1", threatmed$Y7.2.5) | grepl("1.1", threatmed$Y7.2.6) | grepl("1.1", threatmed$Y7.2.7) | grepl("1.1", threatmed$Y7.2.8) |  grepl("1.1", threatmed$Y7.2.9) |  grepl("1.1", threatmed$Y7.2.10) | grepl("1.1", threatmed$Y7.2.11) |
                  grepl("1.1", threatmed$Y7.3) |
                  grepl("1.1", threatmed$Y8.1) | grepl("1.1", threatmed$Y8.1.1) | grepl("1.1", threatmed$Y8.1.2) | 
                  grepl("1.1", threatmed$Y8.2) | grepl("1.1", threatmed$Y8.2.1) | grepl("1.1", threatmed$Y8.2.2) | 
                  grepl("1.1", threatmed$Y8.3) | 
                  grepl("1.1", threatmed$Y8.4) | grepl("1.1", threatmed$Y8.4.1) | grepl("1.1", threatmed$Y8.4.2) | 
                  grepl("1.1", threatmed$Y8.5) | grepl("1.1", threatmed$Y8.5.1) | grepl("1.1", threatmed$Y8.5.2) | 
                  grepl("1.1", threatmed$Y8.6) |
                  grepl("1.1", threatmed$Y9.1) | grepl("1.1", threatmed$Y9.1.1) | grepl("1.1", threatmed$Y9.1.2) | grepl("1.1", threatmed$Y9.1.3) | 
                  grepl("1.1", threatmed$Y9.2) | grepl("1.1", threatmed$Y9.2.1) | grepl("1.1", threatmed$Y9.2.2) | grepl("1.1", threatmed$Y9.2.3) |
                  grepl("1.1", threatmed$Y10.1) | grepl("1.1", threatmed$Y10.2) | grepl("1.1", threatmed$Y10.3) |
                  grepl("1.1", threatmed$Y11.1) | grepl("1.1", threatmed$Y11.2) | grepl("1.1", threatmed$Y11.3) | grepl("1.1", threatmed$Y11.4) | grepl("1.1", threatmed$Y11.5) |
                  grepl("1.1", threatmed$Y12.1)
                  )
EcoConnum <- nrow(EcoCon)
EcoConper <-round((EcoConnum/threatobsnum * 100), dig=2)

#Ecosystem degradation

EcoDeg <-subset(threatmed, grepl("1.2", threatmed$Y1.1) | grepl("1.2", threatmed$Y1.2) | grepl("1.2", threatmed$Y1.3) |
                     grepl("1.2", threatmed$Y2.1) | grepl("1.2", threatmed$Y2.1.1) | grepl("1.2", threatmed$Y2.1.2) | grepl("1.2", threatmed$Y2.1.3) | grepl("1.2", threatmed$Y2.1.4) |
                     grepl("1.2", threatmed$Y2.2) | grepl("1.2", threatmed$Y2.2.1) | grepl("1.2", threatmed$Y2.2.2) | grepl("1.2", threatmed$Y2.2.3) |
                     grepl("1.2", threatmed$Y2.3) | grepl("1.2", threatmed$Y2.3.1) | grepl("1.2", threatmed$Y2.3.2) | grepl("1.2", threatmed$Y2.3.3) | grepl("1.2", threatmed$Y2.3.4) |
                     grepl("1.2", threatmed$Y2.4) | grepl("1.2", threatmed$Y2.4.1) | grepl("1.2", threatmed$Y2.4.2) | grepl("1.2", threatmed$Y2.4.3) |
                     grepl("1.2", threatmed$Y3.1) | grepl("1.2", threatmed$Y3.2) | grepl("1.2", threatmed$Y3.3) |
                     grepl("1.2", threatmed$Y4.1) | grepl("1.2", threatmed$Y4.2) | grepl("1.2", threatmed$Y4.3) | grepl("1.2", threatmed$Y4.4) |
                     grepl("1.2", threatmed$Y5.1) | grepl("1.2", threatmed$Y5.1.1) | grepl("1.2", threatmed$Y5.1.2) | grepl("1.2", threatmed$Y5.1.3) | grepl("1.2", threatmed$Y5.1.4) |
                     grepl("1.2", threatmed$Y5.2) | grepl("1.2", threatmed$Y5.2.1) | grepl("1.2", threatmed$Y5.2.2) | grepl("1.2", threatmed$Y5.2.3) | grepl("1.2", threatmed$Y5.2.4) | 
                     grepl("1.2", threatmed$Y5.3) | grepl("1.2", threatmed$Y5.3.1) | grepl("1.2", threatmed$Y5.3.2) | grepl("1.2", threatmed$Y5.3.3) | grepl("1.2", threatmed$Y5.3.4) |
                     grepl("1.2", threatmed$Y5.4) | grepl("1.2", threatmed$Y5.4.1) | grepl("1.2", threatmed$Y5.4.2) | grepl("1.2", threatmed$Y5.4.3) | grepl("1.2", threatmed$Y5.4.4) | grepl("1.2", threatmed$Y5.4.5) | grepl("1.2", threatmed$Y5.4.6) |
                     grepl("1.2", threatmed$Y6.1) | grepl("1.2", threatmed$Y6.2) | grepl("1.2", threatmed$Y6.3) |
                     grepl("1.2", threatmed$Y7.1) |  grepl("1.2", threatmed$Y7.1.1) | grepl("1.2", threatmed$Y7.1.2) | grepl("1.2", threatmed$Y7.1.3) |  
                     grepl("1.2", threatmed$Y7.2) |  grepl("1.2", threatmed$Y7.2.1) | grepl("1.2", threatmed$Y7.2.2) | grepl("1.2", threatmed$Y7.2.3) | grepl("1.2", threatmed$Y7.2.4) | grepl("1.2", threatmed$Y7.2.5) | grepl("1.2", threatmed$Y7.2.6) | grepl("1.2", threatmed$Y7.2.7) | grepl("1.2", threatmed$Y7.2.8) |  grepl("1.2", threatmed$Y7.2.9) |  grepl("1.2", threatmed$Y7.2.10) | grepl("1.2", threatmed$Y7.2.11) |
                     grepl("1.2", threatmed$Y7.3) |
                     grepl("1.2", threatmed$Y8.1) | grepl("1.2", threatmed$Y8.1.1) | grepl("1.2", threatmed$Y8.1.2) | 
                     grepl("1.2", threatmed$Y8.2) | grepl("1.2", threatmed$Y8.2.1) | grepl("1.2", threatmed$Y8.2.2) | 
                     grepl("1.2", threatmed$Y8.3) | 
                     grepl("1.2", threatmed$Y8.4) | grepl("1.2", threatmed$Y8.4.1) | grepl("1.2", threatmed$Y8.4.2) | 
                     grepl("1.2", threatmed$Y8.5) | grepl("1.2", threatmed$Y8.5.1) | grepl("1.2", threatmed$Y8.5.2) | 
                     grepl("1.2", threatmed$Y8.6) |
                     grepl("1.2", threatmed$Y9.1) | grepl("1.2", threatmed$Y9.1.1) | grepl("1.2", threatmed$Y9.1.2) | grepl("1.2", threatmed$Y9.1.3) | 
                     grepl("1.2", threatmed$Y9.2) | grepl("1.2", threatmed$Y9.2.1) | grepl("1.2", threatmed$Y9.2.2) | grepl("1.2", threatmed$Y9.2.3) |
                     grepl("1.2", threatmed$Y10.1) | grepl("1.2", threatmed$Y10.2) | grepl("1.2", threatmed$Y10.3) |
                     grepl("1.2", threatmed$Y11.1) | grepl("1.2", threatmed$Y11.2) | grepl("1.2", threatmed$Y11.3) | grepl("1.2", threatmed$Y11.4) | grepl("1.2", threatmed$Y11.5) |
                     grepl("1.2", threatmed$Y12.1)
                     )
EcoDegnum <- nrow(EcoDeg)
EcoDegper <-round((EcoDegnum/threatobsnum * 100), dig=2)

#Indirect ecosystem effects
IndirEcoEff <-subset(threatmed, grepl("1.3", threatmed$Y1.1) | grepl("1.3", threatmed$Y1.2) | grepl("1.3", threatmed$Y1.3) |                      grepl("1.3", threatmed$Y2.1) | grepl("1.3", threatmed$Y2.1.1) | grepl("1.3", threatmed$Y2.1.2) | grepl("1.3", threatmed$Y2.1.3) | grepl("1.3", threatmed$Y2.1.4) |
                     grepl("1.3", threatmed$Y2.2) | grepl("1.3", threatmed$Y2.2.1) | grepl("1.3", threatmed$Y2.2.2) | grepl("1.3", threatmed$Y2.2.3) |
                     grepl("1.3", threatmed$Y2.3) | grepl("1.3", threatmed$Y2.3.1) | grepl("1.3", threatmed$Y2.3.2) | grepl("1.3", threatmed$Y2.3.3) | grepl("1.3", threatmed$Y2.3.4) |
                     grepl("1.3", threatmed$Y2.4) | grepl("1.3", threatmed$Y2.4.1) | grepl("1.3", threatmed$Y2.4.2) | grepl("1.3", threatmed$Y2.4.3) |
                     grepl("1.3", threatmed$Y3.1) | grepl("1.3", threatmed$Y3.2) | grepl("1.3", threatmed$Y3.3) |
                     grepl("1.3", threatmed$Y4.1) | grepl("1.3", threatmed$Y4.2) | grepl("1.3", threatmed$Y4.3) | grepl("1.3", threatmed$Y4.4) |
                     grepl("1.3", threatmed$Y5.1) | grepl("1.3", threatmed$Y5.1.1) | grepl("1.3", threatmed$Y5.1.2) | grepl("1.3", threatmed$Y5.1.3) | grepl("1.3", threatmed$Y5.1.4) |
                     grepl("1.3", threatmed$Y5.2) | grepl("1.3", threatmed$Y5.2.1) | grepl("1.3", threatmed$Y5.2.2) | grepl("1.3", threatmed$Y5.2.3) | grepl("1.3", threatmed$Y5.2.4) | 
                     grepl("1.3", threatmed$Y5.3) | grepl("1.3", threatmed$Y5.3.1) | grepl("1.3", threatmed$Y5.3.2) | grepl("1.3", threatmed$Y5.3.3) | grepl("1.3", threatmed$Y5.3.4) |
                     grepl("1.3", threatmed$Y5.4) | grepl("1.3", threatmed$Y5.4.1) | grepl("1.3", threatmed$Y5.4.2) | grepl("1.3", threatmed$Y5.4.3) | grepl("1.3", threatmed$Y5.4.4) | grepl("1.3", threatmed$Y5.4.5) | grepl("1.3", threatmed$Y5.4.6) |
                     grepl("1.3", threatmed$Y6.1) | grepl("1.3", threatmed$Y6.2) | grepl("1.3", threatmed$Y6.3) |
                       grepl("1.3", threatmed$Y7.1) |  grepl("1.3", threatmed$Y7.1.1) | grepl("1.3", threatmed$Y7.1.2) | grepl("1.3", threatmed$Y7.1.3) |  
                       grepl("1.3", threatmed$Y7.2) |  grepl("1.3", threatmed$Y7.2.1) | grepl("1.3", threatmed$Y7.2.2) | grepl("1.3", threatmed$Y7.2.3) | grepl("1.3", threatmed$Y7.2.4) | grepl("1.3", threatmed$Y7.2.5) | grepl("1.3", threatmed$Y7.2.6) | grepl("1.3", threatmed$Y7.2.7) | grepl("1.3", threatmed$Y7.2.8) |  grepl("1.3", threatmed$Y7.2.9) |  grepl("1.3", threatmed$Y7.2.10) | grepl("1.3", threatmed$Y7.2.11) |
                       grepl("1.3", threatmed$Y7.3) |
                       grepl("1.3", threatmed$Y8.1) | grepl("1.3", threatmed$Y8.1.1) | grepl("1.3", threatmed$Y8.1.2) | 
                       grepl("1.3", threatmed$Y8.2) | grepl("1.3", threatmed$Y8.2.1) | grepl("1.3", threatmed$Y8.2.2) | 
                       grepl("1.3", threatmed$Y8.3) | 
                       grepl("1.3", threatmed$Y8.4) | grepl("1.3", threatmed$Y8.4.1) | grepl("1.3", threatmed$Y8.4.2) | 
                       grepl("1.3", threatmed$Y8.5) | grepl("1.3", threatmed$Y8.5.1) | grepl("1.3", threatmed$Y8.5.2) | 
                       grepl("1.3", threatmed$Y8.6) |
                       grepl("1.3", threatmed$Y9.1) | grepl("1.3", threatmed$Y9.1.1) | grepl("1.3", threatmed$Y9.1.2) | grepl("1.3", threatmed$Y9.1.3) | 
                       grepl("1.3", threatmed$Y9.2) | grepl("1.3", threatmed$Y9.2.1) | grepl("1.3", threatmed$Y9.2.2) | grepl("1.3", threatmed$Y9.2.3) |
                       grepl("1.3", threatmed$Y10.1) | grepl("1.3", threatmed$Y10.2) | grepl("1.3", threatmed$Y10.3) |
                       grepl("1.3", threatmed$Y11.1) | grepl("1.3", threatmed$Y11.2) | grepl("1.3", threatmed$Y11.3) | grepl("1.3", threatmed$Y11.4) | grepl("1.3", threatmed$Y11.5) |
                       grepl("1.3", threatmed$Y12.1)
                       )
IndirEcoEffnum <- nrow(IndirEcoEff)
IndirEcoEffper <-round((IndirEcoEffnum/threatobsnum * 100), dig=2)

#Species mortality
SpecMort <-subset(threatmed, grepl("2.1", threatmed$Y1.1) | grepl("2.1", threatmed$Y1.2) | grepl("2.1", threatmed$Y1.3) |
                       grepl("2.1", threatmed$Y2.1) | grepl("2.1", threatmed$Y2.1.1) | grepl("2.1", threatmed$Y2.1.2) | grepl("2.1", threatmed$Y2.1.3) | grepl("2.1", threatmed$Y2.1.4) |
                       grepl("2.1", threatmed$Y2.2) | grepl("2.1", threatmed$Y2.2.1) | grepl("2.1", threatmed$Y2.2.2) | grepl("2.1", threatmed$Y2.2.3) |
                       grepl("2.1", threatmed$Y2.3) | grepl("2.1", threatmed$Y2.3.1) | grepl("2.1", threatmed$Y2.3.2) | grepl("2.1", threatmed$Y2.3.3) | grepl("2.1", threatmed$Y2.3.4) |
                       grepl("2.1", threatmed$Y2.4) | grepl("2.1", threatmed$Y2.4.1) | grepl("2.1", threatmed$Y2.4.2) | grepl("2.1", threatmed$Y2.4.3) |
                    grepl("2.1", threatmed$Y3.1) | grepl("2.1", threatmed$Y3.2) | grepl("2.1", threatmed$Y3.3) |
                    grepl("2.1", threatmed$Y4.1) | grepl("2.1", threatmed$Y4.2) | grepl("2.1", threatmed$Y4.3) | grepl("2.1", threatmed$Y4.4) |
                    grepl("2.1", threatmed$Y5.1) | grepl("2.1", threatmed$Y5.1.1) | grepl("2.1", threatmed$Y5.1.2) | grepl("2.1", threatmed$Y5.1.3) | grepl("2.1", threatmed$Y5.1.4) |
                    grepl("2.1", threatmed$Y5.2) | grepl("2.1", threatmed$Y5.2.1) | grepl("2.1", threatmed$Y5.2.2) | grepl("2.1", threatmed$Y5.2.3) | grepl("2.1", threatmed$Y5.2.4) | 
                    grepl("2.1", threatmed$Y5.3) | grepl("2.1", threatmed$Y5.3.1) | grepl("2.1", threatmed$Y5.3.2) | grepl("2.1", threatmed$Y5.3.3) | grepl("2.1", threatmed$Y5.3.4) |
                    grepl("2.1", threatmed$Y5.4) | grepl("2.1", threatmed$Y5.4.1) | grepl("2.1", threatmed$Y5.4.2) | grepl("2.1", threatmed$Y5.4.3) | grepl("2.1", threatmed$Y5.4.4) | grepl("2.1", threatmed$Y5.4.5) | grepl("2.1", threatmed$Y5.4.6) |
                    grepl("2.1", threatmed$Y6.1) | grepl("2.1", threatmed$Y6.2) | grepl("2.1", threatmed$Y6.3) |
                    grepl("2.1", threatmed$Y7.1) |  grepl("2.1", threatmed$Y7.1.1) | grepl("2.1", threatmed$Y7.1.2) | grepl("2.1", threatmed$Y7.1.3) |  
                    grepl("2.1", threatmed$Y7.2) |  grepl("2.1", threatmed$Y7.2.1) | grepl("2.1", threatmed$Y7.2.2) | grepl("2.1", threatmed$Y7.2.3) | grepl("2.1", threatmed$Y7.2.4) | grepl("2.1", threatmed$Y7.2.5) | grepl("2.1", threatmed$Y7.2.6) | grepl("2.1", threatmed$Y7.2.7) | grepl("2.1", threatmed$Y7.2.8) |  grepl("2.1", threatmed$Y7.2.9) |  grepl("2.1", threatmed$Y7.2.10) | grepl("2.1", threatmed$Y7.2.11) |
                    grepl("2.1", threatmed$Y7.3) |
                    grepl("2.1", threatmed$Y8.1) | grepl("2.1", threatmed$Y8.1.1) | grepl("2.1", threatmed$Y8.1.2) | 
                    grepl("2.1", threatmed$Y8.2) | grepl("2.1", threatmed$Y8.2.1) | grepl("2.1", threatmed$Y8.2.2) | 
                    grepl("2.1", threatmed$Y8.3) | 
                    grepl("2.1", threatmed$Y8.4) | grepl("2.1", threatmed$Y8.4.1) | grepl("2.1", threatmed$Y8.4.2) | 
                    grepl("2.1", threatmed$Y8.5) | grepl("2.1", threatmed$Y8.5.1) | grepl("2.1", threatmed$Y8.5.2) | 
                    grepl("2.1", threatmed$Y8.6) |
                    grepl("2.1", threatmed$Y9.1) | grepl("2.1", threatmed$Y9.1.1) | grepl("2.1", threatmed$Y9.1.2) | grepl("2.1", threatmed$Y9.1.3) | 
                    grepl("2.1", threatmed$Y9.2) | grepl("2.1", threatmed$Y9.2.1) | grepl("2.1", threatmed$Y9.2.2) | grepl("2.1", threatmed$Y9.2.3) |
                    grepl("2.1", threatmed$Y10.1) | grepl("2.1", threatmed$Y10.2) | grepl("2.1", threatmed$Y10.3) |
                    grepl("2.1", threatmed$Y11.1) | grepl("2.1", threatmed$Y11.2) | grepl("2.1", threatmed$Y11.3) | grepl("2.1", threatmed$Y11.4) | grepl("2.1", threatmed$Y11.5) |
                    grepl("2.1", threatmed$Y12.1)
                      )
SpecMortnum <- nrow(SpecMort)
SpecMortper <-round((SpecMortnum/threatobsnum * 100), dig=2)


#Species disturbances
SpecDist <-subset(threatmed, grepl("2.2", threatmed$Y1.1) | grepl("2.2", threatmed$Y1.2) | grepl("2.2", threatmed$Y1.3) |
                       grepl("2.2", threatmed$Y2.1) | grepl("2.2", threatmed$Y2.1.1) | grepl("2.2", threatmed$Y2.1.2) | grepl("2.2", threatmed$Y2.1.3) | grepl("2.2", threatmed$Y2.1.4) |
                       grepl("2.2", threatmed$Y2.2) | grepl("2.2", threatmed$Y2.2.1) | grepl("2.2", threatmed$Y2.2.2) | grepl("2.2", threatmed$Y2.2.3) |
                       grepl("2.2", threatmed$Y2.3) | grepl("2.2", threatmed$Y2.3.1) | grepl("2.2", threatmed$Y2.3.2) | grepl("2.2", threatmed$Y2.3.3) | grepl("2.2", threatmed$Y2.3.4) |
                       grepl("2.2", threatmed$Y2.4) | grepl("2.2", threatmed$Y2.4.1) | grepl("2.2", threatmed$Y2.4.2) | grepl("2.2", threatmed$Y2.4.3) |
                    grepl("2.2", threatmed$Y3.1) | grepl("2.2", threatmed$Y3.2) | grepl("2.2", threatmed$Y3.3) |
                    grepl("2.2", threatmed$Y4.1) | grepl("2.2", threatmed$Y4.2) | grepl("2.2", threatmed$Y4.3) | grepl("2.2", threatmed$Y4.4) |
                    grepl("2.2", threatmed$Y5.1) | grepl("2.2", threatmed$Y5.1.1) | grepl("2.2", threatmed$Y5.1.2) | grepl("2.2", threatmed$Y5.1.3) | grepl("2.2", threatmed$Y5.1.4) |
                    grepl("2.2", threatmed$Y5.2) | grepl("2.2", threatmed$Y5.2.1) | grepl("2.2", threatmed$Y5.2.2) | grepl("2.2", threatmed$Y5.2.3) | grepl("2.2", threatmed$Y5.2.4) | 
                    grepl("2.2", threatmed$Y5.3) | grepl("2.2", threatmed$Y5.3.1) | grepl("2.2", threatmed$Y5.3.2) | grepl("2.2", threatmed$Y5.3.3) | grepl("2.2", threatmed$Y5.3.4) |
                    grepl("2.2", threatmed$Y5.4) | grepl("2.2", threatmed$Y5.4.1) | grepl("2.2", threatmed$Y5.4.2) | grepl("2.2", threatmed$Y5.4.3) | grepl("2.2", threatmed$Y5.4.4) | grepl("2.2", threatmed$Y5.4.5) | grepl("2.2", threatmed$Y5.4.6) |
                    grepl("2.2", threatmed$Y6.1) | grepl("2.2", threatmed$Y6.2) | grepl("2.2", threatmed$Y6.3) |
                    grepl("2.2", threatmed$Y7.1) |  grepl("2.2", threatmed$Y7.1.1) | grepl("2.2", threatmed$Y7.1.2) | grepl("2.2", threatmed$Y7.1.3) |  
                    grepl("2.2", threatmed$Y7.2) |  grepl("2.2", threatmed$Y7.2.1) | grepl("2.2", threatmed$Y7.2.2) | grepl("2.2", threatmed$Y7.2.3) | grepl("2.2", threatmed$Y7.2.4) | grepl("2.2", threatmed$Y7.2.5) | grepl("2.2", threatmed$Y7.2.6) | grepl("2.2", threatmed$Y7.2.7) | grepl("2.2", threatmed$Y7.2.8) |  grepl("2.2", threatmed$Y7.2.9) |  grepl("2.2", threatmed$Y7.2.10) | grepl("2.2", threatmed$Y7.2.11) |
                    grepl("2.2", threatmed$Y7.3) |
                    grepl("2.2", threatmed$Y8.1) | grepl("2.2", threatmed$Y8.1.1) | grepl("2.2", threatmed$Y8.1.2) | 
                    grepl("2.2", threatmed$Y8.2) | grepl("2.2", threatmed$Y8.2.1) | grepl("2.2", threatmed$Y8.2.2) | 
                    grepl("2.2", threatmed$Y8.3) | 
                    grepl("2.2", threatmed$Y8.4) | grepl("2.2", threatmed$Y8.4.1) | grepl("2.2", threatmed$Y8.4.2) | 
                    grepl("2.2", threatmed$Y8.5) | grepl("2.2", threatmed$Y8.5.1) | grepl("2.2", threatmed$Y8.5.2) | 
                    grepl("2.2", threatmed$Y8.6) |
                    grepl("2.2", threatmed$Y9.1) | grepl("2.2", threatmed$Y9.1.1) | grepl("2.2", threatmed$Y9.1.2) | grepl("2.2", threatmed$Y9.1.3) | 
                    grepl("2.2", threatmed$Y9.2) | grepl("2.2", threatmed$Y9.2.1) | grepl("2.2", threatmed$Y9.2.2) | grepl("2.2", threatmed$Y9.2.3) |
                    grepl("2.2", threatmed$Y10.1) | grepl("2.2", threatmed$Y10.2) | grepl("2.2", threatmed$Y10.3) |
                    grepl("2.2", threatmed$Y11.1) | grepl("2.2", threatmed$Y11.2) | grepl("2.2", threatmed$Y11.3) | grepl("2.2", threatmed$Y11.4) | grepl("2.2", threatmed$Y11.5) |
                    grepl("2.2", threatmed$Y12.1)
                       )
SpecDistnum <- nrow(SpecDist)
SpecDistper <-round((SpecDistnum/threatobsnum * 100), dig=2)

#Hybridisation
Hybrid <-subset(threatmed, grepl("2.3.1", threatmed$Y1.1) | grepl("2.3.1", threatmed$Y1.2) | grepl("2.3.1", threatmed$Y1.3) |
                     grepl("2.3.1", threatmed$Y2.1) | grepl("2.3.1", threatmed$Y2.1.1) | grepl("2.3.1", threatmed$Y2.1.2) | grepl("2.3.1", threatmed$Y2.1.3) | grepl("2.3.1", threatmed$Y2.1.4) |
                     grepl("2.3.1", threatmed$Y2.2) | grepl("2.3.1", threatmed$Y2.2.1) | grepl("2.3.1", threatmed$Y2.2.2) | grepl("2.3.1", threatmed$Y2.2.3) |
                     grepl("2.3.1", threatmed$Y2.3) | grepl("2.3.1", threatmed$Y2.3.1) | grepl("2.3.1", threatmed$Y2.3.2) | grepl("2.3.1", threatmed$Y2.3.3) | grepl("2.3.1", threatmed$Y2.3.4) |
                     grepl("2.3.1", threatmed$Y2.4) | grepl("2.3.1", threatmed$Y2.4.1) | grepl("2.3.1", threatmed$Y2.4.2) | grepl("2.3.1", threatmed$Y2.4.3) |
                     grepl("2.3.1", threatmed$Y3.1) | grepl("2.3.1", threatmed$Y3.2) | grepl("2.3.1", threatmed$Y3.3) |
                     grepl("2.3.1", threatmed$Y4.1) | grepl("2.3.1", threatmed$Y4.2) | grepl("2.3.1", threatmed$Y4.3) | grepl("2.3.1", threatmed$Y4.4) |
                     grepl("2.3.1", threatmed$Y5.1) | grepl("2.3.1", threatmed$Y5.1.1) | grepl("2.3.1", threatmed$Y5.1.2) | grepl("2.3.1", threatmed$Y5.1.3) | grepl("2.3.1", threatmed$Y5.1.4) |
                     grepl("2.3.1", threatmed$Y5.2) | grepl("2.3.1", threatmed$Y5.2.1) | grepl("2.3.1", threatmed$Y5.2.2) | grepl("2.3.1", threatmed$Y5.2.3) | grepl("2.3.1", threatmed$Y5.2.4) | 
                     grepl("2.3.1", threatmed$Y5.3) | grepl("2.3.1", threatmed$Y5.3.1) | grepl("2.3.1", threatmed$Y5.3.2) | grepl("2.3.1", threatmed$Y5.3.3) | grepl("2.3.1", threatmed$Y5.3.4) |
                     grepl("2.3.1", threatmed$Y5.4) | grepl("2.3.1", threatmed$Y5.4.1) | grepl("2.3.1", threatmed$Y5.4.2) | grepl("2.3.1", threatmed$Y5.4.3) | grepl("2.3.1", threatmed$Y5.4.4) | grepl("2.3.1", threatmed$Y5.4.5) | grepl("2.3.1", threatmed$Y5.4.6) |
                     grepl("2.3.1", threatmed$Y6.1) | grepl("2.3.1", threatmed$Y6.2) | grepl("2.3.1", threatmed$Y6.3) |
                     grepl("2.3.1", threatmed$Y7.1) |  grepl("2.3.1", threatmed$Y7.1.1) | grepl("2.3.1", threatmed$Y7.1.2) | grepl("2.3.1", threatmed$Y7.1.3) |  
                     grepl("2.3.1", threatmed$Y7.2) |  grepl("2.3.1", threatmed$Y7.2.1) | grepl("2.3.1", threatmed$Y7.2.2) | grepl("2.3.1", threatmed$Y7.2.3) | grepl("2.3.1", threatmed$Y7.2.4) | grepl("2.3.1", threatmed$Y7.2.5) | grepl("2.3.1", threatmed$Y7.2.6) | grepl("2.3.1", threatmed$Y7.2.7) | grepl("2.3.1", threatmed$Y7.2.8) |  grepl("2.3.1", threatmed$Y7.2.9) |  grepl("2.3.1", threatmed$Y7.2.10) | grepl("2.3.1", threatmed$Y7.2.11) |
                     grepl("2.3.1", threatmed$Y7.3) |
                     grepl("2.3.1", threatmed$Y8.1) | grepl("2.3.1", threatmed$Y8.1.1) | grepl("2.3.1", threatmed$Y8.1.2) | 
                     grepl("2.3.1", threatmed$Y8.2) | grepl("2.3.1", threatmed$Y8.2.1) | grepl("2.3.1", threatmed$Y8.2.2) | 
                     grepl("2.3.1", threatmed$Y8.3) | 
                     grepl("2.3.1", threatmed$Y8.4) | grepl("2.3.1", threatmed$Y8.4.1) | grepl("2.3.1", threatmed$Y8.4.2) | 
                     grepl("2.3.1", threatmed$Y8.5) | grepl("2.3.1", threatmed$Y8.5.1) | grepl("2.3.1", threatmed$Y8.5.2) | 
                     grepl("2.3.1", threatmed$Y8.6) |
                     grepl("2.3.1", threatmed$Y9.1) | grepl("2.3.1", threatmed$Y9.1.1) | grepl("2.3.1", threatmed$Y9.1.2) | grepl("2.3.1", threatmed$Y9.1.3) | 
                     grepl("2.3.1", threatmed$Y9.2) | grepl("2.3.1", threatmed$Y9.2.1) | grepl("2.3.1", threatmed$Y9.2.2) | grepl("2.3.1", threatmed$Y9.2.3) |
                     grepl("2.3.1", threatmed$Y10.1) | grepl("2.3.1", threatmed$Y10.2) | grepl("2.3.1", threatmed$Y10.3) |
                     grepl("2.3.1", threatmed$Y11.1) | grepl("2.3.1", threatmed$Y11.2) | grepl("2.3.1", threatmed$Y11.3) | grepl("2.3.1", threatmed$Y11.4) | grepl("2.3.1", threatmed$Y11.5) |
                     grepl("2.3.1", threatmed$Y12.1)
                     )
Hybridnum <- nrow(Hybrid)
Hybridper <-round((Hybridnum/threatobsnum * 100), dig=2)

#Competition
Comp <-subset(threatmed, grepl("2.3.2", threatmed$Y1.1) | grepl("2.3.2", threatmed$Y1.2) | grepl("2.3.2", threatmed$Y1.3) |
                   grepl("2.3.2", threatmed$Y2.1) | grepl("2.3.2", threatmed$Y2.1.1) | grepl("2.3.2", threatmed$Y2.1.2) | grepl("2.3.2", threatmed$Y2.1.3) | grepl("2.3.2", threatmed$Y2.1.4) |
                   grepl("2.3.2", threatmed$Y2.2) | grepl("2.3.2", threatmed$Y2.2.1) | grepl("2.3.2", threatmed$Y2.2.2) | grepl("2.3.2", threatmed$Y2.2.3) |
                   grepl("2.3.2", threatmed$Y2.3) | grepl("2.3.2", threatmed$Y2.3.1) | grepl("2.3.2", threatmed$Y2.3.2) | grepl("2.3.2", threatmed$Y2.3.3) | grepl("2.3.2", threatmed$Y2.3.4) |
                   grepl("2.3.2", threatmed$Y2.4) | grepl("2.3.2", threatmed$Y2.4.1) | grepl("2.3.2", threatmed$Y2.4.2) | grepl("2.3.2", threatmed$Y2.4.3) |
                   grepl("2.3.2", threatmed$Y3.1) | grepl("2.3.2", threatmed$Y3.2) | grepl("2.3.2", threatmed$Y3.3) |
                   grepl("2.3.2", threatmed$Y4.1) | grepl("2.3.2", threatmed$Y4.2) | grepl("2.3.2", threatmed$Y4.3) | grepl("2.3.2", threatmed$Y4.4) |
                   grepl("2.3.2", threatmed$Y5.1) | grepl("2.3.2", threatmed$Y5.1.1) | grepl("2.3.2", threatmed$Y5.1.2) | grepl("2.3.2", threatmed$Y5.1.3) | grepl("2.3.2", threatmed$Y5.1.4) |
                   grepl("2.3.2", threatmed$Y5.2) | grepl("2.3.2", threatmed$Y5.2.1) | grepl("2.3.2", threatmed$Y5.2.2) | grepl("2.3.2", threatmed$Y5.2.3) | grepl("2.3.2", threatmed$Y5.2.4) | 
                   grepl("2.3.2", threatmed$Y5.3) | grepl("2.3.2", threatmed$Y5.3.1) | grepl("2.3.2", threatmed$Y5.3.2) | grepl("2.3.2", threatmed$Y5.3.3) | grepl("2.3.2", threatmed$Y5.3.4) |
                   grepl("2.3.2", threatmed$Y5.4) | grepl("2.3.2", threatmed$Y5.4.1) | grepl("2.3.2", threatmed$Y5.4.2) | grepl("2.3.2", threatmed$Y5.4.3) | grepl("2.3.2", threatmed$Y5.4.4) | grepl("2.3.2", threatmed$Y5.4.5) | grepl("2.3.2", threatmed$Y5.4.6) |
                   grepl("2.3.2", threatmed$Y6.1) | grepl("2.3.2", threatmed$Y6.2) | grepl("2.3.2", threatmed$Y6.3) |
                   grepl("2.3.2", threatmed$Y7.1) |  grepl("2.3.2", threatmed$Y7.1.1) | grepl("2.3.2", threatmed$Y7.1.2) | grepl("2.3.2", threatmed$Y7.1.3) |  
                   grepl("2.3.2", threatmed$Y7.2) |  grepl("2.3.2", threatmed$Y7.2.1) | grepl("2.3.2", threatmed$Y7.2.2) | grepl("2.3.2", threatmed$Y7.2.3) | grepl("2.3.2", threatmed$Y7.2.4) | grepl("2.3.2", threatmed$Y7.2.5) | grepl("2.3.2", threatmed$Y7.2.6) | grepl("2.3.2", threatmed$Y7.2.7) | grepl("2.3.2", threatmed$Y7.2.8) |  grepl("2.3.2", threatmed$Y7.2.9) |  grepl("2.3.2", threatmed$Y7.2.10) | grepl("2.3.2", threatmed$Y7.2.11) |
                   grepl("2.3.2", threatmed$Y7.3) |
                   grepl("2.3.2", threatmed$Y8.1) | grepl("2.3.2", threatmed$Y8.1.1) | grepl("2.3.2", threatmed$Y8.1.2) | 
                   grepl("2.3.2", threatmed$Y8.2) | grepl("2.3.2", threatmed$Y8.2.1) | grepl("2.3.2", threatmed$Y8.2.2) | 
                   grepl("2.3.2", threatmed$Y8.3) | 
                   grepl("2.3.2", threatmed$Y8.4) | grepl("2.3.2", threatmed$Y8.4.1) | grepl("2.3.2", threatmed$Y8.4.2) | 
                   grepl("2.3.2", threatmed$Y8.5) | grepl("2.3.2", threatmed$Y8.5.1) | grepl("2.3.2", threatmed$Y8.5.2) | 
                   grepl("2.3.2", threatmed$Y8.6) |
                   grepl("2.3.2", threatmed$Y9.1) | grepl("2.3.2", threatmed$Y9.1.1) | grepl("2.3.2", threatmed$Y9.1.2) | grepl("2.3.2", threatmed$Y9.1.3) | 
                   grepl("2.3.2", threatmed$Y9.2) | grepl("2.3.2", threatmed$Y9.2.1) | grepl("2.3.2", threatmed$Y9.2.2) | grepl("2.3.2", threatmed$Y9.2.3) |
                   grepl("2.3.2", threatmed$Y10.1) | grepl("2.3.2", threatmed$Y10.2) | grepl("2.3.2", threatmed$Y10.3) |
                   grepl("2.3.2", threatmed$Y11.1) | grepl("2.3.2", threatmed$Y11.2) | grepl("2.3.2", threatmed$Y11.3) | grepl("2.3.2", threatmed$Y11.4) | grepl("2.3.2", threatmed$Y11.5) |
                   grepl("2.3.2", threatmed$Y12.1)
                   )
Compnum <- nrow(Comp)
Compper <-round((Compnum/threatobsnum * 100), dig=2)

#Loss mutualism
LossMut <-subset(threatmed, grepl("2.3.3", threatmed$Y1.1) | grepl("2.3.3", threatmed$Y1.2) | grepl("2.3.3", threatmed$Y1.3) |
                      grepl("2.3.3", threatmed$Y2.1) | grepl("2.3.3", threatmed$Y2.1.1) | grepl("2.3.3", threatmed$Y2.1.2) | grepl("2.3.3", threatmed$Y2.1.3) | grepl("2.3.3", threatmed$Y2.1.4) |
                      grepl("2.3.3", threatmed$Y2.2) | grepl("2.3.3", threatmed$Y2.2.1) | grepl("2.3.3", threatmed$Y2.2.2) | grepl("2.3.3", threatmed$Y2.2.3) |
                      grepl("2.3.3", threatmed$Y2.3) | grepl("2.3.3", threatmed$Y2.3.1) | grepl("2.3.3", threatmed$Y2.3.2) | grepl("2.3.3", threatmed$Y2.3.3) | grepl("2.3.3", threatmed$Y2.3.4) |
                      grepl("2.3.3", threatmed$Y2.4) | grepl("2.3.3", threatmed$Y2.4.1) | grepl("2.3.3", threatmed$Y2.4.2) | grepl("2.3.3", threatmed$Y2.4.3) |
                      grepl("2.3.3", threatmed$Y3.1) | grepl("2.3.3", threatmed$Y3.2) | grepl("2.3.3", threatmed$Y3.3) |
                      grepl("2.3.3", threatmed$Y4.1) | grepl("2.3.3", threatmed$Y4.2) | grepl("2.3.3", threatmed$Y4.3) | grepl("2.3.3", threatmed$Y4.4) |
                      grepl("2.3.3", threatmed$Y5.1) | grepl("2.3.3", threatmed$Y5.1.1) | grepl("2.3.3", threatmed$Y5.1.2) | grepl("2.3.3", threatmed$Y5.1.3) | grepl("2.3.3", threatmed$Y5.1.4) |
                      grepl("2.3.3", threatmed$Y5.2) | grepl("2.3.3", threatmed$Y5.2.1) | grepl("2.3.3", threatmed$Y5.2.2) | grepl("2.3.3", threatmed$Y5.2.3) | grepl("2.3.3", threatmed$Y5.2.4) | 
                      grepl("2.3.3", threatmed$Y5.3) | grepl("2.3.3", threatmed$Y5.3.1) | grepl("2.3.3", threatmed$Y5.3.2) | grepl("2.3.3", threatmed$Y5.3.3) | grepl("2.3.3", threatmed$Y5.3.4) |
                      grepl("2.3.3", threatmed$Y5.4) | grepl("2.3.3", threatmed$Y5.4.1) | grepl("2.3.3", threatmed$Y5.4.2) | grepl("2.3.3", threatmed$Y5.4.3) | grepl("2.3.3", threatmed$Y5.4.4) | grepl("2.3.3", threatmed$Y5.4.5) | grepl("2.3.3", threatmed$Y5.4.6) |
                      grepl("2.3.3", threatmed$Y6.1) | grepl("2.3.3", threatmed$Y6.2) | grepl("2.3.3", threatmed$Y6.3) |
                      grepl("2.3.3", threatmed$Y7.1) |  grepl("2.3.3", threatmed$Y7.1.1) | grepl("2.3.3", threatmed$Y7.1.2) | grepl("2.3.3", threatmed$Y7.1.3) |  
                      grepl("2.3.3", threatmed$Y7.2) |  grepl("2.3.3", threatmed$Y7.2.1) | grepl("2.3.3", threatmed$Y7.2.2) | grepl("2.3.3", threatmed$Y7.2.3) | grepl("2.3.3", threatmed$Y7.2.4) | grepl("2.3.3", threatmed$Y7.2.5) | grepl("2.3.3", threatmed$Y7.2.6) | grepl("2.3.3", threatmed$Y7.2.7) | grepl("2.3.3", threatmed$Y7.2.8) |  grepl("2.3.3", threatmed$Y7.2.9) |  grepl("2.3.3", threatmed$Y7.2.10) | grepl("2.3.3", threatmed$Y7.2.11) |
                      grepl("2.3.3", threatmed$Y7.3) |
                      grepl("2.3.3", threatmed$Y8.1) | grepl("2.3.3", threatmed$Y8.1.1) | grepl("2.3.3", threatmed$Y8.1.2) | 
                      grepl("2.3.3", threatmed$Y8.2) | grepl("2.3.3", threatmed$Y8.2.1) | grepl("2.3.3", threatmed$Y8.2.2) | 
                      grepl("2.3.3", threatmed$Y8.3) | 
                      grepl("2.3.3", threatmed$Y8.4) | grepl("2.3.3", threatmed$Y8.4.1) | grepl("2.3.3", threatmed$Y8.4.2) | 
                      grepl("2.3.3", threatmed$Y8.5) | grepl("2.3.3", threatmed$Y8.5.1) | grepl("2.3.3", threatmed$Y8.5.2) | 
                      grepl("2.3.3", threatmed$Y8.6) |
                      grepl("2.3.3", threatmed$Y9.1) | grepl("2.3.3", threatmed$Y9.1.1) | grepl("2.3.3", threatmed$Y9.1.2) | grepl("2.3.3", threatmed$Y9.1.3) | 
                      grepl("2.3.3", threatmed$Y9.2) | grepl("2.3.3", threatmed$Y9.2.1) | grepl("2.3.3", threatmed$Y9.2.2) | grepl("2.3.3", threatmed$Y9.2.3) |
                      grepl("2.3.3", threatmed$Y10.1) | grepl("2.3.3", threatmed$Y10.2) | grepl("2.3.3", threatmed$Y10.3) |
                      grepl("2.3.3", threatmed$Y11.1) | grepl("2.3.3", threatmed$Y11.2) | grepl("2.3.3", threatmed$Y11.3) | grepl("2.3.3", threatmed$Y11.4) | grepl("2.3.3", threatmed$Y11.5) |
                      grepl("2.3.3", threatmed$Y12.1)
                      )
LossMutnum <- nrow(LossMut)
LossMutper <-round((LossMutnum/threatobsnum * 100), dig=2)

#loss pollinators
LossPoll <-subset(threatmed, grepl("2.3.4", threatmed$Y1.1) | grepl("2.3.4", threatmed$Y1.2) | grepl("2.3.4", threatmed$Y1.3) |
                       grepl("2.3.4", threatmed$Y2.1) | grepl("2.3.4", threatmed$Y2.1.1) | grepl("2.3.4", threatmed$Y2.1.2) | grepl("2.3.4", threatmed$Y2.1.3) | grepl("2.3.4", threatmed$Y2.1.4) |
                       grepl("2.3.4", threatmed$Y2.2) | grepl("2.3.4", threatmed$Y2.2.1) | grepl("2.3.4", threatmed$Y2.2.2) | grepl("2.3.4", threatmed$Y2.2.3) |
                       grepl("2.3.4", threatmed$Y2.3) | grepl("2.3.4", threatmed$Y2.3.1) | grepl("2.3.4", threatmed$Y2.3.2) | grepl("2.3.4", threatmed$Y2.3.3) | grepl("2.3.4", threatmed$Y2.3.4) |
                       grepl("2.3.4", threatmed$Y2.4) | grepl("2.3.4", threatmed$Y2.4.1) | grepl("2.3.4", threatmed$Y2.4.2) | grepl("2.3.4", threatmed$Y2.4.3) |
                       grepl("2.3.4", threatmed$Y3.1) | grepl("2.3.4", threatmed$Y3.2) | grepl("2.3.4", threatmed$Y3.3) |
                       grepl("2.3.4", threatmed$Y4.1) | grepl("2.3.4", threatmed$Y4.2) | grepl("2.3.4", threatmed$Y4.3) | grepl("2.3.4", threatmed$Y4.4) |
                       grepl("2.3.4", threatmed$Y5.1) | grepl("2.3.4", threatmed$Y5.1.1) | grepl("2.3.4", threatmed$Y5.1.2) | grepl("2.3.4", threatmed$Y5.1.3) | grepl("2.3.4", threatmed$Y5.1.4) |
                       grepl("2.3.4", threatmed$Y5.2) | grepl("2.3.4", threatmed$Y5.2.1) | grepl("2.3.4", threatmed$Y5.2.2) | grepl("2.3.4", threatmed$Y5.2.3) | grepl("2.3.4", threatmed$Y5.2.4) | 
                       grepl("2.3.4", threatmed$Y5.3) | grepl("2.3.4", threatmed$Y5.3.1) | grepl("2.3.4", threatmed$Y5.3.2) | grepl("2.3.4", threatmed$Y5.3.3) | grepl("2.3.4", threatmed$Y5.3.4) |
                       grepl("2.3.4", threatmed$Y5.4) | grepl("2.3.4", threatmed$Y5.4.1) | grepl("2.3.4", threatmed$Y5.4.2) | grepl("2.3.4", threatmed$Y5.4.3) | grepl("2.3.4", threatmed$Y5.4.4) | grepl("2.3.4", threatmed$Y5.4.5) | grepl("2.3.4", threatmed$Y5.4.6) |
                       grepl("2.3.4", threatmed$Y6.1) | grepl("2.3.4", threatmed$Y6.2) | grepl("2.3.4", threatmed$Y6.3) |
                       grepl("2.3.4", threatmed$Y7.1) |  grepl("2.3.4", threatmed$Y7.1.1) | grepl("2.3.4", threatmed$Y7.1.2) | grepl("2.3.4", threatmed$Y7.1.3) |  
                       grepl("2.3.4", threatmed$Y7.2) |  grepl("2.3.4", threatmed$Y7.2.1) | grepl("2.3.4", threatmed$Y7.2.2) | grepl("2.3.4", threatmed$Y7.2.3) | grepl("2.3.4", threatmed$Y7.2.4) | grepl("2.3.4", threatmed$Y7.2.5) | grepl("2.3.4", threatmed$Y7.2.6) | grepl("2.3.4", threatmed$Y7.2.7) | grepl("2.3.4", threatmed$Y7.2.8) |  grepl("2.3.4", threatmed$Y7.2.9) |  grepl("2.3.4", threatmed$Y7.2.10) | grepl("2.3.4", threatmed$Y7.2.11) |
                       grepl("2.3.4", threatmed$Y7.3) |
                       grepl("2.3.4", threatmed$Y8.1) | grepl("2.3.4", threatmed$Y8.1.1) | grepl("2.3.4", threatmed$Y8.1.2) | 
                       grepl("2.3.4", threatmed$Y8.2) | grepl("2.3.4", threatmed$Y8.2.1) | grepl("2.3.4", threatmed$Y8.2.2) | 
                       grepl("2.3.4", threatmed$Y8.3) | 
                       grepl("2.3.4", threatmed$Y8.4) | grepl("2.3.4", threatmed$Y8.4.1) | grepl("2.3.4", threatmed$Y8.4.2) | 
                       grepl("2.3.4", threatmed$Y8.5) | grepl("2.3.4", threatmed$Y8.5.1) | grepl("2.3.4", threatmed$Y8.5.2) | 
                       grepl("2.3.4", threatmed$Y8.6) |
                       grepl("2.3.4", threatmed$Y9.1) | grepl("2.3.4", threatmed$Y9.1.1) | grepl("2.3.4", threatmed$Y9.1.2) | grepl("2.3.4", threatmed$Y9.1.3) | 
                       grepl("2.3.4", threatmed$Y9.2) | grepl("2.3.4", threatmed$Y9.2.1) | grepl("2.3.4", threatmed$Y9.2.2) | grepl("2.3.4", threatmed$Y9.2.3) |
                       grepl("2.3.4", threatmed$Y10.1) | grepl("2.3.4", threatmed$Y10.2) | grepl("2.3.4", threatmed$Y10.3) |
                       grepl("2.3.4", threatmed$Y11.1) | grepl("2.3.4", threatmed$Y11.2) | grepl("2.3.4", threatmed$Y11.3) | grepl("2.3.4", threatmed$Y11.4) | grepl("2.3.4", threatmed$Y11.5) |
                       grepl("2.3.4", threatmed$Y12.1)
                       )
LossPollnum <- nrow(LossPoll)
LossPollper <-round((LossPollnum/threatobsnum * 100), dig=2)

#Inbreeding
Inbreed <-subset(threatmed, grepl("2.3.5", threatmed$Y1.1) | grepl("2.3.5", threatmed$Y1.2) | grepl("2.3.5", threatmed$Y1.3) |
                      grepl("2.3.5", threatmed$Y2.1) | grepl("2.3.5", threatmed$Y2.1.1) | grepl("2.3.5", threatmed$Y2.1.2) | grepl("2.3.5", threatmed$Y2.1.3) | grepl("2.3.5", threatmed$Y2.1.4) |
                      grepl("2.3.5", threatmed$Y2.2) | grepl("2.3.5", threatmed$Y2.2.1) | grepl("2.3.5", threatmed$Y2.2.2) | grepl("2.3.5", threatmed$Y2.2.3) |
                      grepl("2.3.5", threatmed$Y2.3) | grepl("2.3.5", threatmed$Y2.3.1) | grepl("2.3.5", threatmed$Y2.3.2) | grepl("2.3.5", threatmed$Y2.3.3) | grepl("2.3.5", threatmed$Y2.3.4) |
                      grepl("2.3.5", threatmed$Y2.4) | grepl("2.3.5", threatmed$Y2.4.1) | grepl("2.3.5", threatmed$Y2.4.2) | grepl("2.3.5", threatmed$Y2.4.3) |
                      grepl("2.3.5", threatmed$Y3.1) | grepl("2.3.5", threatmed$Y3.2) | grepl("2.3.5", threatmed$Y3.3) |
                      grepl("2.3.5", threatmed$Y4.1) | grepl("2.3.5", threatmed$Y4.2) | grepl("2.3.5", threatmed$Y4.3) | grepl("2.3.5", threatmed$Y4.4) |
                      grepl("2.3.5", threatmed$Y5.1) | grepl("2.3.5", threatmed$Y5.1.1) | grepl("2.3.5", threatmed$Y5.1.2) | grepl("2.3.5", threatmed$Y5.1.3) | grepl("2.3.5", threatmed$Y5.1.4) |
                      grepl("2.3.5", threatmed$Y5.2) | grepl("2.3.5", threatmed$Y5.2.1) | grepl("2.3.5", threatmed$Y5.2.2) | grepl("2.3.5", threatmed$Y5.2.3) | grepl("2.3.5", threatmed$Y5.2.4) | 
                      grepl("2.3.5", threatmed$Y5.3) | grepl("2.3.5", threatmed$Y5.3.1) | grepl("2.3.5", threatmed$Y5.3.2) | grepl("2.3.5", threatmed$Y5.3.3) | grepl("2.3.5", threatmed$Y5.3.4) |
                      grepl("2.3.5", threatmed$Y5.4) | grepl("2.3.5", threatmed$Y5.4.1) | grepl("2.3.5", threatmed$Y5.4.2) | grepl("2.3.5", threatmed$Y5.4.3) | grepl("2.3.5", threatmed$Y5.4.4) | grepl("2.3.5", threatmed$Y5.4.5) | grepl("2.3.5", threatmed$Y5.4.6) |
                      grepl("2.3.5", threatmed$Y6.1) | grepl("2.3.5", threatmed$Y6.2) | grepl("2.3.5", threatmed$Y6.3) |
                      grepl("2.3.5", threatmed$Y7.1) |  grepl("2.3.5", threatmed$Y7.1.1) | grepl("2.3.5", threatmed$Y7.1.2) | grepl("2.3.5", threatmed$Y7.1.3) |  
                      grepl("2.3.5", threatmed$Y7.2) |  grepl("2.3.5", threatmed$Y7.2.1) | grepl("2.3.5", threatmed$Y7.2.2) | grepl("2.3.5", threatmed$Y7.2.3) | grepl("2.3.5", threatmed$Y7.2.4) | grepl("2.3.5", threatmed$Y7.2.5) | grepl("2.3.5", threatmed$Y7.2.6) | grepl("2.3.5", threatmed$Y7.2.7) | grepl("2.3.5", threatmed$Y7.2.8) |  grepl("2.3.5", threatmed$Y7.2.9) |  grepl("2.3.5", threatmed$Y7.2.10) | grepl("2.3.5", threatmed$Y7.2.11) |
                      grepl("2.3.5", threatmed$Y7.3) |
                      grepl("2.3.5", threatmed$Y8.1) | grepl("2.3.5", threatmed$Y8.1.1) | grepl("2.3.5", threatmed$Y8.1.2) | 
                      grepl("2.3.5", threatmed$Y8.2) | grepl("2.3.5", threatmed$Y8.2.1) | grepl("2.3.5", threatmed$Y8.2.2) | 
                      grepl("2.3.5", threatmed$Y8.3) | 
                      grepl("2.3.5", threatmed$Y8.4) | grepl("2.3.5", threatmed$Y8.4.1) | grepl("2.3.5", threatmed$Y8.4.2) | 
                      grepl("2.3.5", threatmed$Y8.5) | grepl("2.3.5", threatmed$Y8.5.1) | grepl("2.3.5", threatmed$Y8.5.2) | 
                      grepl("2.3.5", threatmed$Y8.6) |
                      grepl("2.3.5", threatmed$Y9.1) | grepl("2.3.5", threatmed$Y9.1.1) | grepl("2.3.5", threatmed$Y9.1.2) | grepl("2.3.5", threatmed$Y9.1.3) | 
                      grepl("2.3.5", threatmed$Y9.2) | grepl("2.3.5", threatmed$Y9.2.1) | grepl("2.3.5", threatmed$Y9.2.2) | grepl("2.3.5", threatmed$Y9.2.3) |
                      grepl("2.3.5", threatmed$Y10.1) | grepl("2.3.5", threatmed$Y10.2) | grepl("2.3.5", threatmed$Y10.3) |
                      grepl("2.3.5", threatmed$Y11.1) | grepl("2.3.5", threatmed$Y11.2) | grepl("2.3.5", threatmed$Y11.3) | grepl("2.3.5", threatmed$Y11.4) | grepl("2.3.5", threatmed$Y11.5) |
                      grepl("2.3.5", threatmed$Y12.1)
                      )
Inbreednum <- nrow(Inbreed)
Inbreedper <-round((Inbreednum/threatobsnum * 100), dig=2)

#Skewed sex ratios
SkewSex <-subset(threatmed, grepl("2.3.6", threatmed$Y1.1) | grepl("2.3.6", threatmed$Y1.2) | grepl("2.3.6", threatmed$Y1.3) |
                      grepl("2.3.6", threatmed$Y2.1) | grepl("2.3.6", threatmed$Y2.1.1) | grepl("2.3.6", threatmed$Y2.1.2) | grepl("2.3.6", threatmed$Y2.1.3) | grepl("2.3.6", threatmed$Y2.1.4) |
                      grepl("2.3.6", threatmed$Y2.2) | grepl("2.3.6", threatmed$Y2.2.1) | grepl("2.3.6", threatmed$Y2.2.2) | grepl("2.3.6", threatmed$Y2.2.3) |
                      grepl("2.3.6", threatmed$Y2.3) | grepl("2.3.6", threatmed$Y2.3.1) | grepl("2.3.6", threatmed$Y2.3.2) | grepl("2.3.6", threatmed$Y2.3.3) | grepl("2.3.6", threatmed$Y2.3.4) |
                      grepl("2.3.6", threatmed$Y2.4) | grepl("2.3.6", threatmed$Y2.4.1) | grepl("2.3.6", threatmed$Y2.4.2) | grepl("2.3.6", threatmed$Y2.4.3) |
                      grepl("2.3.6", threatmed$Y3.1) | grepl("2.3.6", threatmed$Y3.2) | grepl("2.3.6", threatmed$Y3.3) |
                      grepl("2.3.6", threatmed$Y4.1) | grepl("2.3.6", threatmed$Y4.2) | grepl("2.3.6", threatmed$Y4.3) | grepl("2.3.6", threatmed$Y4.4) |
                      grepl("2.3.6", threatmed$Y5.1) | grepl("2.3.6", threatmed$Y5.1.1) | grepl("2.3.6", threatmed$Y5.1.2) | grepl("2.3.6", threatmed$Y5.1.3) | grepl("2.3.6", threatmed$Y5.1.4) |
                      grepl("2.3.6", threatmed$Y5.2) | grepl("2.3.6", threatmed$Y5.2.1) | grepl("2.3.6", threatmed$Y5.2.2) | grepl("2.3.6", threatmed$Y5.2.3) | grepl("2.3.6", threatmed$Y5.2.4) | 
                      grepl("2.3.6", threatmed$Y5.3) | grepl("2.3.6", threatmed$Y5.3.1) | grepl("2.3.6", threatmed$Y5.3.2) | grepl("2.3.6", threatmed$Y5.3.3) | grepl("2.3.6", threatmed$Y5.3.4) |
                      grepl("2.3.6", threatmed$Y5.4) | grepl("2.3.6", threatmed$Y5.4.1) | grepl("2.3.6", threatmed$Y5.4.2) | grepl("2.3.6", threatmed$Y5.4.3) | grepl("2.3.6", threatmed$Y5.4.4) | grepl("2.3.6", threatmed$Y5.4.5) | grepl("2.3.6", threatmed$Y5.4.6) |
                      grepl("2.3.6", threatmed$Y6.1) | grepl("2.3.6", threatmed$Y6.2) | grepl("2.3.6", threatmed$Y6.3) |
                      grepl("2.3.6", threatmed$Y7.1) |  grepl("2.3.6", threatmed$Y7.1.1) | grepl("2.3.6", threatmed$Y7.1.2) | grepl("2.3.6", threatmed$Y7.1.3) |  
                      grepl("2.3.6", threatmed$Y7.2) |  grepl("2.3.6", threatmed$Y7.2.1) | grepl("2.3.6", threatmed$Y7.2.2) | grepl("2.3.6", threatmed$Y7.2.3) | grepl("2.3.6", threatmed$Y7.2.4) | grepl("2.3.6", threatmed$Y7.2.5) | grepl("2.3.6", threatmed$Y7.2.6) | grepl("2.3.6", threatmed$Y7.2.7) | grepl("2.3.6", threatmed$Y7.2.8) |  grepl("2.3.6", threatmed$Y7.2.9) |  grepl("2.3.6", threatmed$Y7.2.10) | grepl("2.3.6", threatmed$Y7.2.11) |
                      grepl("2.3.6", threatmed$Y7.3) |
                      grepl("2.3.6", threatmed$Y8.1) | grepl("2.3.6", threatmed$Y8.1.1) | grepl("2.3.6", threatmed$Y8.1.2) | 
                      grepl("2.3.6", threatmed$Y8.2) | grepl("2.3.6", threatmed$Y8.2.1) | grepl("2.3.6", threatmed$Y8.2.2) | 
                      grepl("2.3.6", threatmed$Y8.3) | 
                      grepl("2.3.6", threatmed$Y8.4) | grepl("2.3.6", threatmed$Y8.4.1) | grepl("2.3.6", threatmed$Y8.4.2) | 
                      grepl("2.3.6", threatmed$Y8.5) | grepl("2.3.6", threatmed$Y8.5.1) | grepl("2.3.6", threatmed$Y8.5.2) | 
                      grepl("2.3.6", threatmed$Y8.6) |
                      grepl("2.3.6", threatmed$Y9.1) | grepl("2.3.6", threatmed$Y9.1.1) | grepl("2.3.6", threatmed$Y9.1.2) | grepl("2.3.6", threatmed$Y9.1.3) | 
                      grepl("2.3.6", threatmed$Y9.2) | grepl("2.3.6", threatmed$Y9.2.1) | grepl("2.3.6", threatmed$Y9.2.2) | grepl("2.3.6", threatmed$Y9.2.3) |
                      grepl("2.3.6", threatmed$Y10.1) | grepl("2.3.6", threatmed$Y10.2) | grepl("2.3.6", threatmed$Y10.3) |
                      grepl("2.3.6", threatmed$Y11.1) | grepl("2.3.6", threatmed$Y11.2) | grepl("2.3.6", threatmed$Y11.3) | grepl("2.3.6", threatmed$Y11.4) | grepl("2.3.6", threatmed$Y11.5) |
                      grepl("2.3.6", threatmed$Y12.1)
                      )
SkewSexnum <- nrow(SkewSex)
SkewSexper <-round((SkewSexnum/threatobsnum * 100), dig=2)

#Reduced reproductive success
RedRepSuc <-subset(threatmed, grepl("2.3.7", threatmed$Y1.1) | grepl("2.3.7", threatmed$Y1.2) | grepl("2.3.7", threatmed$Y1.3) |
                        grepl("2.3.7", threatmed$Y2.1) | grepl("2.3.7", threatmed$Y2.1.1) | grepl("2.3.7", threatmed$Y2.1.2) | grepl("2.3.7", threatmed$Y2.1.3) | grepl("2.3.7", threatmed$Y2.1.4) |
                        grepl("2.3.7", threatmed$Y2.2) | grepl("2.3.7", threatmed$Y2.2.1) | grepl("2.3.7", threatmed$Y2.2.2) | grepl("2.3.7", threatmed$Y2.2.3) |
                        grepl("2.3.7", threatmed$Y2.3) | grepl("2.3.7", threatmed$Y2.3.1) | grepl("2.3.7", threatmed$Y2.3.2) | grepl("2.3.7", threatmed$Y2.3.3) | grepl("2.3.7", threatmed$Y2.3.4) |
                        grepl("2.3.7", threatmed$Y2.4) | grepl("2.3.7", threatmed$Y2.4.1) | grepl("2.3.7", threatmed$Y2.4.2) | grepl("2.3.7", threatmed$Y2.4.3) |
                        grepl("2.3.7", threatmed$Y3.1) | grepl("2.3.7", threatmed$Y3.2) | grepl("2.3.7", threatmed$Y3.3) |
                        grepl("2.3.7", threatmed$Y4.1) | grepl("2.3.7", threatmed$Y4.2) | grepl("2.3.7", threatmed$Y4.3) | grepl("2.3.7", threatmed$Y4.4) |
                        grepl("2.3.7", threatmed$Y5.1) | grepl("2.3.7", threatmed$Y5.1.1) | grepl("2.3.7", threatmed$Y5.1.2) | grepl("2.3.7", threatmed$Y5.1.3) | grepl("2.3.7", threatmed$Y5.1.4) |
                        grepl("2.3.7", threatmed$Y5.2) | grepl("2.3.7", threatmed$Y5.2.1) | grepl("2.3.7", threatmed$Y5.2.2) | grepl("2.3.7", threatmed$Y5.2.3) | grepl("2.3.7", threatmed$Y5.2.4) | 
                        grepl("2.3.7", threatmed$Y5.3) | grepl("2.3.7", threatmed$Y5.3.1) | grepl("2.3.7", threatmed$Y5.3.2) | grepl("2.3.7", threatmed$Y5.3.3) | grepl("2.3.7", threatmed$Y5.3.4) |
                        grepl("2.3.7", threatmed$Y5.4) | grepl("2.3.7", threatmed$Y5.4.1) | grepl("2.3.7", threatmed$Y5.4.2) | grepl("2.3.7", threatmed$Y5.4.3) | grepl("2.3.7", threatmed$Y5.4.4) | grepl("2.3.7", threatmed$Y5.4.5) | grepl("2.3.7", threatmed$Y5.4.6) |
                        grepl("2.3.7", threatmed$Y6.1) | grepl("2.3.7", threatmed$Y6.2) | grepl("2.3.7", threatmed$Y6.3) |
                        grepl("2.3.7", threatmed$Y7.1) |  grepl("2.3.7", threatmed$Y7.1.1) | grepl("2.3.7", threatmed$Y7.1.2) | grepl("2.3.7", threatmed$Y7.1.3) |  
                        grepl("2.3.7", threatmed$Y7.2) |  grepl("2.3.7", threatmed$Y7.2.1) | grepl("2.3.7", threatmed$Y7.2.2) | grepl("2.3.7", threatmed$Y7.2.3) | grepl("2.3.7", threatmed$Y7.2.4) | grepl("2.3.7", threatmed$Y7.2.5) | grepl("2.3.7", threatmed$Y7.2.6) | grepl("2.3.7", threatmed$Y7.2.7) | grepl("2.3.7", threatmed$Y7.2.8) |  grepl("2.3.7", threatmed$Y7.2.9) |  grepl("2.3.7", threatmed$Y7.2.10) | grepl("2.3.7", threatmed$Y7.2.11) |
                        grepl("2.3.7", threatmed$Y7.3) |
                        grepl("2.3.7", threatmed$Y8.1) | grepl("2.3.7", threatmed$Y8.1.1) | grepl("2.3.7", threatmed$Y8.1.2) | 
                        grepl("2.3.7", threatmed$Y8.2) | grepl("2.3.7", threatmed$Y8.2.1) | grepl("2.3.7", threatmed$Y8.2.2) | 
                        grepl("2.3.7", threatmed$Y8.3) | 
                        grepl("2.3.7", threatmed$Y8.4) | grepl("2.3.7", threatmed$Y8.4.1) | grepl("2.3.7", threatmed$Y8.4.2) | 
                        grepl("2.3.7", threatmed$Y8.5) | grepl("2.3.7", threatmed$Y8.5.1) | grepl("2.3.7", threatmed$Y8.5.2) | 
                        grepl("2.3.7", threatmed$Y8.6) |
                        grepl("2.3.7", threatmed$Y9.1) | grepl("2.3.7", threatmed$Y9.1.1) | grepl("2.3.7", threatmed$Y9.1.2) | grepl("2.3.7", threatmed$Y9.1.3) | 
                        grepl("2.3.7", threatmed$Y9.2) | grepl("2.3.7", threatmed$Y9.2.1) | grepl("2.3.7", threatmed$Y9.2.2) | grepl("2.3.7", threatmed$Y9.2.3) |
                        grepl("2.3.7", threatmed$Y10.1) | grepl("2.3.7", threatmed$Y10.2) | grepl("2.3.7", threatmed$Y10.3) |
                        grepl("2.3.7", threatmed$Y11.1) | grepl("2.3.7", threatmed$Y11.2) | grepl("2.3.7", threatmed$Y11.3) | grepl("2.3.7", threatmed$Y11.4) | grepl("2.3.7", threatmed$Y11.5) |
                        grepl("2.3.7", threatmed$Y12.1)
                        )
RedRepSucnum <- nrow(RedRepSuc)
RedRepSucper <-round((RedRepSucnum/threatobsnum * 100), dig=2)

#Other
Oth <-subset(threatmed, grepl("2.3.8", threatmed$Y1.1) | grepl("2.3.8", threatmed$Y1.2) | grepl("2.3.8", threatmed$Y1.3) |
                  grepl("2.3.8", threatmed$Y2.1) | grepl("2.3.8", threatmed$Y2.1.1) | grepl("2.3.8", threatmed$Y2.1.2) | grepl("2.3.8", threatmed$Y2.1.3) | grepl("2.3.8", threatmed$Y2.1.4) |
                  grepl("2.3.8", threatmed$Y2.2) | grepl("2.3.8", threatmed$Y2.2.1) | grepl("2.3.8", threatmed$Y2.2.2) | grepl("2.3.8", threatmed$Y2.2.3) |
                  grepl("2.3.8", threatmed$Y2.3) | grepl("2.3.8", threatmed$Y2.3.1) | grepl("2.3.8", threatmed$Y2.3.2) | grepl("2.3.8", threatmed$Y2.3.3) | grepl("2.3.8", threatmed$Y2.3.4) |
                  grepl("2.3.8", threatmed$Y2.4) | grepl("2.3.8", threatmed$Y2.4.1) | grepl("2.3.8", threatmed$Y2.4.2) | grepl("2.3.8", threatmed$Y2.4.3) |
                  grepl("2.3.8", threatmed$Y3.1) | grepl("2.3.8", threatmed$Y3.2) | grepl("2.3.8", threatmed$Y3.3) |
                  grepl("2.3.8", threatmed$Y4.1) | grepl("2.3.8", threatmed$Y4.2) | grepl("2.3.8", threatmed$Y4.3) | grepl("2.3.8", threatmed$Y4.4) |
                  grepl("2.3.8", threatmed$Y5.1) | grepl("2.3.8", threatmed$Y5.1.1) | grepl("2.3.8", threatmed$Y5.1.2) | grepl("2.3.8", threatmed$Y5.1.3) | grepl("2.3.8", threatmed$Y5.1.4) |
                  grepl("2.3.8", threatmed$Y5.2) | grepl("2.3.8", threatmed$Y5.2.1) | grepl("2.3.8", threatmed$Y5.2.2) | grepl("2.3.8", threatmed$Y5.2.3) | grepl("2.3.8", threatmed$Y5.2.4) | 
                  grepl("2.3.8", threatmed$Y5.3) | grepl("2.3.8", threatmed$Y5.3.1) | grepl("2.3.8", threatmed$Y5.3.2) | grepl("2.3.8", threatmed$Y5.3.3) | grepl("2.3.8", threatmed$Y5.3.4) |
                  grepl("2.3.8", threatmed$Y5.4) | grepl("2.3.8", threatmed$Y5.4.1) | grepl("2.3.8", threatmed$Y5.4.2) | grepl("2.3.8", threatmed$Y5.4.3) | grepl("2.3.8", threatmed$Y5.4.4) | grepl("2.3.8", threatmed$Y5.4.5) | grepl("2.3.8", threatmed$Y5.4.6) |
                  grepl("2.3.8", threatmed$Y6.1) | grepl("2.3.8", threatmed$Y6.2) | grepl("2.3.8", threatmed$Y6.3) |
                  grepl("2.3.8", threatmed$Y7.1) |  grepl("2.3.8", threatmed$Y7.1.1) | grepl("2.3.8", threatmed$Y7.1.2) | grepl("2.3.8", threatmed$Y7.1.3) |  
                  grepl("2.3.8", threatmed$Y7.2) |  grepl("2.3.8", threatmed$Y7.2.1) | grepl("2.3.8", threatmed$Y7.2.2) | grepl("2.3.8", threatmed$Y7.2.3) | grepl("2.3.8", threatmed$Y7.2.4) | grepl("2.3.8", threatmed$Y7.2.5) | grepl("2.3.8", threatmed$Y7.2.6) | grepl("2.3.8", threatmed$Y7.2.7) | grepl("2.3.8", threatmed$Y7.2.8) |  grepl("2.3.8", threatmed$Y7.2.9) |  grepl("2.3.8", threatmed$Y7.2.10) | grepl("2.3.8", threatmed$Y7.2.11) |
                  grepl("2.3.8", threatmed$Y7.3) |
                  grepl("2.3.8", threatmed$Y8.1) | grepl("2.3.8", threatmed$Y8.1.1) | grepl("2.3.8", threatmed$Y8.1.2) | 
                  grepl("2.3.8", threatmed$Y8.2) | grepl("2.3.8", threatmed$Y8.2.1) | grepl("2.3.8", threatmed$Y8.2.2) | 
                  grepl("2.3.8", threatmed$Y8.3) | 
                  grepl("2.3.8", threatmed$Y8.4) | grepl("2.3.8", threatmed$Y8.4.1) | grepl("2.3.8", threatmed$Y8.4.2) | 
                  grepl("2.3.8", threatmed$Y8.5) | grepl("2.3.8", threatmed$Y8.5.1) | grepl("2.3.8", threatmed$Y8.5.2) | 
                  grepl("2.3.8", threatmed$Y8.6) |
                  grepl("2.3.8", threatmed$Y9.1) | grepl("2.3.8", threatmed$Y9.1.1) | grepl("2.3.8", threatmed$Y9.1.2) | grepl("2.3.8", threatmed$Y9.1.3) | 
                  grepl("2.3.8", threatmed$Y9.2) | grepl("2.3.8", threatmed$Y9.2.1) | grepl("2.3.8", threatmed$Y9.2.2) | grepl("2.3.8", threatmed$Y9.2.3) |
                  grepl("2.3.8", threatmed$Y10.1) | grepl("2.3.8", threatmed$Y10.2) | grepl("2.3.8", threatmed$Y10.3) |
                  grepl("2.3.8", threatmed$Y11.1) | grepl("2.3.8", threatmed$Y11.2) | grepl("2.3.8", threatmed$Y11.3) | grepl("2.3.8", threatmed$Y11.4) | grepl("2.3.8", threatmed$Y11.5) |
                  grepl("2.3.8", threatmed$Y12.1)
)
Othnum <- nrow(Oth)
Othper <-round((Othnum/threatobsnum * 100), dig=2)

## --------------------------------------------------------------------

# Combine stressors from threats

## --------------------------------------------------------------------

# Create data:

stressor = c("Ecosystem Conversion", "Ecosystem Degradation", "Indirect Ecosystem Effects", "Species Mortality", "Species Disturbance", "Hybridisation", "Competition", "Reduced Reproductive Success", "Other")
value = c(EcoConper, EcoDegper, IndirEcoEffper, SpecMortper, SpecDistper, Hybridper, Compper, RedRepSucper, Othper)
stressdata <- data.frame(stressor, value)
  
  #plot lollipop chart
data <- stressdata %>%
  arrange(value) %>%
  mutate(stressor = factor(stressor, stressor))

ggplot(data, aes(x=stressor, y=value)) +
  geom_segment( aes(x=stressor, xend=stressor, y=0, yend=value)) +
  geom_point( aes(x = stressor, y = value), size=5, color="orange" ) +
  coord_flip() +
  theme_light(base_size = 20) +
  geom_text(aes(label=round(value, digits = 1), hjust=-.5), cex = 6) +
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
  expand_limits(y = 85)

##------------------------------------------------------------------------------

#Fisher's Exact Test

##------------------------------------------------------------------------------

#eco conversion vs species mortality
fisher.test(matrix(c(EcoConnum, SpecMortnum, (threatobsnum - EcoConnum), (threatobsnum - SpecMortnum)), ncol = 2))

#eco degradation vs species mortality
fisher.test(matrix(c(EcoDegnum, SpecMortnum, (threatobsnum - EcoDegnum), (threatobsnum - SpecMortnum)), ncol = 2))
