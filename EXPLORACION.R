library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readr)
library(smoothmest)
library(VIM)
library(plumber)

datos<- read.csv("C:/Users/aiala/Downloads/netflix_recuperacion.csv")
#3A
summary(datos)
sd_release_year<- sd(datos$release_year, na.rm = TRUE)
#3B
length(unique(datos$listed_in))

