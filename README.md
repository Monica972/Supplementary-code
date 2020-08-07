#####################################################################################################################

THIS DATA PACKAGE ACCOMPANIES:

Short, Monica L., and Darimont, Chris T. 2020. Global synthesis reveals that ecosystem degradation poses the primary threat to the world’s medicinal animals.

Please contact Monica Short (monicashort_22@hotmail.co) with questions about the dataset or if you find any errors in the file. Please let us know if you use the data and we would be happy to provide assistance. 

This data package contains the original dataset as well as R code used to generate figures and analysis.

#####################################################################################################################
CONTENTS

1. Short et al - README.txt---This file, including a description of variables.

2. Shortdata.csv--A data file used in all of the figures and analyses that appear in the paper. 

3. Short et al - Supplementary code.r — Includes code for generating the figures and analyses in the manuscript.

#####################################################################################################################

VARIABLE NAMES AND DESCRIPTIONS

FILE: Shortdata.csv

VARIABLES:

scientific_name: Indicates species scientific name

Source: Code for literature source of medicinal species

kingdom_name: Species kingdon

phylum_name: Species phylum

class_name: Species class

order_name: Species order

family_name: Species family

genus_name: Species genus

redListCategoryTitle: Red List category as defined by the IUCN

redListCategoryCode: Code for red list category 

useTradeId..19: If TRUE, species is used or traded for human food

useTradeId..23: If TRUE, species is used or traded for pets/display animals

useTradeId..30: If TRUE, species is used or traded for medicine

useTradeId..26: If TRUE, species is used or traded for establishing ex-situ

useTradeId..27: If TRUE, species is used or traded for other

useTradeId..20: If TRUE, species is used or traded for wearing apparel, accessories

useTradeId..32: If TRUE, species is used or traded for manufacturing chemicals

useTradeId..24: If TRUE, species is used or traded for research

useTradeId..29: If TRUE, species is used or traded for animal food

useTradeId..33: If TRUE, species is used or traded for other chemicals

useTradeId..25: If TRUE, species is used or traded for sport hunting/specimen collection

useTradeId..28: If TRUE, species is used or traded for unknown purposes

useTradeId..22: If TRUE, species is used or traded for handicrafts, jewellery etc

useTradeId..21: If TRUE, species is used or traded for other households goods

useTradeId..35: If TRUE, species is used or traded for fibre

useTradeId..36: If TRUE, species is used or traded for construction or structural materials

useTradeId..34: If TRUE, species is used or traded for fuels

useTradeId..31: If TRUE, species is used or traded for poisons

Terrestrial: If TRUE, taxon inhabits terrestrial systems

Freshwater: If TRUE, taxon inhabits freshwater systems

Marine: If TRUE, taxon inhabits marine systems

hasHumanExploitationThreat: IF TRUE, species is subject to any of the following threats "Hunting & collecting terrestrial animals", "Intentional use (species being assessed is the target)", "Fishing & harvesting aquatic resources", "Intentional use: subsistence/small scale (species being assessed is the target [harvest]", "Intentional use: large scale (species being assessed is the target)[harvest]". below)

Population trend: Population trend of species, if known

Circ.Resp: Medicinal species used to treat ailments related to the circulatory or respratory system

Digest.Excre: Medicinal species used to treat ailments related to the digestive or excretory system

Endocrine: Medicinal species used to treat ailments related to the endocrine system

Integum.Exoc: Medicinal species used to treat ailments related to the integumentary or exocrine system

Immune.Lymph: Medicinal species used to treat ailments related to the immune or lymphatic system

Musc.Skel: Medicinal species used to treat ailments related to the muscular or skeletal system

Nervous: Medicinal species used to treat ailments related to the nervous system

Renal.Urin: Medicinal species used to treat ailments related to the renal or urinary system

Reprod: Medicinal species used to treat ailments related to the reproductive system

Spiritual: Medicinal species used to treat spiritual ailments

Symptoms: Medicinal species used to treat symptoms 

External.Cause: Medicinal species used to treat ailments resulting from external causes

MedSourceLit: Medicinal use of species obtained from the literature

MedIUCN: Medicinal use of species defined by the IUCN

Cancer: Medicinal species used to treat ailments related to cancer

Mental.behav: Medicinal species used to treat ailments related to the mental or behavioural system

Visual.system: Medicinal species used to treat ailments related to the visual system

populationTrendTitle: Population trend of the species.

X1: Threat from "Residential & commercial development”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X1.1: Threat from "Housing & urban areas”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X1.2: Threat from "Commercial & industrial areas"”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X1.3: Threat from "Tourism & recreation areas”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2: Threat from "Agriculture & aquaculture”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.1: Threat from "Annual & perennial non-timber crops”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.1.1: Threat from "Shifting agriculture”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.1.2: Threat from "Small-holder farming”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.1.3: Threat from "Agro-industry farming”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.1.4: Threat from "Scale Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.2: Threat from "Wood & pulp plantations”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.2.1: Threat from "Small-holder plantations”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated 

X2.2.2: Threat from "Agro-industry plantations”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.2.3: Threat from "Scale Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.3: Threat from "Livestock farming & ranching”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.3.1: Threat from "Nomadic grazing”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.3.2: Threat from "Small-holder grazing, ranching or farming”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.3.3: Threat from "Agro-industry grazing, ranching or farming”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.3.4: Threat from "Scale Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.4: Threat from "Marine & freshwater aquaculture”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.4.1: Threat from "Subsistence/artisanal aquaculture”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.4.2: Threat from "Industrial aquaculture”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X2.4.3: Threat from "Scale Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X3: Threat from "Energy production & mining”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X3.1: Threat from "Oil & gas drilling”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X3.2: Threat from "Mining & quarrying”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X3.3: Threat from "Renewable energy”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X4: Threat from "Transportation & service corridors”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X4.1: Threat from "Roads & railroads”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X4.2: Threat from "Utility & service lines”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X4.3: Threat from "Shipping lanes”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X4.4: Threat from "Flight paths”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5: Threat from "Biological resource use”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.1: Threat from "Hunting & collecting terrestrial animals”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.1.1: Threat from "Intentional use (species being assessed is the target)". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.1.2: Threat from "Unintentional effects (species being assessed is not the target)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.1.3: Threat from "Persecution/control”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.1.4: Threat from "Motivation Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.2: Threat from "Gathering terrestrial plants”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.2.1: Threat from "Intentional use (species being assessed is the target)". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.2.2: Threat from "Unintentional effects (species being assessed is not the target”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.2.3: Threat from "Persecution/control”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.2.4: Threat from "Motivation Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.3: Threat from "Logging & wood harvesting”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.3.1: Threat from "Intentional use: subsistence/small scale (species being assessed is the target [harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.3.2: Threat from "Intentional use: large scale (species being assessed is the target)[harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.3.3: Threat from "Unintentional effects: subsistence/small scale (species being assessed is not the target)[harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.3.4: Threat from "Unintentional effects: large scale (species being assessed is not the target)[harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4: Threat from "Fishing & harvesting aquatic resources”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.1: Threat from "Intentional use: subsistence/small scale (species being assessed is the target [harvest]". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.2: Threat from "Intentional use: large scale (species being assessed is the target)[harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.3: Threat from "Unintentional effects: subsistence/small scale (species being assessed is not the target)[harvest]". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.4: Threat from "Unintentional effects: large scale (species being assessed is not the target)[harvest]”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.5: Threat from "Persecution/control”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X5.4.6: Threat from "Motivation Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X6: Threat from "Human intrusions & disturbance”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X6.1: Threat from "Recreational activities”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X6.2: Threat from "War, civil unrest & military exercises". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X6.3: Threat from "Work & other activities”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7: Threat from "Natural system modifications”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.1: Threat from "Fire & fire suppression”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.1.1: Threat from "Increase in fire frequency/intensity”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.1.2: Threat from "Suppression in fire frequency/intensity”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.1.3: Threat from "Trend Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2: Threat from "Dams & water management/use”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.1: Threat from "Abstraction of surface water (domestic use)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.2: Threat from "Abstraction of surface water (commercial use)"”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.3: Threat from "Abstraction of surface water (agricultural use)"”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.4: Threat from "Abstraction of surface water (unknown use)"”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.5: Threat from "Abstraction of ground water (domestic use)". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.6: Threat from "Abstraction of ground water (commercial use)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.7: Threat from "Abstraction of ground water (agricultural use)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.8: Threat from "Abstraction of ground water (unknown use)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.9: Threat from "Small dams”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.10: Threat from "Large dams”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.2.11: Threat from "Dams (size unknown)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X7.3: Threat from "Other ecosystem modifications”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8: Threat from "Invasive & other problematic species, genes & diseases”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.1: Threat from "Invasive non-native/alien species/diseases”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.1.1: Threat from "Unspecified species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.1.2: Threat from "Named species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.2: Threat from "Problematic native species/diseases”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.2.1: Threat from "Unspecified species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.2.2: Threat from "Named species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.3: Threat from "Introduced genetic material”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.4: Threat from "Problematic species/diseases of unknown origin”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.4.1: Threat from "Unspecified species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.4.2: Threat from "Named species”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.5: Threat from "Viral/prion-induced diseases”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.5.1: Threat from "Unspecified 'species' (disease)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.5.2: Threat from "Named 'species' (disease)”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X8.6: Threat from "Diseases of unknown cause". Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9: Threat from "Pollution”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.1: Threat from "Domestic & urban waste water”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.1.1: Threat from "Sewage”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.1.2: Threat from "Run-off”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.1.3: Threat from "Type Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.2: Threat from "Industrial & military effluents”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.2.1: Threat from "Oil spills”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.2.2: Threat from "Seepage from mining”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X9.2.3: Threat from "Type Unknown/Unrecorded”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X10: Threat from "Geological events”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X10.1: Threat from "Volcanoes”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X10.2: Threat from "Earthquakes/tsunamis”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X10.3: Threat from "Avalanches/landslides”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11: Threat from "Climate change & severe weather”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11.1: Threat from "Habitat shifting & alteration”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11.2: Threat from "Droughts”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11.3: Threat from "Temperature extremes”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11.4: Threat from "Storms & flooding”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X11.5: Threat from "Other impacts”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X12: Threat from "Other options”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

X12.1: Threat from "Other threat”. Values include: "No/Negligable Impact: 0", "No/Negligable Impact: 1", "No/Negligable Impact: 2", "Low Impact: 3", "Low Impact: 4", "Low Impact: 5", "Medium Impact: 6", "Medium Impact: 7", "High Impact: 8", "High Impact: 9", "Unknown", "Past Impact", "list()", "(Not specified)". list() species had such threat but impact is not indicated

Y1: Threat from "Residential & commercial development”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                        

Y1.1: Threat from "Housing & urban areas”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y1.2:Threat from "Commercial & industrial areas"”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y1.3: Threat from "Tourism & recreation areas”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2: Threat from "Agriculture & aquaculture”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                        

Y2.1: Threat from "Annual & perennial non-timber crops”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.1.1: Threat from "Shifting agriculture”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.1.2: Threat from "Small-holder farming”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.1.3: Threat from "Agro-industry farming”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.1.4: Threat from "Scale Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.2: Threat from "Wood & pulp plantations”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.2.1: Threat from "Small-holder plantations”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"     

Y2.2.2: Threat from "Agro-industry plantations”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.2.3: Threat from "Scale Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.3: Threat from "Livestock farming & ranching”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.3.1: Threat from "Nomadic grazing”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.3.2: Threat from "Small-holder grazing, ranching or farming”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.3.3: Threat from "Agro-industry grazing, ranching or farming”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.3.4: Threat from "Scale Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.4: Threat from "Marine & freshwater aquaculture”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"

Y2.4.1: Threat from "Subsistence/artisanal aquaculture”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.4.2: Threat from "Industrial aquaculture”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y2.4.3: Threat from "Scale Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y3: Threat from "Energy production & mining”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y3.1: Threat from "Oil & gas drilling”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"     

Y3.2: Threat from "Mining & quarrying”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y3.3: Threat from "Renewable energy”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y4: Threat from "Transportation & service corridors”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"   

Y4.1: Threat from "Roads & railroads”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y4.2: Threat from "Utility & service lines”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y4.3: Threat from "Shipping lanes”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y4.4: Threat from "Flight paths”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"        

Y5: Threat from "Biological resource use”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"   

Y5.1: Threat from "Hunting & collecting terrestrial animals”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"    

Y5.1.1: Threat from "Intentional use (species being assessed is the target)". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"      

Y5.1.2: Threat from "Unintentional effects (species being assessed is not the target)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"  

Y5.1.3: Threat from "Persecution/control”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"       

Y5.1.4: Threat from "Motivation Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"  

Y5.2: Threat from "Gathering terrestrial plants”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"     

Y5.2.1: Threat from "Intentional use (species being assessed is the target)". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"    

Y5.2.2: Threat from "Unintentional effects (species being assessed is not the target”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"  

Y5.2.3: Threat from "Persecution/control”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                 

Y5.2.4: Threat from "Motivation Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"  

Y5.3: Threat from "Logging & wood harvesting”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"    

Y5.3.1: Threat from "Intentional use: subsistence/small scale (species being assessed is the target [harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"              

Y5.3.2: Threat from "Intentional use: large scale (species being assessed is the target)[harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"   

Y5.3.3: Threat from "Unintentional effects: subsistence/small scale (species being assessed is not the target)[harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.3.4:Threat from "Unintentional effects: large scale (species being assessed is not the target)[harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4: Threat from "Fishing & harvesting aquatic resources”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4.1: Threat from "Intentional use: subsistence/small scale (species being assessed is the target [harvest]". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4.2: Threat from "Intentional use: large scale (species being assessed is the target)[harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4.3: Threat from "Unintentional effects: subsistence/small scale (species being assessed is not the target)[harvest]". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4.4: Threat from "Unintentional effects: large scale (species being assessed is not the target)[harvest]”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"               

Y5.4.5: Threat from "Persecution/control”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y5.4.6: Threat from "Motivation Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y6: Threat from "Human intrusions & disturbance”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y6.1: Threat from "Recreational activities”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y6.2: Threat from "War, civil unrest & military exercises". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y6.3: Threat from "Work & other activities”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7: Threat from "Natural system modifications”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.1: Threat from "Fire & fire suppression”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.1.1: Threat from "Increase in fire frequency/intensity”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.1.2: Threat from "Suppression in fire frequency/intensity”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.1.3: Threat from "Trend Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2: Threat from "Dams & water management/use”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.1: Threat from "Abstraction of surface water (domestic use)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.2: Threat from "Abstraction of surface water (commercial use)"”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.3: Threat from "Abstraction of surface water (agricultural use)"”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.4: Threat from "Abstraction of surface water (unknown use)"”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.5: Threat from "Abstraction of ground water (domestic use)". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"

Y7.2.6: Threat from "Abstraction of ground water (commercial use)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.7: Threat from "Abstraction of ground water (agricultural use)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.8: Threat from "Abstraction of ground water (unknown use)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.9: Threat from "Small dams”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                    

Y7.2.10: Threat from "Large dams”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.2.11: Threat from "Dams (size unknown)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y7.3: Threat from "Other ecosystem modifications”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8: Threat from "Invasive & other problematic species, genes & diseases”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.1: Threat from "Invasive non-native/alien species/diseases”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.1.1: Threat from "Unspecified species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.1.2: Threat from "Named species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.2: Threat from "Problematic native species/diseases”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.2.1: Threat from "Unspecified species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.2.2: Threat from "Named species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.3: Threat from "Introduced genetic material”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.4: Threat from "Problematic species/diseases of unknown origin”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.4.1: Threat from "Unspecified species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.4.2: Threat from "Named species”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.5: Threat from "Viral/prion-induced diseases”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.5.1: Threat from "Unspecified 'species' (disease)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.5.2: Threat from "Named 'species' (disease)”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y8.6: Threat from "Diseases of unknown cause". With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9: Threat from "Pollution”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.1: Threat from "Domestic & urban waste water”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.1.1: Threat from "Sewage”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.1.2: Threat from "Run-off”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.1.3: Threat from "Type Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.2: Threat from "Industrial & military effluents”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.2.1: Threat from "Oil spills”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.2.2: Threat from "Seepage from mining”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y9.2.3: Threat from "Type Unknown/Unrecorded”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y10: Threat from "Geological events”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y10.1: Threat from "Volcanoes”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y10.2: Threat from "Earthquakes/tsunamis”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y10.3: Threat from "Avalanches/landslides”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11: Threat from "Climate change & severe weather”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11.1: Threat from "Habitat shifting & alteration”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11.2: Threat from "Droughts”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11.3: Threat from "Temperature extremes”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11.4: Threat from "Storms & flooding”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y11.5: Threat from "Other impacts”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       

Y12: Threat from "Other options”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"                       
Y12.1: Threat from "Other threat”. With associated stressors: "1.1” <- "Ecosystem conversion", "1.2" <- "Ecosystem degradation", "1.3" <- "Indirect ecosystem effects", "2.1" <- "Species mortality", "2.2" <- "Species disturbance", "2.3.1" <- "Hybridisation", "2.3.2" <- "Competition", "2.3.3" <- "Loss of mutualism", "2.3.4" <- "Loss of pollinator", "2.3.5" <- "Inbreeding", "2.3.6" <- "Skewed sex ratios", "2.3.7" <- "Reduced reproductive success", "2.3.8" <- "Other"

#####################################################################################################################

ACKNOWLEDGEMENTS

This database was compiled by Monica Short using IUCN Red List data and published literature. For funsing, MS thanks the University of Victoria’s Jamie Cassels Undergraduate Research Award and National Science and Engineering Research Council Undergraduate Student Research Award. CTD acknowledges NSERC Discovery Grant.
