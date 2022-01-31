

install.packages("climatol",dependencies = TRUE)
library(climatol)
#EJERCICIO 1
data(datcli)
diagwl(datcli,"Estacion Campo de Marte",80,"2017",mlab="es",pcol="blue",tcol="red",pfcol="brown",sfcol="purple",shem=F,ptline=T)
#EJERCICIO 2
data(windfr)
rosavent(windfr,fnum=6,fint=2, flab=1, ang=3*pi/8  ,col=rainbow(8), uni="km/s")
#NIVEL 2
#EJERCICIO 3
data(tmax)
write.table(dat,"tmax_2001-2003.dat",row.names = F,col.names = F)
write.table(est.c,"tmax_2001-2003.est",row.names = F,col.names = F)
dd2m("tmax",2001,2003,ndec = 2,valm = 2)
tmax_m<-read.table("tmax-m_2001-2003.dat",header = F)
tmax_m
homogen("tmax",2001,2003,std=2,ndec=2,gp=3,expl=T)

#EJERCICIO
setwd("C:\Users\BENJY\Documents\Documentos UNMSM\CICLO 4\PROGRAMACION")
data(Ptest)
write.table(dat,"Ptest_1951-2010.dat",row.names=F,col.names=F)
write.table(est.c,"Ptest_1951-2010.est",row.names=F,col.names=F)
datsubset("Ptest",1951,2010,1965,2005,1)
homogsplit("Ptest",1965,2005,2.9,39,xo=0,yo=0,std=3, gp=4,expl=T,nm=12)

dahstat("Ptest",1965,2005,stat="me",ndc=2,vala=1,estcol = c(1,2,5))
