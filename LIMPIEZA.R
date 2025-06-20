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
vis_miss(datos)
str(datos)

#variable title
moda_title<- names(sort(table(datos$title), decreasing=TRUE))[1]
datos$title[is.na(datos$title)]<- moda_title
#variable country
moda_country<- names(sort(table(datos$country), decreasing=TRUE))[1]
datos$country[is.na(datos$country)]<- moda_country
#variable director
moda_director<- names(sort(table(datos$director), decreasing=TRUE))[1]
datos$director[is.na(datos$director)]<- moda_director
#variable type
moda_type<- names(sort(table(datos$type), decreasing=TRUE))[1]
datos$type[is.na(datos$type)]<- moda_type
#variable rating
moda_rating<- names(sort(table(datos$rating), decreasing=TRUE))[1]
datos$rating[is.na(datos$rating)]<- moda_rating
#variable listed_in
moda_listed_in<- names(sort(table(datos$listed_in), decreasing=TRUE))[1]
datos$listed_in[is.na(datos$listed_in)]<- moda_listed_in
#variable show_id
moda_show_id<- names(sort(table(datos$show_id), decreasing=TRUE))[1]
datos$show_id[is.na(datos$show_id)]<- moda_show_id
#variable date_added
moda_date_added<- names(sort(table(datos$date_added), decreasing=TRUE))[1]
datos$date_added[is.na(datos$date_added)]<- moda_date_added
#variable duration
moda_duration<- names(sort(table(datos$duration), decreasing=TRUE))[1]
datos$duration[is.na(datos$duration)]<- moda_duration

#variable release_year(la única numérica)
mediana_release_year<- median(datos$release_year, na.rm=TRUE)
datos$release_year[is.na(datos$release_year)]<- mediana_release_year

vis_miss(datos)
















