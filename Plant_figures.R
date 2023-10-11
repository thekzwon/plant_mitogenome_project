#Figures for Genome copy number predicts extreme evolutionary rate variation in plant mitochondrial DNA

library(tidyverse)
library(scales)

#power functions
x <- 1:100
pwr <- function(x)0.0814*x^-1.515
#pwr2 <- function(x)4847.4*x^-.579
pwr2 <- function(x)6165.791*x^-.642
pwr3 <- function(x)0.0814*x^-2

pwr4 <-function(x)0.0091*x^-1.158
dat <- data.frame(x, y = pwr(x))

#removes 
dataset_dr_brnch_c_and_seq_est$pt_dn[dataset_dr_brnch_c_and_seq_est$pt_dn==0] <-NA 

##Values
point_size = 2
alpha = 0.8
axis_title = 14
axis_text = 9

#puts groups in order
dataset_dr_brnch_c_and_seq_est$Group <- factor(dataset_dr_brnch_c_and_seq_est$Group, levels = c("Gymnosperms", "Sileneae", "Plantagineae","Geraniales","Other"))

####Blanks
blank_element<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(log10(plastid_copy),log10(pt_ds_div_mya),color=Group))+
  geom_point(size=5)+
  theme_minimal()+
  xlim(4,4.1)+
  xlab("")+
  ylab("")+
  theme(axis.text=element_blank(),
        axis.title=element_text(size=axis_title),
        axis.line = element_blank(),
        panel.grid = element_blank(),
        legend.position = "none",
        legend.key.size = unit(1,"line")
  )+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

legend<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(log10(plastid_copy),log10(pt_ds_div_mya),color=Group))+
  geom_point(size=5,alpha=alpha)+
  theme_minimal()+
  xlim(100,100.1)+
  theme(axis.text=element_blank(),
        axis.title.y=element_blank(),
        axis.title.x=element_blank(),
        axis.line = element_blank(),
        panel.grid = element_blank(),
        legend.position = "top",
        legend.text = element_text(size=10),
        legend.title = element_blank()
  )+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))



###FIGURE 2

aa_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  xlim(0,130)+
  geom_vline(xintercept = 128.5, linetype="dashed", color = "grey", size=0.5)+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),plot.margin = unit(c(.25,-.25,.25,.25),"cm"),legend.position = "none")+
  stat_function(fun = pwr,color="black")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

ab_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  theme(axis.text.y = element_blank(),
        axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        axis.line.y = element_blank(),
        axis.ticks.y=element_blank(),
        panel.border = element_blank(),
        plot.margin = unit(c(.25,.25,.25,-.25),"cm"),
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA),
        legend.position = "none"
  )+
  scale_x_continuous(limits=c(431,433),breaks=seq(432,432,by=2))+
  stat_function(fun = pwr,color="black")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

ba_2<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=mito_log_lm_rate_copy$coefficients[1,1],slope=mito_log_lm_rate_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=mito_log_gls_rate_copy$tTable[1,1],slope=mito_log_gls_rate_copy$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title=element_blank(),axis.text=element_text(size=axis_text),legend.position = "none",plot.margin = unit(c(.25,-.25,.25,.25),"cm"))+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

bb_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  theme(axis.text.y = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        axis.line.y = element_blank(),
        axis.ticks=element_blank(),
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA),
        panel.border = element_blank(),
        plot.margin = unit(c(.25,.25,.25,-.25),"cm"),
        legend.position = "none"
  )+
  scale_x_continuous(limits=c(445,446))

ca_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_genome_estimate/1000,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  geom_vline(xintercept = 128.5, linetype="dashed", color = "grey", size=0.5)+
  xlim(0,130)+
  ylim(0,22000)+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),plot.margin = unit(c(.25,-.25,.25,.25),"cm"),legend.position = "none")+
  stat_function(fun = pwr2,color="black")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

cb_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_genome_estimate/1000,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  ylim(0,20800)+
  theme(axis.text.y = element_blank(),
        axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        axis.line.y = element_blank(),
        axis.ticks.y=element_blank(),
        panel.border = element_blank(),
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA),
        plot.margin = unit(c(.25,.25,.25,-.25),"cm"),
        legend.position = "none"
  )+
  scale_x_continuous(limits=c(431,433),breaks=seq(432,432,by=2))+
  stat_function(fun = pwr,color="black")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


d_2<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mt_genome_estimate/1000,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=mito_log_lm_genome_copy$coefficients[1,1],slope=mito_log_lm_genome_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=mito_log_gls_genome_copy$tTable[1,1],slope=mito_log_gls_genome_copy$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title=element_blank(),
        axis.text=element_text(size=axis_text),
        legend.position = "none",
        plot.margin = unit(c(.25,0,.25,0.25),"cm"),)+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

e_2<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mt_genome_estimate/1000,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),legend.position = "none",
        plot.margin = unit(c(.25,.25,.25,.25),"cm"))+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


f_2<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(mt_genome_estimate/1000,mt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  xlab("")+
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=mito_log_lm_genome_rate$coefficients[1,1],slope=mito_log_lm_genome_rate$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_abline(intercept=mito_log_gls_genome_rate$tTable[1,1],slope=mito_log_gls_genome_rate$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),
        axis.text=element_text(size=axis_text),legend.position = "none",axis.title.x = element_blank(),
        plot.margin = unit(c(.25,.25,.25,.25),"cm"))+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


##Arranging Figure 2 plots, saved 9x6
a_c_heights<- c(0.33,0.66)
ab_widths <- c(0.95,0.05)
axis_widths <- c(0.1,0.9)
legend_heights <-c(0.07,0.93)

ggarrange(legend,
          ggarrange(
            ggarrange(
              ggarrange(
                
                #2A,B
                ggarrange(blank_element+ylab("mt ds/million years"),
                          ggarrange(
                            ggarrange(
                              aa_2,ba_2,ncol=1,align="hv",labels=c("A.","B."),heights=a_c_heights
                            ),
                            ggarrange(ab_2,bb_2,ncol=1,align="hv",heights=a_c_heights), widths = ab_widths
                          ),widths = axis_widths
                ),
                
                #2C,D
                ggarrange(blank_element+ylab("mitogenome size (kb)"),
                          ggarrange(
                            ggarrange(
                              ca_2,d_2,ncol=1,align="hv",labels=c("C.","D."),heights=a_c_heights
                            ),
                            ggarrange(cb_2,bb_2,ncol=1,align="hv",heights=a_c_heights), widths = ab_widths
                          ),widths = axis_widths
                )
              ),
              blank_element+xlab("mtDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1),
            
            #2E,F
            ggarrange(
              ggarrange(blank_element+ylab("mt ds/million years"),
                        ggarrange(
                          e_2,f_2,heights=a_c_heights,ncol=1,align="hv",labels=c("E.","F.")
                        ),widths = axis_widths
              ), blank_element+xlab("mitogenome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)),ncol=1, heights = c(0.96,0.04)
            ), widths=c(0.66,0.33)
          ), ncol=1, heights = legend_heights)




#Figure 4

a_4<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,pt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_y_continuous(breaks=c(0.00,0.004,0.008),limits=c(0,0.01))+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

b_4<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,pt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_rate_copy$coefficients[1,1],slope=pt_log_lm_rate_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_rate_copy$tTable[1,1],slope=pt_log_gls_rate_copy$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title=element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

c_4<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,plastome_length/1000,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


d_4<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,plastome_length/1000,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10(limits=c(110,270))+
  geom_abline(intercept=pt_log_lm_genome_copy$coefficients[1,1],slope=pt_log_lm_genome_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_genome_copy$tTable[1,1],slope=pt_log_gls_genome_copy$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title=element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

e_4<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastome_length/1000,pt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_y_continuous(breaks=c(0.00,0.004,0.008),limits=c(0,0.01))+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

f_4<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastome_length/1000,pt_ds_div_mya,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_genome_rate$coefficients[1,1],slope=pt_log_lm_genome_rate$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_genome_rate$tTable[1,1],slope=pt_log_gls_genome_rate$tTable[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title =element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

##Arranging Figure 4 plots, exported 9x6
a_c_heights<- c(0.33,0.66)
ab_widths <- c(0.95,0.05)
axis_widths <- c(0.1,0.9)

ggarrange(legend,
ggarrange(
  ggarrange(
    ggarrange(
      
      #4A,B
      ggarrange(blank_element+ylab("pt ds/million years"),
                ggarrange(a_4,b_4,heights=a_c_heights,ncol=1,align="hv",labels=c("A.","B.")
                ),widths = axis_widths
      ),
      
      #4C,D
      ggarrange(blank_element+ylab("plastome size (kb)"),
                ggarrange(
                  c_4,d_4,heights=a_c_heights,ncol=1,align="hv",labels=c("C.","D.")
                ),widths = axis_widths
      )
    ),
    blank_element+xlab("ptDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1),
  
  #4E,F
  ggarrange(
    ggarrange(blank_element+ylab("pt ds/million years"),
              ggarrange(
                e_4,f_4,heights=a_c_heights,ncol=1,align="hv",labels=c("E.","F.")
              ),widths = axis_widths
    ), blank_element+xlab("plastome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)),ncol=1, heights = c(0.96,0.04)
  ), widths=c(0.66,0.33)
), ncol=1, heights =legend_heights)


##Supplementary figures
###Figure S2, dn 
  
  aa_S2<-
    ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mito_dn/`time..mya.`,color=Group))+
    geom_point(size = point_size,alpha = alpha)+
    theme_classic()+
    xlim(0,130)+
    stat_function(fun = pwr4,color="black")+
    theme(axis.title = element_blank(),
          axis.text = element_text(size=axis_text),
          panel.border = element_blank(),plot.margin = unit(c(.25,-.25,.25,.25),"cm"),legend.position = "none")+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))
  
  ab_S2<-
    ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mito_dn/`time..mya.`,color=Group))+
    geom_point(size = point_size,alpha = alpha)+
    theme_classic()+
    ylim(0,0.15)+
    stat_function(fun = pwr4,color="black")+
    theme(axis.text.y = element_blank(),
          axis.title = element_blank(),
          axis.text = element_text(size=axis_text),
          axis.line.y = element_blank(),
          axis.ticks.y=element_blank(),
          panel.border = element_blank(),
          plot.margin = unit(c(.25,.25,.25,-.25),"cm"),
          legend.position = "none"
    )+
    scale_x_continuous(limits=c(431,433),breaks=seq(432,432,by=2))+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))
  
  
  b_S2<- 
    ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mito_dn/`time..mya.`,color=Group))+
    geom_point(size = point_size,alpha = alpha)+
    theme_classic()+
    scale_x_log10()+
    scale_y_log10()+
    geom_abline(intercept=mito_log_lm_dn_copy$coefficients[1,1],slope=mito_log_lm_dn_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
    geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
    geom_abline(intercept=mito_log_gls_dn_copy[1,1],slope=mito_log_gls_dn_copy[2,1],color="darkslategrey",size=.75)+ #PGLS
    theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))
  
  
  c_S2<-
    ggplot(dataset_dr_brnch_c_and_seq_est,aes(mt_genome_estimate/1000,mito_dn/`time..mya.`,color=Group))+
    geom_point(size = point_size,alpha = alpha)+
    xlim(0,20500)+
    theme_classic()+
    theme(axis.title = element_blank(),
          axis.text = element_text(size=axis_text),
          panel.border = element_blank(),plot.margin = unit(c(.25,-.5,.25,.25),"cm"),legend.position = "none")+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))

  
  d_S2<- 
    ggplot(dataset_dr_brnch_c_and_seq_est,aes(mt_genome_estimate/1000,mito_dn/`time..mya.`,color=Group))+
    geom_point(size = point_size,alpha = alpha)+
    theme_classic()+
    scale_x_log10()+
    scale_y_log10()+
    geom_abline(intercept=mito_log_lm_dn_genome$coefficients[1,1],slope=mito_log_lm_dn_genome$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
    geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
    geom_abline(intercept=mito_log_gls_dn_genome[1,1],slope=mito_log_gls_dn_genome[2,1],color="darkslategrey",size=.75)+ #PGLS
    theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
    scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))
  
 

  #Figure S2 arranging
  ggarrange(legend,
  ggarrange(
    ggarrange(
      
      #S2A,B
      ggarrange(
        ggarrange(blank_element+ylab("mt dn/million years"),
                  ggarrange(
                    ggarrange(
                      aa_S2,b_S2,ncol=1,align="hv",labels=c("A.","B."),heights=a_c_heights
                    ),
                    ggarrange(ab_S2,bb_2,ncol=1,align="hv",heights=a_c_heights), widths = ab_widths
                  ),widths = axis_widths
        ),blank_element+xlab("mtDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
    ),
    
    #S2C,D
    ggarrange(ggarrange(blank_element+ylab("mt dn/million years"),
                        ggarrange(
                          c_S2,d_S2,ncol=1,align="hv",heights=a_c_heights,labels=c("C.","D.")
                        ), ncol=2, widths = axis_widths),
              blank_element+xlab("mitogenome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
  ), ncol=1, heights = legend_heights)
  

###S4 plastid dn, saved as 6x6
a_S4<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,pt_dn/`time..mya.`,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  ylim(0,0.00045)+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),plot.margin = unit(c(.25,-.5,.25,.25),"cm"),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))  
  

b_S4<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,pt_dn/`time..mya.`,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_dn_copy$coefficients[1,1],slope=pt_log_lm_dn_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_dn_copy[1,1],slope=pt_log_gls_dn_copy[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


c_S4<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastome_length/1000,pt_dn/`time..mya.`,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  ylim(0,0.00045)+
  theme(axis.title = element_blank(),
        axis.text = element_text(size=axis_text),
        panel.border = element_blank(),plot.margin = unit(c(.25,-.5,.25,.25),"cm"),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


d_S4<- 
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastome_length/1000,pt_dn/`time..mya.`,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_dn_genome$coefficients[1,1],slope=pt_log_lm_dn_genome$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_dn_genome[1,1],slope=pt_log_gls_dn_genome[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


#Figure S4 arranging
ggarrange(legend,
ggarrange(
  ggarrange(
    
    #S4A,B
    ggarrange(
      ggarrange(blank_element+ylab("pt dn/million years"),
                ggarrange(
                  ggarrange(
                    a_S4,b_S4,ncol=1,align="hv",labels=c("A.","B."),heights=a_c_heights
                  )
                ),widths = axis_widths
      ),blank_element+xlab("ptDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
  ),
  
  #S4C,D
  ggarrange(ggarrange(blank_element+ylab("pt dn/million years"),
                      ggarrange(
                        c_S4,d_S4,ncol=1,align="hv",heights=a_c_heights,labels=c("C.","D.")
                      ), ncol=2, widths = axis_widths),
            blank_element+xlab("plastome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
), ncol=1, heights =legend_heights)



#This is the conica by tissue data
ddpcr=read.csv("ddPCR_Sconica.csv", header=TRUE)

#This is all other ddPCR data
copy_data<- read_csv("08_26_22_per_sample_copy_data_ddpcr.csv")


#Figure S8
ddpcr_genomes_combined <-
  ddpcr %>%
  group_by(Genome,Tissue,Column)%>%
  summarize(mean_copy_number=mean(copiesPerHapNuc))


A<-ggplot(ddpcr_genomes_combined, aes(y=log10(mean_copy_number), 
                                      #                        x=Primer, 
                                      x=Genome, 
                                      color=Tissue)) + 
  geom_point(position=position_jitter(width=0.1), 
             size=3, alpha=0.6, stroke=0) + 
  theme_bw() + 
  scale_color_manual(values = c("darkgoldenrod3", 
                                                "olivedrab","darkred")) + 
                                                  xlab("ddPCR Marker") + 
  scale_y_continuous(breaks = c (-1,0,1,2,3), 
                     labels=c("0.1", "1", "10", "100", "1000"), 
                     limits = c(-1,3.2)) + 
  theme(axis.text.x = element_text(size = 12, 
                                   face="italic"), 
        axis.text.y = element_text(size = 12), 
        axis.title = element_text(size = 16), 
        axis.title.y = element_blank(),
        legend.position = "top")

A



##dn/ds
#Figure S5
S5_a <- ggplot(dataset_dr_brnch_c_and_seq_est,aes(mito_copy,mito_dn/mt_ds,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=mt_log_lm_dn_ds_copy$coefficients[1,1],slope=mt_log_lm_dn_ds_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=mt_log_gls_dn_ds_copy[1,1],slope=mt_log_gls_dn_ds_copy[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


S5_b <- ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastid_copy,pt_dn/pt_ds,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_dn_ds_copy$coefficients[1,1],slope=pt_log_lm_dn_ds_copy$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_dn_ds_copy[1,1],slope=pt_log_gls_dn_ds_copy[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


ggarrange(legend,
          ggarrange(
            ggarrange(
              
              #S5A,B
              ggarrange(
                ggarrange(blank_element+ylab("mt dn/ds"),
                  S5_a,widths = axis_widths
                ),blank_element+xlab("mtDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
            ),
            
            #S5C,D
            ggarrange(ggarrange(blank_element+ylab("pt dn/ds"),
                  S5_b, ncol=2, widths = axis_widths),
                      blank_element+xlab("ptDNA copy number")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1),labels = c("A","B")
          ), ncol=1, heights = c(0.1,0.8))



#Figure S6
S6_a <- ggplot(dataset_dr_brnch_c_and_seq_est,aes(mt_genome_estimate/1000,mito_dn/mt_ds,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=mt_log_lm_dn_ds_genome$coefficients[1,1],slope=mt_log_lm_dn_ds_genome$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=mt_log_gls_dn_ds_genome[1,1],slope=mt_log_gls_dn_ds_genome[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


S6_b <- ggplot(dataset_dr_brnch_c_and_seq_est,aes(plastome_length/1000,pt_dn/pt_ds,color=Group))+
  geom_point(size = point_size,alpha = alpha)+
  theme_classic()+
  scale_x_log10()+
  scale_y_log10()+
  geom_abline(intercept=pt_log_lm_dn_ds_genome$coefficients[1,1],slope=pt_log_lm_dn_ds_genome$coefficients[2,1],color="darkslategrey",linetype="dotted")+ #LM
  geom_smooth(method="lm",se=F,size=0.5,data=subset(dataset_dr_brnch_c_and_seq_est,Group!="Other"))+
  geom_abline(intercept=pt_log_gls_dn_ds_genome[1,1],slope=pt_log_gls_dn_ds_genome[2,1],color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title.y=element_blank(),axis.title = element_blank(),axis.text=element_text(size=axis_text),legend.position = "none")+
  scale_color_manual(values = c("#e78c8e","#ffdc7e","#add2a0","#85a9ef","#c6c6c6"))


ggarrange(legend,
          ggarrange(
            ggarrange(
              
              #S5A,B
              ggarrange(
                ggarrange(blank_element+ylab("mt dn/ds"),
                          S6_a,widths = axis_widths
                ),blank_element+xlab("mitogenome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1)
            ),
            
            #S5C,D
            ggarrange(ggarrange(blank_element+ylab("pt dn/ds"),
                                S6_b, ncol=2, widths = axis_widths),
                      blank_element+xlab("plastome size (kb)")+theme(axis.title.x=element_text(hjust=0.6,vjust=2)), heights = c(0.96,0.04),ncol=1),labels = c("A","B")
          ), ncol=1, heights = c(0.1,0.8))


#Figure S7

copy_dataset_dropped_tips_c_val

a <- ggplot(c_value_dataset_angiosperms,aes(mito_copy,mito_copy_c,color=Group))+
  geom_point(size=2)+
  theme_bw()+
  scale_x_log10()+
  scale_y_log10()+
  labs(x='',y="mtDNA copy number via c value")+
  geom_smooth(method="lm",se=F,size=0.5,color="black",formula=y~0+x)+
  theme(axis.title=element_text(size=14),axis.text=element_text(size=12),legend.position = "none")+
  scale_color_manual(values = c("#85a9ef" ,"#c6c6c6","#add2a0","#ffdc7e"))



b <- ggplot(c_value_dataset_angiosperms,aes(plastid_copy,plastid_copy_c,color=Group))+
  geom_point(size=2)+
  theme_bw()+
  scale_x_log10()+
  scale_y_log10()+
  labs(x='',y="ptDNA copy number via c value")+
  geom_smooth(method="lm",se=F,size=0.5,color="black",formula=y~0+x)+
  geom_abline(intercept=-1.159535,slope=-1.167335,color="darkslategrey",size=.75)+ #PGLS
  theme(axis.title=element_text(size=14),axis.text=element_text(size=12),legend.position = "none")+
  scale_color_manual(values = c("#85a9ef" ,"#c6c6c6","#add2a0","#ffdc7e"))

ab_leg<-
  ggplot(c_value_dataset_angiosperms,aes(log10(plastid_copy),log10(pt_ds_div_mya),color=Group))+
  geom_point()+
  theme_minimal()+
  xlim(4,4.1)+
  theme(axis.text=element_blank(),
        axis.title=element_blank(),
        axis.line = element_blank(),
        panel.grid = element_blank(),
        legend.position = "right",
        legend.key.size = unit(1,"line")
  )+
  scale_color_manual(values = c("#85a9ef" ,"#c6c6c6","#add2a0","#ffdc7e"))


c <- ggplot(copy_data,aes(log10(mito_copy_seq),log10(ddpcr_mito)))+
  geom_point()+
  ylab("log Copy Number by ddPCR")+
  xlab("log Copy Number by WGS")+
  theme_bw()+
  theme(axis.title=element_text(size=14),axis.text=element_text(size=12))+
  geom_smooth(method="lm",se=F,size=0.5,color="black",formula=y~0+x)


d <- ggplot(copy_data,aes(log10(plastid_copy_seq),log10(ddpcr_plastid)))+
  geom_point()+
  ylab("log Copy Number by ddPCR")+
  xlab("log Copy Number by WGS")+
  theme_bw()+
  theme(axis.title=element_text(size=14),axis.text=element_text(size=12))+
  geom_smooth(method="lm",se=F,size=0.5,color="black",formula=y~0+x)

cd_leg<-
  ggplot(dataset_dr_brnch_c_and_seq_est,aes(log10(plastid_copy),log10(pt_ds_div_mya),color=Group))+
  theme_minimal()+
  xlim(4,4.1)+
  theme(axis.text=element_blank(),
        axis.title=element_blank(),
        axis.line = element_blank(),
        panel.grid = element_blank(),
        legend.position = "none",
        legend.key.size = unit(1,"line")
  )+
  scale_color_manual(values = c("#85a9ef","#e78c8e" ,"#c6c6c6","#add2a0","#ffdc7e"))



ggarrange(a,b,ab_leg,c,d,cd_leg, labels = c("A.","B.","","C.","D.",""),widths=c(1,1,0.5))


