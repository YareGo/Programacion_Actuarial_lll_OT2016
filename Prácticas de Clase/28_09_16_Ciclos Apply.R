#Ciclos
##Lapply
lapply
#Est� guardado en la base, as:cohesiona
#....

x<-list(a=1:5,b=rnorm(1000)) #Crea una lista de 2 elementos a y b, donde
                        #b genera valores aleatorios con distribuci�n normal est�ndar
                        #como no dice que media es, se toma como 0 y desviaci�n est�ndar 1
lapply(x,mean)#Colecci�n de 10000 variables aletorias de ditribuci�n normal est�ndar

x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)

x<-1:4
lapply(x,runif)
lapply(x,runif,max=15, min=5)#El valor m�s chico est� cerca de 5 y el m�s grande de 15


x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
sapply(x, mean) #te da un vector, con el nombre de los elementos de cada uno

x<-1;4
sapply(x,runif,max=15,min=5)

###Estructura de apply
str(apply)
####Margen de apply
x<-matrix(rnorm(200),20,10)
apply(x,2,mean) #columna por columna (variables)
apply(x,1,Sum) #Fila por fila (registo u observaci�n)

##Medias y sumas de filas/columnas
##Otra formas de apply
x<-matrix(rnorm(200),20, 10)
apply(x,1,quantile,probs=c(0.25,0.75))#Probs se la aplica a quantile

a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean) #Es como una caja de 2x1x3
rowMeans(a,dims = 2)

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

##Vectorizar una funci�n
noise<-function(n,mean,sd){
    rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise,1:5,1:5,2)#una funci�n con argumentos vectorizado

##Tapply
str(tapply)#T:table, aplica a una tabla

x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10) #Genera niveles, el 3 es el n�mero de niveles y 
            #el 10 el n�mero de veces que aparece uno 
f
tapply(x,f,mean)

tapply(x,f,mean,simplify = F)

#'''Split'''
str(split)

x<-c(rnorm(10),runif(10),rexp(10))
f<-gl(3,10)
f
split(x,f)
lapply(split(x,f),mean)

library(datasets)
head(airquality)#head te muestra los primeros seis datos

s<-split(airquality,airquality$Month)
lapply(s,function(x)colMeans(x[,1:3]))
##s: llama al split(la separaci�n de filas por mes)
##colMeans: saca el promedio de las primeras tres columnas
##para que ozono no muestre NA, hay que ignorarlos con na.rm=T
##como todos son de tama�o 3, se puede aplicar un sapply
##function(x), es una funci�n an�nima, no hace nada, pero para 
    ##los apply se requiere de una funci�n
sapply(s,function(x) colMeans(x[,1:4],na.rm = T))

x<-rnorm(10)
f1<-gl(2,5)
f2<-gl(5,2)
f1
f2
interaction(f1,f2)

#Split a m�s de un nivel
x
str(split(x,list(f1,f2)))




