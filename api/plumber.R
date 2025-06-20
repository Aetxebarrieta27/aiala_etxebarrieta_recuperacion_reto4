library(plumber)

#* @apiTitle API Examen
#* @apiDescription Elige una variable

#* Echo back the input
#* @param release_year
#* @get /echo
function(release_year){
  release_year<- as.numeric(release_year)
  resultado<- datos%>%
    if variable 
    select(release_year)
  return(resultado)
}

r<- plumb("plumber.R")
r$run(port=8000)