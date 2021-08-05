source("/Users/deepikaa/Desktop/data_desktop/Doc/align_tracks.R")
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/Rvs167/110824_mytrasf.Rdata"))->transformation_template
transformation_template<-0*transformation_template
#normalize flint
mnorm<-function(x) return((x-min(x,na.rm=T))/(max(x,na.rm=T)-min(x,na.rm=T)))


############WT
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/sla1egfp/wo_treat/tracks2.Rdata"))->sla1_141_notrans
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/sla1egfp/2017_06_12_823/test_tracks.Rdata"))->sla1_823_notrans

get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Abp1/2017_04_10_123/tracks.Rdata"))->WTabp1_123
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/2020_02_18/823/tracks.Rdata"))->WTabp1_823

#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Rvs167/2017_03_29_3131/tracks.Rdata"))->WTrvs3131_notrans
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Rvs167/2016_06_02_2832_geneva/tracks.Rdata"))->WTrvs2832_notrans
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/2020_02_06/3132/tracks2021_05_18_2.Rdata"))->abp1SC_3132_notrans
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Inp52gfp/2017_03_13/tracks.Rdata"))->WTinp52
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Rvs167/2016_06_02_2832_geneva/tracks.Rdata")) -> WTrvs
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/WT/Inp52gfp/2017_03_13/tracks.Rdata"))->WTinp52

#transformation matrices
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/abpmch_Sla1823_15_mytrasf.Rdata"))->sla1823_transf
#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/sla10822/aligment_DMabpDC/alignment_GenSla1_wHDabp/sla1wt_141abpgfp_2021_c_mytrasf.Rdata"))->sla1141_transf
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/abpmch_Sla1141_f_mytrasf.Rdata"))->sla1141_transf

#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/abpmch_Rvs3132_d_mytrasf.Rdata"))->rvs3132_transf
#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/abpmch_Rvs2832_2021_05_18_e_mytrasf.Rdata"))->rvs2832_transf 
#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/Rvs167/2017_04_06_3131/2832_b_mytrasf.Rdata"))->rvs_trasf
#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/Rvs167/2017_04_06_3131/test_mytrasf.Rdata"))->rvs_trasf #upto 8
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/Rvs2832_alignfig4_c_mytrasf.Rdata"))->rvs_trasf

#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/wt/inp52GFP_abpmCH/abp_inp52swt_abpegfp_mytrasf.Rdata"))->inp52_trasf
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments/abp_inp52swt_abpegfp_fig4_mytrasf.Rdata"))->inp52_trasf


#time0
time(WTabp1_823$ts)[which(WTabp1_823$ts[,"mean_sFI"]==max(WTabp1_823$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abp823
time(abp1SC_3132_notrans$ts)[which(abp1SC_3132_notrans$ts[,"mean_sFI"]==max(abp1SC_3132_notrans$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abp3132
time(WTabp1_123$ts)[which(WTabp1_123$ts[,"mean_sFI"]==max(WTabp1_123$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abp123

############delsh3
##delsh3

#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/rvs_delsh3/rvs167_delsh3_sla1_egfp/2015_04_02/tracks.Rdata"))-> delsh3_sla1
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/rvs_delsh3/rvs167_delsh3_sla1_egfp/2104_11_05/tracks.Rdata"))-> delsh3_sla1
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/rvs_delsh3/delsh3_abp_egfp/2014_12_01/tracks.Rdata"))->delsh3_abp_notrans
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/2020_07_27/1xbar_823_3292/tracks2.Rdata"))->abpmch_notrans_1xBar_sla1
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/rvs_delsh3/rvs167egfp_delsh3/2014_07_14_rvs167egfp_delsh3_highmag/se2/first_analysis/tracks.Rdata"))->delsh3_g_woflalign
#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/rvs_delsh3/rvs167egfp_delsh3/2016_06_02_3154_delsh3_gfp_geneva/tracks.Rdata"))->delsh3_g_woflalign
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/2020_08_11/3286/tracks.Rdata"))->abpmch_notrans_1xBar_rvs_orig

##folder where the dc tracks are that need to be aligned

#transformation matrices
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments_haploid/rvsdelsh3_sla1_3292_d_mytrasf.Rdata"))->sla13292_transf  #1xBAR
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/SC/Abp1-mCH/alignments_haploid/rvsdelsh3_3286_f_mytrasf.Rdata"))->rvs3286_transf #1xbar

#get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/delsh3/2016_06_01_delsh3_sla1GFP_abpMch_geneva/sla1_delsh3_2018_mytrasf.Rdata"))->delsh3_sla1_transf
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/delsh3/2016_06_01_delsh3_sla1GFP_abpMch_geneva/sla1_delsh3_2021_c_mytrasf.Rdata"))->delsh3_sla1_transf
get(load("/Users/deepikaa/Desktop/data_desktop/Tracking/DC/delsh3/delsh3_rvsegfp_abpmcherry_T1/alignment_2017_07_26/delsh3_abpmch_fig4_c_mytrasf.Rdata"))->delsh3_transf


#time0
time(abpmch_notrans_1xBar_sla1$ts)[which(abpmch_notrans_1xBar_sla1$ts[,"mean_sFI"]==max(abpmch_notrans_1xBar_sla1$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abpmch_1xBar_sla1
time(abpmch_notrans_1xBar_rvs_orig$ts)[which(abpmch_notrans_1xBar_rvs_orig$ts[,"mean_sFI"]==max(abpmch_notrans_1xBar_rvs_orig$ts[,"mean_sFI"],na.rm=TRUE))]->t0_abpmch_1xBar_rvs_orig
time(delsh3_abp_notrans$ts)[which(delsh3_abp_notrans$ts[,"mean_sFI"]==max(delsh3_abp_notrans$ts[,"mean_sFI"],na.rm=TRUE))]->my_t0_delsh3

############ WITH DC TRANSORMATION#############
sla1_141<-gen.data(sla1_141_notrans,sla1141_transf, NA, NA,t0=t0_abp823, zero=0)
sla1_823<-gen.data(sla1_823_notrans,sla1823_transf, NA, NA,t0=t0_abp823, zero=0)

rvs2832<-gen.data(WTrvs2832_notrans,rvs_trasf,n=53.2,sn=5.2, zero=0, t0=t0_abp3132)
abp123_wt<-gen.data(WTabp1_123,transformation_template, n=344.8,sn=27.8,rescale.n=1, t0=t0_abp123)
abp3132_wt<-gen.data(abp1SC_3132_notrans,transformation_template, n=344.8,sn=27.8, t0=t0_abp3132, zero=0)
rvs_wt_no<-gen.data(WTrvs,rvs_trasf,n=53.2,sn=5.2, zero=0,t0=t0_abp3132)
abp823_wt<-gen.data(WTabp1_823,transformation_template, n=344.8,sn=27.8,rescale.n=1, t0=t0_abp823)


inp52_wt<-gen.data(WTinp52,inp52_trasf,NA, NA, t0=t0_abp823, zero=0)

#delsh3<-gen.data(delsh3_sla1,sla13292_transf,n=NA,sn=NA,t0=t0_abpmch_1xBar_sla1)
delsh3<-gen.data(delsh3_sla1,delsh3_sla1_transf,n=NA,sn=NA,t0=t0_abpmch_1xBar_sla1)

abpmch_1xBAR_sla1_no2<-gen.data(abpmch_notrans_1xBar_sla1,transformation_template,n=243.5,sn=24.6,rescale.n=1,t0=t0_abpmch_1xBar_sla1)
rvsdelsh3<-gen.data(delsh3_g_woflalign,delsh3_transf,n=30.1,sn=9.9,t0=t0_abpmch_1xBar_rvs_orig)
delsh3_abp<-gen.data(delsh3_abp_notrans,transformation_template,n=243.5,sn=24.6,rescale.n=1,t0=my_t0_delsh3)
abpmch_1xBAR_rvs_no2<-gen.data(abpmch_notrans_1xBar_rvs_orig,transformation_template,n=243.5,sn=24.6,rescale.n=1,t0=t0_abpmch_1xBar_rvs_orig)

##x0
xsla141<-mean(sla1_141[1:50,"x"])
xsla823<-mean(sla1_823[1:50,"x"])

xdelsh3<-mean(delsh3[1:120,"x"])



pdf("figure13_2021.pdf")
#12 :delsh3_abpmch_fig4_b
myplot(sla1_141[,"t"],sla1_141[,"x"]-xsla141,sla1_141[,"t.err"],sla1_141[,"x.err"],line.col="#ff2222",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,10),ylim=c(-10,200))
#myplot(sla1_823[,"t"],sla1_823[,"x"]-xsla823,sla1_823[,"t.err"],sla1_823[,"x.err"],line.col="#002200",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(rvs_wt_no[,"t"],rvs_wt_no[,"x"]-xsla141,rvs_wt_no[,"t.err"],rvs_wt_no[,"x.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)
#myplot(inp52_wt[,"t"],inp52_wt[,"x"]-xsla141,inp52_wt[,"t.err"],inp52_wt[,"x.err"],line.col="#22ee22", hold_on=TRUE, line.lwd=3,deltat=0.25)
legend("topleft",c("141", "823"),lty=1,col=c("#ff2222","#002200"),bty='n', cex=0.75)

grid(nx = NULL, ny = NULL)
     
myplot(delsh3[,"t"],delsh3[,"x"]-xdelsh3,delsh3[,"t.err"],delsh3[,"x.err"],line.col="#00DD00",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,10),ylim=c(-10,200))
myplot(rvsdelsh3[,"t"],rvsdelsh3[,"x"]-xdelsh3,rvsdelsh3[,"t.err"],rvsdelsh3[,"x.err"],line.col="#00DDee",hold_on=TRUE,line.lwd=3,deltat=0.25)
grid(nx = NULL, ny = NULL)

myplot(abp123_wt[,"t"],abp123_wt[,"n"],abp123_wt[,"t.err"],abp123_wt[,"fi.err"],line.col="#00DD00",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,20),ylim=c(-10,600))
myplot(delsh3_abp[,"t"],delsh3_abp[,"n"],delsh3_abp[,"t.err"],delsh3_abp[,"fi.err"],line.col="#00DDee",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abpmch_1xBAR_sla1_no2[,"t"],abpmch_1xBAR_sla1_no2[,"n"],abpmch_1xBAR_sla1_no2[,"t.err"],abpmch_1xBAR_sla1_no2[,"fi.err"],line.col="#eeDDee",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abpmch_1xBAR_rvs_no2[,"t"],abpmch_1xBAR_rvs_no2[,"n"],abpmch_1xBAR_rvs_no2[,"t.err"],abpmch_1xBAR_rvs_no2[,"fi.err"],line.col="#eeDD00",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abp823_wt[,"t"],abp823_wt[,"n"],abp823_wt[,"t.err"],abp823_wt[,"fi.err"],line.col="#ff00ff",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abp3132_wt[,"t"],abp3132_wt[,"n"],abp3132_wt[,"t.err"],abp3132_wt[,"fi.err"],line.col="#aa00aa",hold_on=TRUE,line.lwd=3,deltat=0.25)

legend("topleft",c("abp123_wt", "delsh3_abp", "abpmch_1xBAR_sla1","abpmch_1xBAR_rvs_","abp823_wt", "abp3132"),lty=1,col=c("#00DD00","#00DDee","#eeDDee","#eeDD00","#ff00ff","#aa00aa"),bty='n', cex=0.75)

myplot(rvs_wt_no[,"t"],rvs_wt_no[,"x"]-xsla141,rvs_wt_no[,"t.err"],rvs_wt_no[,"x.err"],line.col="#006600",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,10),ylim=c(-60,200))
myplot(rvsdelsh3[,"t"],rvsdelsh3[,"x"]-xdelsh3,rvsdelsh3[,"t.err"],rvsdelsh3[,"x.err"],line.col="#00DDee",hold_on=TRUE,line.lwd=3,deltat=0.25)

myplot(sla1_141[,"t"],sla1_141[,"x"]-xsla141,sla1_141[,"t.err"],sla1_141[,"x.err"],line.col="#ff2222",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,10),ylim=c(-20,450))
myplot(rvs_wt_no[,"t"],rvs_wt_no[,"x"]-xsla141,rvs_wt_no[,"t.err"],rvs_wt_no[,"x.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(inp52_wt[,"t"],inp52_wt[,"x"]-xsla141,inp52_wt[,"t.err"],inp52_wt[,"x.err"],line.col="#22ee22", hold_on=TRUE, line.lwd=3,deltat=0.25)
myplot(abp123_wt[,"t"],abp123_wt[,"x"]-xsla141,abp123_wt[,"t.err"],abp123_wt[,"x.err"],line.col="#000000", hold_on=TRUE, line.lwd=3,deltat=0.25)

#abp to rvs WT
myplot(abp823_wt[,"t"],abp823_wt[,"n"],abp823_wt[,"t.err"],abp823_wt[,"fi.err"],line.col="#00DD00",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-10,20),ylim=c(-10,600))
myplot(rvs_wt_no[,"t"],rvs_wt_no[,"n"],rvs_wt_no[,"t.err"],rvs_wt_no[,"fi.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)

#abp to rvs delsh3
myplot(abpmch_1xBAR_sla1_no2[,"t"],abpmch_1xBAR_sla1_no2[,"n"],abpmch_1xBAR_sla1_no2[,"t.err"],abpmch_1xBAR_sla1_no2[,"fi.err"],line.col="#eeDDee",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abpmch_1xBAR_rvs_no2[,"t"],abpmch_1xBAR_rvs_no2[,"n"],abpmch_1xBAR_rvs_no2[,"t.err"],abpmch_1xBAR_rvs_no2[,"fi.err"],line.col="#aaDD00",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(rvsdelsh3[,"t"],rvsdelsh3[,"n"],rvsdelsh3[,"t.err"],rvsdelsh3[,"fi.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)
grid(nx = NULL, ny = NULL)

title("figure2 inp alignment")
dev.off()