
#This is figures for the size/rate/genome size analysis
#redone 08/2023 to have ds instead of abs

#if (!require("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("ggtree")

#install.packages("tidyverse")
#install.packages("TDbook")
#install.packages("ggimage")
#install.packages("ggmisc")
#install.packages("ggplot2")
#install.packages("gginnards")
#install.packages("ape")
#install.packages("phytools")


library(tidyverse)
library(ggtree)
library(TDbook)
library(ggimage)
library(ggpmisc)
library(ggplot2)
library(gginnards)
library(ape)
library(phytools)

#import datasets
#genome estimate with new estimates
mito_tip_info <- read_csv("mt_genome_estimate.csv")


mito_edit_tree$tip.label<-gsub("_"," ",mito_edit_tree$tip.label) #makes graphs look prettier. Takes underscores out and puts in regular spaces.

#08_07_2023_ds tree import
mito_ds_tree <- read.tree("mito_ds_tree.txt")

pt_ds_tree <- read.tree("pt_ds_tree.txt")


#Figure 4

#mito
#can visualize node numbers
ggtree_mito_ds<-ggtree(mito_ds_tree)  + geom_text(aes(label=node),size=3) +geom_tiplab(size=3)
p<- ggtree(mito_ds_tree, layout="circular",size=0.2)  

p1_2<-p+
  geom_hilight(node=97,fill="#d9ead3b2",color="#b5d7a8ff",extendto=1.95) + 
  geom_hilight(node=67,fill="#dce4f8b2",color="#a3c2f4ff",extendto=1.38)+ 
  geom_hilight(node=91,fill="#fff0ccb2",color="#ffe598ff",extendto=1.3)+ 
  geom_hilight(node=110,fill="#f4cbcc98",color="#f3caccff",extendto=0.7) +
  scale_color_continuous(name='custom',low='black', high='black') 

p1_2

p2<- p1_2 %<+% mito_tip_info


p3<- p2 +  geom_tippoint(aes(size = mt_genome_estimate, fill = median_gene_copy_30_cutoff),shape=21,stroke=0.1) + 
#  scale_size_area(breaks=c(79577471546,1.98944E+12,7.95775E+12))+
  scale_size_area()+
  theme(legend.position = "bottom",
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.background = element_rect(fill='transparent'),
        legend.box.background = element_rect(fill='transparent'),
        legend.key.height = unit(0.5, 'cm'),
        legend.key.width = unit(1., 'cm')
  )+
  scale_fill_gradient(low="#fff5e9ff",high="#842904ff") + ggplot2::xlim(-0.25,2 )


move_layers(p3,"GeomHilightRect",position="bottom")

p4<-move_layers(p3,"GeomHilightRect",position="bottom")


#plastid
ggtree(pt_ds_tree)  + geom_text(aes(label=node),size=3) +geom_tiplab(size=3)
p<- ggtree(pt_ds_tree, layout="circular",size=0.2)  

p1_2<-p+
  geom_hilight(node=92,fill="#d9ead3b2",color="#b5d7a8ff",extendto=0.8) + 
  geom_hilight(node=67,fill="#dce4f8b2",color="#a3c2f4ff",extendto=0.8)+ 
  geom_hilight(node=105,fill="#fff0ccb2",color="#ffe598ff",extendto=0.8)+ 
  geom_hilight(node=110,fill="#f4cbcc98",color="#f3caccff",extendto=0.9) +
  scale_color_continuous(name='custom',low='black', high='black') 

p2<- p1_2 %<+% mito_tip_info

p1_2
p3<- p2 +  geom_tippoint(aes(size = plastome_length, fill = plastid_copy_1000_cutoff),shape=21,stroke=0.2) + 
  scale_size_area()+
  theme(legend.position = "bottom",
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.background = element_rect(fill='transparent'),
        legend.box.background = element_rect(fill='transparent'),
        legend.key.height = unit(0.5, 'cm'),
        legend.key.width = unit(1., 'cm')
  )+
  scale_fill_gradient(low="#fff5e9ff",high="#842904ff") + ggplot2::xlim(-0.05,0.7 )

p3
move_layers(p3,"GeomHilightRect",position="bottom")



#Figure 1
###fig 1 with ds only had to reorder tree to make sure all the nodes aligned

chronogram <- read.nexus("chronogram_reordered_08_08_23")

mito_ds_tree_reordered <-read.nexus("mito_ds_tree_reordered_08_08_23")

chronogram_branch_added <- read.nexus("chronogram_branch_added_sorted")

pt_ds_tree <- read.nexus("pt_ds_tree_reordered")



#plots trees
plotTree(pt_ds_tree)
mito_ds_tree_reordered$time <- chronogram_branch_added$edge.length


plotTree(mito_ds_tree_reordered)
mito_ds_tree_reordered

plotTree(chronogram_branch_added)
chronogram_branch_added

plotBranchbyTrait(mito_ds_tree_reordered,mito_ds_tree_reordered$time, mode="edges",palette="heat.colors",edge.width=1)
mito_ds_tree_reordered


#renames branches so that its the genus first letter then the species
mito_ds_tree_reordered$tip.label<-gsub("_"," ",mito_ds_tree_reordered$tip.label)
mito_ds_tree_reordered$tip.label<-sub("*[a-z]+","\\1.",mito_ds_tree_reordered$tip.label)

layout(matrix(c(1,2,3,2,4,2),nrow=2),widths=c(0.45,0.10,0.45),heights=c(0.95,0.05))

#plotTree(mito_ds_tree,ftype="off",mar=c(2,0,0,0),xlim=c(0,1.9),bg = 'transparent',lwd=1)
plotBranchbyTrait(mito_ds_tree_reordered,mito_ds_tree_reordered$time, mode="edges",palette=colorRampPalette(c("black","black")),edge.width=2,ftype="off",mar=c(2,0,0,0),show.tip.label = FALSE,legend=FALSE)

par(cex.lab=1,cex.axis=1)
#par(bg=NA)
axisPhylo(1,backward=FALSE)

obj<-get("last_plot.phylo",envir=.PlotPhyloEnv)


for(i in 1:length(mito_ds_tree_reordered$tip.label)) lines(c(obj$xx[i],max(obj$xx[1:length(mito_ds_tree_reordered$tip.label)])),
                                                           rep(obj$yy[i],2),lty="dotted",lwd=0.25)

plot.new()

plot.new()
plot.window(xlim=c(-0.1,0.1),ylim=c(1, length(mito_ds_tree_reordered$tip.label)),bg = '#f7f7f7')
text(rep(0,length(mito_ds_tree_reordered$tip.label)), 1:length(mito_ds_tree_reordered$tip.label),mito_ds_tree_reordered$tip.label,vfont=c('sans serif','bold italic'))


#plotTree(pt_ds_tree,ftype="off",mar=c(2,0,0,0),xlim=c(0.62,0),bg = 'transparent',lwd=1)
plotBranchbyTrait(pt_ds_tree,mito_ds_tree_reordered$time, mode="edges",palette=colorRampPalette(c("black","black")),edge.width=2,ftype="off",mar=c(2,0,0,0),show.tip.label = FALSE,legend=FALSE,direction="left")

par(cex.lab=1,cex.axis=1)
axisPhylo(1,backward = FALSE)

obj2<-get("last_plot.phylo",envir=.PlotPhyloEnv)

for(i in 1:length(pt_ds_tree$tip.label)) lines(c(obj2$xx[i],min(obj2$xx[1:length(pt_ds_tree$tip.label)])*1),
                                                rep(obj2$yy[i],2),lty="dotted",lwd=0.25)
par(bg="lightgrey")

dev.off()


#plot the legend
plotBranchbyTrait(mito_ds_tree_reordered,mito_ds_tree_reordered$time, mode="edges",palette=colorRampPalette(c("grey","black")),edge.width=1,ftype="off",mar=c(2,0,0,0),show.tip.label = FALSE,legend=TRUE)

