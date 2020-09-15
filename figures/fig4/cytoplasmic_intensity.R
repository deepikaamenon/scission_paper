library(ggplot2)
library(RColorBrewer)
library(gdata)

#set.seed(1)
#N=100;
#X=data.frame(C1=rnbinom(N,5,0.1), C2=rnbinom(N,5,0.1),C=rep(0,N)); 
#X$C=X$C1+X$C2;
#p <- ggplot(X,aes(x=C)) + geom_histogram()
#ggsave("trial.png", width=8,height=6)
#mol_nrs_all <- read.table("/Users/deepikaa/Desktop/data_desktop/nuf2/numbers_nuf2_2018_5.csv",header=TRUE, sep=",")
#mol_nrs_all$strain <-factor(mol_nrs_all$strain, 
#                            levels=c("WT","rvs_delsh3","51_del","52_del","5152_del", "bzz_del", "sh3del","WT", "wild type", "167d", "167d161d", "sh3del", "sh3deld","sh3deld161d", "4xdip", "2xdip", "1xdip", "mismatch", "4xRvsdip","2xRvsdip", "1xRvsdip", "3131hap", "4dRvsdhap"))

###ggplot(data=d, aes(x=strain, y=percent, fill=movement)) + 
###  geom_bar(stat="identity") +
###  facet_grid(~strain) + 
###  labs(title="Customer Analysis 2010-2014", x="", y="$ Spent / Year", fill="Gender") + 
###  theme(plot.title = element_text(size=25, margin=margin(t=20, b=20)))
d<-read.csv("/Users/deepikaa/Desktop/scission_paper/figures/fig4/cytoplasmic_intensities.csv", header=TRUE, sep=";")

#ggplot(data=d, aes(fill=movement, x=strain, y=percentage)) +
ggplot(data=d, aes(fill=localisation, x=strain, y=fl_intensity)) +
  geom_bar(position="dodge", stat="identity" )+
geom_errorbar(aes(ymin=fl_intensity-stdev, ymax=fl_intensity+stdev), width=.5, position=position_dodge(0.9)) + 
  #facet_grid(~protein) +
  #ylim(0,120) +
#geom_text(aes(label=strain), vjust=-0.3, size=3.5)+
  theme(axis.text.x = element_text(angle = 90))
  #theme_minimal()

ggsave("cytoplasmic_int.png", width=8,height=6)
ggsave("cytoplasmic_int.pdf", width=8,height=6)
