myplot(sla1_823[,"t"],sla1_823[,"x"]-xsla823,sla1_823[,"t.err"],sla1_823[,"x.err"],line.col="#ffffff",xlab="Time (s)",ylab="fl intensity (nm)",line.lwd=3,deltat=0.25,xlim=c(-15,20),ylim=c(-10,200))
myplot(abp823_wt[,"t"],mnorm(abp823_wt[,"fi"])*200,abp823_wt[,"t.err"],abp823_wt[,"fi.err"],line.col="#33ffff",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abp3132_wt[,"t"],mnorm(abp3132_wt[,"fi"])*200,abp3132_wt[,"t.err"],abp3132_wt[,"fi.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abp3132_delvps[,"t"],mnorm(abp3132_delvps[,"fi"])*200,abp3132_delvps[,"t.err"],abp3132_delvps[,"fi.err"],line.col="#6600FF",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(abp823_delvps[,"t"]-1,mnorm(abp823_delvps[,"fi"])*200,abp823_delvps[,"t.err"],abp823_delvps[,"fi.err"],line.col="#99cc00",hold_on=TRUE,line.lwd=3,deltat=0.25)

myplot(abp_delrvs1801[,"t"]-1,mnorm(abp_delrvs1801[,"fi"])*200,abp_delrvs1801[,"t.err"],abp_delrvs1801[,"fi.err"],line.col="#000000",hold_on=TRUE,line.lwd=3,deltat=0.25)

myplot(rvs3131[,"t"],rvs3131[,"n"],rvs3131[,"t.err"],rvs3131[,"fi.err"],line.col="#00ee44",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(rvs_delvps[,"t"],rvs_delvps[,"n"],rvs_delvps[,"t.err"],rvs_delvps[,"fi.err"],line.col="#6644dd",hold_on=TRUE,line.lwd=3,deltat=0.25)

legend("topleft",c("823 AbpmCH int", "3132 AbpmCH int", "delvps3132 AbpmCH int","delvps823 AbpmCH int", "3131 Rvs int", "delvps3131 Rvs int"),lty=1,col=c( "#33ffff", "#006600","#6600FF","#99cc00","#00ee44","#6644dd"),bty='n', cex=0.75)
title("abp1check")
grid (40,10, lty = 6, col = "cornsilk2")

#######delvps plots######SEE HERE
myplot(sla1[,"t"],sla1[,"x"]-xsla1,sla1[,"t.err"],sla1[,"x.err"],line.col="#FFFFFF",xlab="Time (s)",ylab="Inward movement (nm)",line.lwd=3,deltat=0.25,xlim=c(-15,7),ylim=c(-20,200))
myplot(sla1_141[,"t"],sla1_141[,"x"]-xsla141,sla1_141[,"t.err"],sla1_141[,"x.err"],line.col="#3322ff",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(sla1_delvps[,"t"],sla1_delvps[,"x"]-xsla_vpsdel,sla1_delvps[,"t.err"],sla1_delvps[,"x.err"],line.col="#086600",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(rvs3131[,"t"],rvs3131[,"x"]-x_rvs3131,rvs3131[,"t.err"],rvs3131[,"x.err"],line.col="#006600",hold_on=TRUE,line.lwd=3,deltat=0.25)
myplot(rvs_delvps[,"t"],rvs_delvps[,"x"]-x_rvsdelvps,rvs_delvps[,"t.err"],rvs_delvps[,"x.err"],line.col="#660000",hold_on=TRUE,line.lwd=3,deltat=0.25)

legend("topleft",c("WT-Sla1 141", "delVps1-Sla1 141", "WT-Rvs167", "delVps1-Rvs167"),lty=1,col=c("#3322ff","#086600","#006600","#660000"),bty='n', cex=0.75)
title("delvps") 

