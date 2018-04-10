#Nombre : Lázaro Camasca Edson Nick cod 20160468E 
#Respuesta 2: Creacion de Matrices

#Para la pregunta 2.(a) creamos primero un vector
matrix_a <- c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5)
dim(matrix_a) <- c(4, 2)
matrix_a

#Para la pregunta 2.(b) eliminamos la primera fila 
#Utilizamos el signo '-' y indicamos la fila que se quiere eliminar
dim(matrix_a[-1, ])

#Para la pregunta 2.(c) 
matrix_a[ , 2] <- sort(matrix_a[, 2])
matrix_c <- matrix_a

#Para la pregunta 2.(d) eliminamos la row 4, col 1 
matrix_d <- matrix_a[-4, -1]
class(matrix_d)
#Al principio nos devuelve que matrix_d es un vector
#Al utilizar la funcion matrix, nos devuelve una matrix
matrix_d <- matrix(matrix_a[-4, -1])
class(matrix_d)

#Para la pregunta 2.(e)
#rbind contruir matrix dando los row(fila) en este caso la fila 3 y 4
matrix_e <- rbind(matrix_c[3, ],matrix_c[4, ])
matrix_e

#Para la pregunta 2.(f) utilizamos la funcion diag() y le sumamos -0.5 a cada elemento
w <- diag(matrix_e) + c(-0.5, -0.5)
matrix_c
matrix_c[4,2] <- w[1]
matrix_c[1,2] <- w[2]
matrix_c[4,1] <- w[1]
matrix_c[1,1] <- w[2]
matrix_c


#Para la pregunta 2.(g) utilizamos la funcion solve() para determinar la inversa 
#de una matrix, la operacion '%*%' para multiplicar matrices
A <- rbind(c(2,0,0,0),c(0,3,0,0),c(0,0,5,0),c(0,0,0,-1))
#Creamos la matrix identidad 'I'
I <- rbind(c(1,0,0,0),c(0,1,0,0),c(0,0,1,0),c(0,0,0,1))
matrix_g <- solve(A)%*%A - I
matrix_g



