

#Directorio de trabajo 
#poner el directorio de trabajo en el botón de session, to source file location

#instalamos los paquetes
install.packages("openxlsx")
install.packages("RMySQL")
install.packages("DBI")

#cargamos las dependencias 
library(DBI)
library(RMySQL)
library(openxlsx)

#Función read.xlsx
?read.xlsx()

#Requisitos del excel, estar en forma tabular (limpio)
#leemos el archivo excel 
#lo podemos poner el un objeto 

prueba1<-read.xlsx("netflix_list.xlsx")# leer el excel 
prueba2<-read.xlsx("netflix_list.xlsx", 2) #leer una hoja en específico

#Mysql 
#Funciones
?dbConnect
?dbListTables
?dbReadTable
?dbDisconnect
?dbGetQuery

#Para hacer la conexión con Mysql
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "ciminfom_clase_1", 
                 host = "153.92.215.83",
                 user = "ciminfom_alephds",
                 password = "AlephDS#040722!")
dbListTables(con) #me dice qué tablas tengo ahí 

tabla <- dbReadTable(con, "netflix_list") #me lee la tabla que le estoy pidiendo

#mandar una consulta para obtener solo una columna
my_table <- dbGetQuery(con, "SELECT popular_rank, count(*) as rank FROM netflix_list") #me cuenta los registros
my_table #aquí observamos nuestro objeto 

my_table2 <- dbGetQuery(con, "SELECT popular_rank FROM netflix_list") #me trae una columna 
my_table2 #aquí observamos nuestro objeto 

dbDisconnect(con) #para desconectarse

#Ahora hagamos un excel con lo que ya trabajamos

#Función 
?write.xlsx #para hcer un excel 
?write.csv #para hacer un csv

write.xlsx(my_table2, "nombre_del_archivo.xlsx") #nos crea un archivo excel de nuestros datos que están en  my_table2 
write.xlsx(my_table2, "nombre_del_archivo.xlsx",overwrite = TRUE) #escribe sobre el archivo que teníamos, nuestros datos que están en  my_table2
write.csv(my_table2, "nombre_del_archivo.csv")#nos crea un archivo csv de nuestros datos que están en  my_table2






