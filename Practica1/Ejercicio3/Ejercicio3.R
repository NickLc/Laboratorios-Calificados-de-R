#Nombre : Lázaro Camasca Edson Nick cod 20160468E 
#Respuesta 3: 

#Pregunta 3.(a)
sexo <- c("M", "F")
partido <- c("Nacional", "Laboral", "Verdes", "Maori", "Otros")

sexo
partido
#Pregunta 3.(b)

#Utilizando un ejemplo 
a <- c("b", "b", "1", "z", "a", "/", "c")
#Sin usar 'ordered'
Sin_Ordered <- factor(a)
#Usar 'ordered'
Con_Ordered <- factor(a, ordered = TRUE)
#No tiene sentido usar ordered ya que es lo mismo
table(Sin_Ordered)
table(Con_Ordered)

#R organiza los niveles utilizando codigo ascci, en orden de la cadena

#Pregunta 3.(c) 
#M = Masculino, F = Femenino

#Creamos el VectorSexo ,el FactorSexo 
VSexo <- c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M")
FSexo <- factor(VSexo, levels = sexo)
table(FSexo)

#Creamos el VectorPartido, el FactorPartido
VPartido <- c("Laboral","Nacional","Nacional","Laboral","Nacional",
               "Verdes","Nacional","Nacional","Verdes","Otros","Verdes",
               "Laboral","Nacional","Nacional","Laboral","Laboral","Nacional",
               "Nacional","Laboral","Otros")

#Utilizamos el 'levels = partido' para imponer el esquema 'partido' en el Factor
FPartido <- factor(v_partido, levels = partido)
table(FPartido)

#Seleccionamos a los hombres (Masculino)
selecMasculino <- FSexo == "M"
selecMasculino
#V_partido solo seleccionara a los TRUE 
FPartidosHombre <- VPartido[selecMasculino]
FPartidosHombre
table(FPartidosHombre)

#Seleccionamos a los que eligieron el partido nacional
selecNacional <- FPartido == "Nacional"
selecNacional 
FGeneroNacional <- FSexo[selecNacional]
FGeneroNacional

#Pregunta 3.(d)
VPartido2 <- c("Nacional", "Maori", "Maori", "Laboral", "Verdes", "Laboral")
VSexo2 <- c("M", "M" , "F", "F", "F", "M")
#Concatemos los vectores
VPartido <- c(VPartido, VPartido2)
VSexo <- c(VSexo, VSexo2)
#Creamos el los nuevos factores
FSexo <- factor(VSexo, levels = sexo)
FPartido <- factor(VPartido, levels = partido)
#Mostamos los factores
FSexo
FPartido
#Mostramos una tabla de los factores
table(FSexo)
table(FPartido)

#Crear un factor con niveles de confianza
VConfianza <- c("Alto", "Moderado", "Bajo", "Alto", "Moderado", "Alto",
                "Moderado", "Bajo", "Moderado", "Moderado", "Moderado",
                "Moderado", "Moderado", "Moderado", "Moderado", "Moderado",
                "Moderado", "Moderado", "Moderado", "Bajo", "Bajo", "Moderado",
                "Alto", "Bajo", "Moderado")

VNivelConfianza <- c("Bajo", "Moderado", "Alto")
#Habilitamos la opcion 'ordered' para imponer un orden 'bajo < moderado < alto'
FConfianza <- factor(VConfianza, ordered = TRUE, levels = VNivelConfianza)
FConfianza
#Extraer los niveles, los que se identificaron con los Laboralistas

selecLaboral <- FPartido == "Laboral"
selecLaboral
FConfianzaLaboral <- FConfianza[selecLaboral]
FConfianzaLaboral
table(FConfianzaLaboral)

#Para el partido nacional
selecNacional <- FPartido == "Nacional"
selecNacional
FConfianzaNacional <- FConfianza[selecNacional]
FConfianzaNacional
table(FConfianzaNacional)

#qué notaste?


