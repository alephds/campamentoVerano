
getwd()
setwd('C:/Users/Andres M/Documents/Aleph/Intro R/')
setwd('Aleph/Intro R/')

mi_variable <- 12
mi_variable <- 15+16

print(mi_variable)
mi_variable

mi_variable <- 13L
class(mi_variable)
mi_variable <- T
class(mi_variable)
mi_variable <- 12
class(mi_variable)
mi_variable <- 3+2i
class(mi_variable)
mi_variable <- '235'
class(mi_variable)

c(1,2,3)
mi_vector <- c('unos'=1,'dos'=2,'tres'=3)
mi_vector[3]
mi_vector['tres']
mi_vector[c(1,3)]
mi_vector[c('unos','tres')]
mi_vector[c(T,F,F)]

list(1,'DOS',c('MI','VECTOR'))
mi_lista <- list('uno'=1,'dos'='DOS','tres'=c('MI','VECTOR'))
mi_lista[[3]]
mi_lista[['tres']]
mi_lista[c(1,3)]
mi_lista[c('uno','tres')]
mi_lista[c(F,T,F)]
mi_lista$tres

data.frame(c(1,2,3),c('a','b','c'))
mi_df <- data.frame('numero'=c(1,2,3),'letra'=c('a','b','c'))
mi_df[3,2]
mi_df[3,'letra']
mi_df[,'letra']
mi_df[c(2,3),c(1,2)]

peso <- 80
altura <- 1.67
imc <- peso/(altura*altura)
imc

60
72
90

far1 <- 60
cel1 <- (far1-32)*5/9
cel1
far2 <- 72
cel2 <- (far2-32)*5/9
cel2
far3 <- 90
cel3 <- (far3-32)*5/9
cel3


temperaturas <- c(60,72,90)
celsius <- (temperaturas-32)*5/9
celsius

aumento <- c(20,30,40)
temperaturas+aumento

temperaturas>80
temperaturas==60

mi_df
mi_df[mi_df$letra%in%c('a','c'),]

