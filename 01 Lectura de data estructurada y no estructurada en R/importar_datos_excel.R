
#Curso R 

#Directorio de trabajo 

#instalamos los paquetes
install.packages("openxlsx")
install.packages("RMySQL")

#cargamos las dependencias 
library(RMySQL)
library(openxlsx)

#Función read.xlsx
?read.xlsx()

#Requisitos del excel, estar en forma tabular (limpio)
#leemos el archivo excel 
read.xlsx("netflix_list.xlsx")# leer el excel 
read.xlsx("netflix_list.xlsx", 2) #leer una hoja en específico
read.xlsx("netflix_list.xlsx", sheet=2, col_names = TRUE)

#lo podemos poner el un objeto 
datos <- read.xlsx("netflix_list.xlsx")


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

tabla <- dbReadTable(con, "netflix_list")

#mandar una consulta para obtener solo una columna
my_table <- dbGetQuery(con, "SELECT popular_rank, count(*) as rank FROM netflix_list") #me cuenta los registros
my_table

my_table2 <- dbGetQuery(con, "SELECT popular_rank FROM netflix_list") #me trae una columna 
my_table2

dbDisconnect(con) #para desconectarse

#Ahora hagamos un excel con lo que ya trabajamos

#Función 
?write.xlsx()

write.xlsx(my_table2, "nuevoArchivo") 







