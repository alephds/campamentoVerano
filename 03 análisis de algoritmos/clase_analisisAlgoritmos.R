# Análisis de algoritmos

# Paso 1: Primera versión algoritmo
# A esto se le conoce como "hard code". 
datos <- read.csv("./03audi.csv")
datos_subcojunto <- datos[datos$model=="A1",]
summary(datos_subcojunto$price)
hist(datos_subcojunto$price)
boxplot(datos_subcojunto$price)

# paso 2: Una "mejor" versión
# Acá, estoy filtrando los autos de "car_model"
datos <- read.csv("./03audi.csv")
car_model <- "A3"

datos_subcojunto <- datos[datos$model==car_model,]
resultados <- summary(datos_subcojunto$price)
resultados <- data.frame(
  indicador=names(resultados),
  valor=as.numeric(resultados)
)

write.csv(resultados, paste0(car_model,"resultados.csv"))

png(paste0(car_model,"histograma.png"))
hist(datos_subcojunto$price)
dev.off()

png(paste0(car_model,"boxplot.png"))
boxplot(datos_subcojunto$price)
dev.off()

# Funciones en R

min(c(1,2,3,4,5))
max(c(1,2,3,4,5))

numeros <- c(1,2,3,4,5)

min(numeros)
max(numeros)

# Una función, es una cajita negra, que hace cosas con lo que le das

sumar_dos_numeros <- function(a,b){
  return(a+b)
}

sumar_dos_numeros(a=10,b=5000)

whatever <- function(x){
  resultado <- x * 1000
  return(resultado)
}

whatever(x=9)

# paso3 : Nuestro algoritmo, es una función

algoritmo <- function(car_model){
  datos <- read.csv("./03audi.csv") # Piensa que esto, se puede sustituir con una
  # conexión a base de datos. 
  
  datos_subcojunto <- datos[datos$model==car_model,]
  resultados <- summary(datos_subcojunto$price)
  resultados <- data.frame(
    indicador=names(resultados),
    valor=as.numeric(resultados)
  )
  
  write.csv(resultados, paste0(car_model,"resultados.csv"))
  
  png(paste0(car_model,"histograma.png"))
  hist(datos_subcojunto$price)
  dev.off()
  
  png(paste0(car_model,"boxplot.png"))
  boxplot(datos_subcojunto$price)
  dev.off()
  
  return(resultados)
}

algoritmo("A1")

# Ciclo for
# Equis es mi iterador
# 1:10 es mi iterable
for(x in 1:10){
  print(x)
}

for(i in c("A1","A3","R8")){
  algoritmo(i)
}

# Versión no legible
library(dplyr)

algoritmo <- function(car_model){
  datos <- read.csv("./03audi.csv") %>% filter(model==car_model)
  estadisticas  <- as.data.frame(as.list(summary(datos$price)))
  png(paste0(car_model,"_histograma.png"))
  hist(datos$price)
  dev.off()
  png(paste0(car_model,"_boxplot.png"))
  boxplot(datos$price)
  dev.off()
  estadisticas %>% write.csv(paste0(car_model, "_Estadisticas.csv"))
  return(estadisticas)
}


