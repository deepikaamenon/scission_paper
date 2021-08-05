library(RColorBrewer)
source("/Users/deepikaa/Desktop/data_desktop/Doc/align_tracks.R")
mnorm<-function(x) return((x-min(x,na.rm=T))/(max(x,na.rm=T)-min(x,na.rm=T)))
##########haploid

#####load data
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Rvsduplication/Rvs_delsh3/2017_07_21/delsh3dup/motile_wt/motile_wt.Rdata")) ->delsh3_dup_sorted
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/2020_08_11/3714/tracks.Rdata"))->abpmch_notrans_2xBar_rvs
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments_haploid/rvsdelsh3_3714_e_mytrasf.Rdata"))->rvs3714_transf
time(abpmch_notrans_2xBar_rvs$ts)[which(abpmch_notrans_2xBar_rvs$ts[,"mean_sFI"]==max(abpmch_notrans_2xBar_rvs$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abpmch_2xBar_rvs
#generate a template transformation matrix to fool gen.data
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/Rvs167/110824_mytrasf.Rdata"))->transformation_template
transformation_template<-0*transformation_template
delsh3dup3714<-gen.data(delsh3_dup_sorted,rvs3714_transf,n=NA,sn=NA,t0=t0_abpmch_2xBar_rvs)
abpmch_2xBAR_rvs<-gen.data(abpmch_notrans_2xBar_rvs,transformation_template,n=245.8,sn=18.4,rescale.n=1,t0=t0_abpmch_2xBar_rvs)
cols_blue<-brewer.pal(n=9, name="Blues")
cols_rdpu<-brewer.pal(n=9, name="RdPu")

##with delsh3-duplicated
pdf("check_2xbar_tracks_black.pdf")
myplot(abpmch_2xBAR_rvs[,"t"],mnorm(abpmch_2xBAR_rvs[,"fi"]),abpmch_2xBAR_rvs[,"t.err"],abpmch_2xBAR_rvs[,"fi.err"],line.col="#660099",xlab="time(s)",ylab="# molecules",xlim=c(-15,15), ylim=c(0,1))
myplot(delsh3dup3714[,"t"],mnorm(delsh3dup3714[,"fi"]),delsh3dup3714[,"t.err"],delsh3dup3714[,"fi.err"],line.col="#6600ee",hold_on=TRUE,line.lwd=3,deltat=0.45)

myplot(delsh3dup3714[,"t"],mnorm(delsh3dup3714[,"fi"]),delsh3dup3714[,"t.err"],delsh3dup3714[,"fi.err"],line.col="#6600ee",xlab="time(s)",ylab="# molecules",xlim=c(-15,15), ylim=c(0,1))

title("2xBAR")
dev.off()