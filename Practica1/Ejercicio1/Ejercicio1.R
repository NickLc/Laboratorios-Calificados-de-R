#Nombre : Lázaro Camasca Edson Nick cod 20160468E 
#Respuesta 1: Creacion de Vectores

#Para la pregunta 1.(a) utilizamos la funcion seq()
#vector_a : vector para la pregunta a.
vector_a <- seq(from = 5, to = -11, by = -0.3)  

print(vector_a)

#Para la pregunta 1.(b) utilizamos la funcion seq() en el orden inverso
vector_a <- seq(from = -11, to = 5, by = 0.3)
print(vector_a)

#Para la pregunta 1.(c) utilizamos la funcion rep()
vector_c <- c(-1, 3, -5, 7, -9)
vector_c <- rep(vector_c ,times = 2)
print(vector_c)
#Utilizamos la funcion sort para ordenar y habilitamos el parametro decreciendo
w <- sort(w,decreasing = TRUE)
print(w)


#Para la pregunta 1.(d) 
#Utilizamos el operador ':' que mos permiter generar una secuencia de enteros
v1 <- as.integer(6:12)
print(v1)

v2<- rep(5.3, times = 3)
print(v2)

v3<- c(-3)

a = length(vector_c)
print(a)
b = (102 - a)/8 
v4<- seq(from = 102, to = a, by = -b)
print(v4)
#vamos a unir todos los vectores 
vector_d = c(v1,v2,v3,v4)
print(length(vector_d))
