# Reading in packages
library(tidyverse)
library(janitor)
library(lubridate) ##handling dates
library(readxl)
library(ggbeeswarm)
library(naniar)


#read in data and clean names
setwd("/Users/karishmasrikanth/Google Drive/Fourth Year/Second Semester/SARC 5400 - Data Visualization/Final Assignment/Data")

country_prep <- read_csv("AIDSVu_County_PrEP_2018-1.csv")
country_soh <- read_csv("AIDSVu_County_SDOH_2018.csv")



county <- left_join(country_prep, country_soh, by = c("GEO ID"))

write.csv(county, "counties.csv")


