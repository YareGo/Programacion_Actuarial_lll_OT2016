str(str)
str(lm)

x<-rnorm(100)
str(x) #Pregunta la estructura de x, nos dice que es el obj en t�rminos de programaci�n
summary(x) #Descripci�n de como se distribuye

f<-gl(40,10)
str(f)
summary(f)#te dice cuantos n�meros hay de cada uno de los factores

str(airquality)

m<-matrix(rnorm(100),10,10)
m
str(m)

s<-split(airquality,airquality$Month)
s
str(s)

#Generaci�n de n�meros aleatorios
x<-rnorm(10)
x
y<-rnorm(10,50,5)
y
summary(x)
summary(y)

set.seed(1)
rnorm(5) #Genera los mismos n�mero para todos, gracias al set.seed
set.seed(2)
rnorm(5)
set.seed(1)
rnorm(5)

normal1<-rnorm(1000)
normal2<-rnorm(1000, 10,5)
hist(normal1)
summary(normal1)
hist(normal2)
summary(normal2)

rpois(10,1)
poisson1<-rpois(10000,1)
poisson2<-rpois(1000,10)
hist(poisson1)
hist(poisson2)
ppois(2,2)
ppois(4,2)
ppois(6,2)
hist(rpois(1000,2))
##queremos que nos diga la suma de cada barra en el histograma 
probs[12]<-1-ppois(10,lambda = 2) ##'No corre'
as.numeric(as.integer(probs*10000))/100##'No corre'
for(i in 0:11){print(dpois(i,2))}

hist(runif(1000,10,20))

#Generaci�n de n�meros aleatorios desde un modelo lineal 
set.seed(20) #semilla 20
x<-rnorm(100,0,1)
e<-rnorm(100,0,2)
y<-0.5 + 2 * x + e
plot(x,y)

#Ejemplo de relaci�n perfecta, gr�fica de dispersi�n
z<-0.5+2*x 
plot(x,z) #Tiene una relaci�n perfecta, a�n siendo n�mero aleatorios
plot(z,y)


set.seed(10)
x<-rbinom(100,1,0.5)#genera 100 variables, de tama�o 1 de la muestra(1 intento)
e<-rnorm(100,0,2)
y<-0.5+2*x+e
summary(y)
plot(x,y,main="Modelo Lineal",col="dark red")

set.seed(1)
x<-rnom(100)
log.mu<-0.5+0.3*x
y<-rpois(100,exp(log.mu))
summary(y)
plot(x,y,main = "Modelo Poisson",col="forestgreen")



