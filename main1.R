species_list <- read.table("Species_list.txt", header = T, sep = "\t")
# species-wise information table 
# Species habit coded as
# S = shrub
#L = liana
#T1 = tree with potential height < 8 m
#T2 = tree with potential height ≥ 8 and < 16 m
#T3 = tree with potential height ≥16 and < 24 m
#T4 = tree with potential height ≥ 24 and < 34 m
#T5 = tree with potential height ≥ 34 m
#
# phenological feature of species coded as:
# E = evergreen
# D = deciduous 
#
# WGEnd binary code for species endemic to the Western Ghats of India:
# 1 = endemic to the WG
# 0 = non-endemic to the WG

macroplot <- read.table("Macroplot_data_Rev.txt", header = T, sep = "\t") # correct version
# Within each macroplot, all live individual trees and lianas that were equal and above 10 cm girth at breast height (gbh) 
# were tagged with serial numbers, botanically identified, and measured.
# individual botanical identifications and girth data for 61965 individuals of 400 tree 
# and liana species (including one unidentified category) with gbh > 10 cm in 96 1-ha macroplots 
# TreeGirth1 girth measurement for the largest stem with gbh ≥ 10 cm (in cm rounded to unity)
#
# TreeGirth2 to TreeGirth5 additional girth measurement in decreasing order 
# for extra-stems with gbh ≥ 10 cm (in cm rounded to unity); value of 0 indicates that the stem doesn't exist 

microplot <- read.table("Microplot_data.txt", header = T, sep = "\t")
# SpCode alphanumeric species code
# Columns 2 to 97 alphanumeric sites codes corresponding to variable PlotID 
# basically a species abundance matrix

site_variables <- read.table("Site_variables.txt", header = T, sep = "\t")
# PlotID microplot ID

# CanoHt - visual estimation of average canopy height in the macroplots (in m)
# CanoCov - visual estimation of percentage of canopy cover in the macroplots
# Strata - visual estimation of the number of forest strata observed in the macroplots
# Rain -  mean annual rainfall (in mm/yr) interpolated at each site from 
# 336 meteorological stations located in the neighbourhood and followed over a period of at least 10 years (see II.B.3)
# DryMo - length of the dry season (in mo) at the site derived from a geo-referenced digital version of the 1:500,000 scale bioclimatic map 
# ForestType - code for potential climax forest type according to Pascal
# Soil - code for soil
# StrucIntegr class of structural integrity from visual assessement of plot physiognomy, 
# 1 = slightly disturbed,  2 = moderately disturbed, 3 = highly disturbed
# FlorIntegr - class of floristic integrity from the percentage of individuals belonging to deciduous species
# 1 = less than 33%, 2 = between 33 and 66%, 3 = more than 66%
