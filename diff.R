library("pspline"); 

pdf("diff3.pdf") 
sla1_wtx<-sla1_823[,"x"][50:161]
sla1_delvpsx<-sla1_delvps[,"x"][40:161]

indwt<-seq(1:length(sla1_wtx))
inddelvps<-seq(1:length(sla1_delvpsx))

sla1_delvpsx2<-sla1_delvps[,"x"][55:161]
inddelvps2<-seq(1:length(sla1_delvpsx2))

c<-spline(sla1_823[,"t"], sla1_823[,"x"]-xsla823, sla1_823[,"t"], n=15,method="natural"); 
d<-spline(sla1_823[,"t"], sla1_823[,"x"]-xsla823, sla1_823[,"t"], n=160,method="natural"); 

f<-diff(sla1_823[,"x"]-xsla823, lag = 20)
g<-diff(sla1_823[,"x"]-xsla823, lag = 100)
h<-diff(c$y, lag=2)
i<-diff(d$y, lag=20)

#plot original data and spline
plot(sla1_823[,"t"], sla1_823[,"x"]-xsla823,type="l", col="orchid1")
points(c, type="o", col="black" )
lines(d, type="o", col="blue")
legend("topleft",c("orig", "spline15", "spline100"),lty=1,col=c( "orchid1", "black","blue"),bty='n', cex=0.75)

#plot differences
plot(f, col="red", xlim=c(0, 150), ylim=c(-5,120))
lines(h, col="black")
lines(i, col="deeppink3")
legend("topleft",c("diff orig lag20", "diff spline15 lag2", "diff spline200 lag20"),lty=1,col=c( "red", "black","deeppink3"),bty='n', cex=0.75)

cross1<-ccf(sla1_wtx,sla1_delvpsx, lag=120)
cross1_150<-ccf(sla1_wtx,sla1_delvpsx, lag=150, col="red")
#plot(cross1, xlim=c(0, 250))
plot(indwt, mnorm(sla1_wtx), col="grey", xlim=c(0, 250))
lines(inddelvps,mnorm(sla1_delvpsx), col="red")

cross2<-ccf(sla1_wtx,sla1_delvpsx2, lag=120)
plot(mnorm(sla1_wtx), col="grey", xlim=c(0, 250))
lines(mnorm(sla1_delvpsx2), col="red")

cross4<-ccf(sla1_wtx,sla1_delvpsx2)
cross5<-ccf(sla1_wtx,sla1_delvpsx)
cross6<-ccf(sla1_delvpsx, sla1_wtx)


t1=seq(0,10,0.1)
y1=sin(t1)
y2=sin(t1+pi/2)
plot(t1,y1,type="l", xlab="time", ylab="Sine wave")
lines(t1,y2, col="red")
cross_sin<-ccf(y1,y2, lag=120)

t2=seq(0,10,0.1)
y3=sin(t1)
y4=sin(t1)
plot(t2,y3,type="l", xlab="time", ylab="Sine wave")
lines(t2,y4, col="red")
cross_sin2<-ccf(y3,y4, lag=120)

dev.off()
