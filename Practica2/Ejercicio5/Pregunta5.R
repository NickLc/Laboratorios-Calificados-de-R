# Autor: Lazaro Camasca Edson
#Pregunta 5: Los codigos muestran el uso funciones


# Respuesta 4(a): Creacion de la funcion matematica factorial.
Factorial<-function(minum){
fact = 1
while(minum > 0){ 
  fact = fact * (minum)
  minum = minum - 1
    }
  fact
}

#Comprobar el la función Factorial
minum=0
Factorial(minum)
minum=1
Factorial(minum)
minum=5
Factorial(minum)
minum=12
Factorial(minum)


# Respuesta 4(b): Completando el bucle While
unacadena <- "R fever"
index <- 1
ecount <- 0
resultado <- unacadena

substring(unacadena,index,index)
while(ecount<2 && index<=nchar(unacadena)){
  
  if(substring(unacadena,index,index)=="e" || substring(unacadena,index,index)=="E"){
    ecount=ecount+1
  }
  if(ecount==2){
    resultado=substring(unacadena,1,index-1)
  }
  index=index+1
  }
# mostrar el resultado
resultado


