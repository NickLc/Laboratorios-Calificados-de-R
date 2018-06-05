
# Nombre: Edson Lazaro Camasca

# Respuesta 1.a: El codigo muestra el uso de la funcion "ls"
# para listar el paquete methods.
lista = ls(package:methods)
# Mostrar la cantidad de elementos.
length(lista)
# Mostrar los 20 primeros numeros.
print(lista[1:20])

# Respuesta 1.b: El codigo muestra el uso de la funcion "environment"
# para determinar el entorno de las funciones 
environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)

#Respuesta 1.c: El codigo muestra el uso de la funcion "which"
# para comprobar que un paquete esta dentro de otro
x = ls(package:"graphics")
vectLog <-  x=="smoothScatter"
x[which(vectLog)]
# Nos muestra indice el indice del paquete "smoothScatter"
# dentro del paquete "graphics"
which(vectLog)

