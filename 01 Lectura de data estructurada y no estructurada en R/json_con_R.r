
miLista <- list(
  "persona1" = "jose manuel",
  "persona2" = "Dara"
)


miLista$persona1

mi_segunda_lista <- list(
  "numeros" = c(1,2,3,4,5),
  "datos" = cars
)

mi_segunda_lista$numeros

mi_segunda_lista$datos


mi_lista_alumnos <- list(
  "uno" = list(
    "nombre"="jose manuel",
    "edad" = 35
  ),
  "dos" = list(
    "nombre"="dara",
    "deportes"="natacion"
  )
)

mi_lista_alumnos$uno$edad

mi_lista_alumnos$dos$nombre

install.packages("rjson")

library(rjson)

mis_datos <- fromJSON(file="https://api.spacexdata.com/v3/capsules")

mis_datos[[1]]$capsule_serial

mis_datos[[3]]$capsule_serial



