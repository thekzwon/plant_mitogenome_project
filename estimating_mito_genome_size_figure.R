library(tidyverse)
library(ggpubr)


mapped_mt_contigs <- read_csv("/Users/z739/Desktop/865_documents_contigs_with_mt_genes.csv")

mapped_mt_contigs


###import datasets#####
s_conica_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/silene_conica_contigs.csv")
Silene_noctiflora_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Silene_noctiflora.csv")
Silene_latifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Silene_latifolia.csv")
silene_vulgaris_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/svu_contigs.csv")
Silene_undulata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Sun_contigs.csv")
agrostemma_githago_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/agithago_contigs.csv")
aragoa_abietina_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Aab_contigs.csv")
aragoa_cleefii_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Acl_contigs.csv")
Plantago_arenaria_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/pare.csv")
Plantago_aristata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Par_contigs.csv")
Plantago_crassifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pcr_contigs.csv")
Plantago_depressa_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pde_contigs.csv")
Plantago_coronopus_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pco_contigs_copy.csv")
Plantago_elongata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pel_contigs.csv")
Plantago_maritima_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pma_contigs.csv")
Plantago_media_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pme_contigs.csv")
Plantago_rigida_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pri_contigs.csv")
Plantago_rugelli_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pru_contigs.csv")
Plantago_sericea_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pse_contigs.csv")
Plantago_tenuiflora_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pte_contigs.csv")
Melianthus_villosus_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Mel_contigs.csv")
california_macrophylla_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/CMA_contigs.csv")
erodium_chrysanthum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Ech_contigs.csv")
erodium_gruinum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/EGR_contigs.csv")
erodium_moschatum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Emo_contigs.csv")
erodium_texanum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Ete_contigs.csv")
erodium_trifolium_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/ETR_contigs.csv")
Francoa_sonchifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Fso_contigs.csv")
Geranium_brycei_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/GBR_contigs.csv")
Geranium_incanum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/GIM_contigs.csv")
Geranium_maderense_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Gmr_contigs.csv")
Geranium_phaeum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/GPM_contigs.csv")
Geranium_sanguineum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/GSN_contigs.csv")
Hypeseocharis_bilobata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/HYP_contigs.csv")
Monsonia_emarginata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/MON_contigs.csv")
Pelargonium_australe_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PAS_contigs.csv")
Pelargonium_citronellum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pci_contigs.csv")
Pelargonium_cotyledonis_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pco_contigs.csv")
Pelargonium_exstipulatum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PEX_contigs.csv")
Pelargonium_fulgidum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PFM_contigs.csv")
Pelargonium_myrrhifolium_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PMY_contigs.csv")
Pelargonium_nanum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PNM_contigs.csv")
Pelargonium_tetragonum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PTT_contigs.csv")
Pelargonium_transvaalense_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PTV_contigs.csv")
Pelargonium_x_hortorum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/PHR_contigs.csv")
Viviania_marifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/VMR_contigs.csv")
Podocarpus_macrophyllus_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Pod_spades_contigs.csv")
picea_abies_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/pab_contigs.csv")
Taxus_baccata_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Tba_contigs.csv")
Viviania_marifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/VMR_contigs.csv")
Welwitschia_mirabilis_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Wel_spades_contigs.csv")
Zamia_integrifolia_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Zin_contigs.csv")
Ginkgo_biloba_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Gin_spades_contigs.csv")
Gnetum_gnemon_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Ggn_contigs.csv")
Hesperocyparis_glabra_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Hgl_contigs.csv")
abies_sibirica_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Abi_spades_contigs.csv")
ceratozamia_hildae_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/chi_contigs.csv")
cupressus_sempervirens_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/cse_contigs.csv")
Arabidopsis_thaliana_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/arabidopsis_thaliana.csv")
Nicotiana_tabacum_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Nicotiana_tabacum.csv")
Zea_mays_contigs_file <- read_csv("/Users/z739/Desktop/contig_csvs/Zea_mays.csv")




####Silene conica####
s_conica_contigs <- s_conica_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = s_conica_contigs_file$Name)%>%filter(`6`>2500)
  
s_conica_contigs <-left_join(s_conica_contigs,mapped_mt_contigs,by="contig_name")

s_conica_graph<-ggplot(s_conica_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,6)+annotate("rect", xmin = 0.05, xmax = 2, ymin = 4000,ymax = 40000,
            alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab(" ")+
  ggtitle("Silene conica")+
  theme(legend.position = "none")
s_conica_graph

s_conica_contigs%>%filter(`6`>4000)%>%filter(`8`<2)%>%filter(`8`>0.05)%>%
  summarize(sum(`6`))


#####Silene_noctiflora test####
Silene_noctiflora_contigs <-Silene_noctiflora_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Silene_noctiflora_contigs_file$Name)%>%
  filter(`6`>2500)

Silene_noctiflora_contigs <-left_join(Silene_noctiflora_contigs ,mapped_mt_contigs,by="contig_name")

s_noctiflora_graph <-ggplot(Silene_noctiflora_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,10)+
  annotate("rect", xmin = 3, xmax = 8, ymin = 25000,ymax = 225000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Silene noctiflora")+
  theme(legend.position = "none")
s_noctiflora_graph

Silene_noctiflora_contigs%>%filter(`6`>25000)%>%filter(`8`<8)%>%filter(`8`>3)%>%
  summarize(sum(`6`))

#####Silene_latifolia test####

Silene_latifolia_contigs <-Silene_latifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Silene_latifolia_contigs_file$Name)%>%
  filter(`6`>2500)

Silene_latifolia_contigs <-left_join(Silene_latifolia_contigs ,mapped_mt_contigs,by="contig_name")

s_latifolia_graph <-ggplot(Silene_latifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,300)+
  annotate("rect", xmin = 100, xmax = 250, ymin = 5000,ymax = 22500,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Silene latifolia")+
  theme(legend.position = "none")
s_latifolia_graph
Silene_latifolia_contigs%>%filter(`6`>5000)%>%filter(`8`<250)%>%filter(`8`>100)%>%
  summarize(sum(`6`))


####silene vulgaris####
silene_vulgaris_contigs <- silene_vulgaris_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = silene_vulgaris_contigs_file$Name)%>%
  filter(`6`>2500)


silene_vulgaris_contigs<-left_join(silene_vulgaris_contigs,mapped_mt_contigs,by="contig_name")


s_vulgaris_graph<-ggplot(silene_vulgaris_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  annotate("rect", xmin = 45, xmax = 75, ymin = 6000,ymax = 40000,alpha = .1,fill = "blue")+
  xlim(0,250)+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Silene vulgaris")+
  theme(legend.position = "none")

s_vulgaris_graph

silene_vulgaris_contigs%>%filter(`6`>6000)%>%filter(`8`<75)%>%filter(`8`>45)%>%
  summarize(sum(`6`))

#####Silene_undulata test####
Silene_undulata_contigs <- Silene_undulata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Silene_undulata_contigs_file $Name)%>%
  filter(`6`>2500)

Silene_undulata_contigs <-left_join(Silene_undulata_contigs ,mapped_mt_contigs,by="contig_name")

s_undulata_graph <-ggplot(Silene_undulata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,50)+
  annotate("rect", xmin = 8, xmax = 25, ymin = 25000,ymax = 270000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Silene undulata")+
  theme(legend.position = "none")
s_undulata_graph

Silene_undulata_contigs%>%filter(`6`>25000)%>%filter(`8`<25)%>%filter(`8`>8)%>%
  summarize(sum(`6`))

#####agrostemma_githago test####
agrostemma_githago_contigs <-agrostemma_githago_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = agrostemma_githago_contigs_file$Name)%>%
  filter(`6`>2500)

agrostemma_githago_contigs<-left_join(agrostemma_githago_contigs,mapped_mt_contigs,by="contig_name")


a_githago_graph <-ggplot(agrostemma_githago_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,500)+
  annotate("rect", xmin = 115, xmax = 350, ymin = 5000,ymax = 40000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Agrostemma githago")+
  theme(legend.position = "none")

a_githago_graph 



agrostemma_githago_contigs%>%filter(`6`>5000)%>%filter(`8`<350)%>%filter(`8`>115)%>%
  summarize(sum(`6`))

agrostemma_githago_contigs%>%filter(`6`>3000)%>%filter(`8`<250)%>%filter(`8`>150)%>%
  summarize(sum(`6`))


######aragoa_abietina#####
aragoa_abietina_contigs <-aragoa_abietina_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = aragoa_abietina_contigs_file$Name)%>%
  filter(`6`>2500)


aragoa_abietina_contigs<-left_join(aragoa_abietina_contigs,mapped_mt_contigs,by="contig_name")

a_abietina_graph<-ggplot(aragoa_abietina_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  annotate("rect", xmin = 45, xmax = 75, ymin = 12000,ymax = 100000,alpha = .1,fill = "blue")+
  xlim(0,100)+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Aragoa abietina")+
  theme(legend.position = "none")
a_abietina_graph


aragoa_abietina_contigs%>%filter(`6`>12000)%>%filter(`8`<75)%>%filter(`8`>45)%>%
  summarize(sum(`6`))

aragoa_abietina_contigs%>%filter(`6`>3000)%>%filter(`8`<75)%>%filter(`8`>45)%>%
  summarize(sum(`6`))

###aragoa_cleefii test####
aragoa_cleefii_contigs<- aragoa_cleefii_contigs_file%>%separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = aragoa_cleefii_contigs_file$Name)%>%
  filter(`6`>2500)

aragoa_cleefii_contigs<-left_join(aragoa_cleefii_contigs,mapped_mt_contigs,by="contig_name")

a_cleefii_graph<-ggplot(aragoa_cleefii_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,100)+
  annotate("rect", xmin = 45, xmax = 75, ymin = 5000,ymax = 100000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Aragoa abietina")+
  theme(legend.position = "none")

a_cleefii_graph

aragoa_cleefii_contigs%>%filter(`6`>5000)%>%filter(`8`<75)%>%filter(`8`>45)%>%
  summarize(sum(`6`))

aragoa_cleefii_contigs%>%filter(`6`>3000)%>%filter(`8`<75)%>%filter(`8`>45)%>%
  summarize(sum(`6`))

#####Plantago_arenaria test####
Plantago_arenaria_contigs <-Plantago_arenaria_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_arenaria_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_arenaria_contigs <-left_join(Plantago_arenaria_contigs ,mapped_mt_contigs,by="contig_name")

p_arenaria_graph <-ggplot(Plantago_arenaria_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,50)+
  annotate("rect", xmin = 20, xmax = 45, ymin = 7500,ymax = 37000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago arenaria")+
  theme(legend.position = "none")
p_arenaria_graph
Plantago_arenaria_contigs%>%filter(`6`>7500)%>%filter(`8`<45)%>%filter(`8`>20)%>%
  summarize(sum(`6`))

#####Plantago_aristata test####
Plantago_aristata_contigs <-Plantago_aristata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_aristata_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_aristata_contigs <-left_join(Plantago_aristata_contigs ,mapped_mt_contigs,by="contig_name")

p_aristata_graph <-ggplot(Plantago_aristata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+
  ylim(0,60000)+
  annotate("rect", xmin = 0.8, xmax = 0.25, ymin = 7500,ymax = 60000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago aristata")+
  theme(legend.position = "none")
p_aristata_graph 

Plantago_aristata_contigs%>%filter(`6`>7500)%>%filter(`8`<0.8)%>%filter(`8`>0.25)%>%
  summarize(sum(`6`))


#####Plantago_crassifolia test####
Plantago_crassifolia_contigs <-Plantago_crassifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_crassifolia_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_crassifolia_contigs <-left_join(Plantago_crassifolia_contigs ,mapped_mt_contigs,by="contig_name")


p_crassifolia_graph <-ggplot(Plantago_crassifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,15)+
  annotate("rect", xmin = 3.5, xmax = 13, ymin = 10000,ymax = 85000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago crassifolia")+
  theme(legend.position = "none")

p_crassifolia_graph 

Plantago_crassifolia_contigs%>%filter(`6`>10000)%>%filter(`8`<13)%>%filter(`8`>3.5)%>%
  summarize(sum(`6`))

#####Plantago_depressa test####
Plantago_depressa_contigs <-Plantago_depressa_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_depressa_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_depressa_contigs <-left_join(Plantago_depressa_contigs ,mapped_mt_contigs,by="contig_name")

p_depressa_graph <-ggplot(Plantago_depressa_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,0.5)+
  annotate("rect", xmin = .1, xmax = .3, ymin = 12000,ymax = 65000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago depressa")+
  theme(legend.position = "none")
p_depressa_graph

Plantago_depressa_contigs%>%filter(`6`>12000)%>%filter(`8`<.3)%>%filter(`8`>.1)%>%
  summarize(sum(`6`))

#####Plantago_coronopus test####
#double check this one
Plantago_coronopus_contigs <-Plantago_coronopus_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_coronopus_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_coronopus_contigs <-left_join(Plantago_coronopus_contigs ,mapped_mt_contigs,by="contig_name")

p_coronopus_graph <-ggplot(Plantago_coronopus_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,100)+
  annotate("rect", xmin = 20, xmax = 75, ymin = 25000,ymax = 160000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago coronopus")+
  theme(legend.position = "none")
p_coronopus_graph

Plantago_coronopus_contigs%>%filter(`6`>2500)%>%filter(`8`<75)%>%filter(`8`>25)%>%
  summarize(sum(`6`))



#####Plantago_elongata test####
Plantago_elongata_contigs <-Plantago_elongata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_elongata_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_elongata_contigs <-left_join(Plantago_elongata_contigs ,mapped_mt_contigs,by="contig_name")

p_elongata_graph <-ggplot(Plantago_elongata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,3)+
  annotate("rect", xmin = .75, xmax = 2, ymin = 12000,ymax = 120000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago elongata")+
  theme(legend.position = "none")
p_elongata_graph

Plantago_elongata_contigs%>%filter(`6`>15000)%>%filter(`8`<2)%>%filter(`8`>.75)%>%
  summarize(sum(`6`))

#####Plantago_maritima test####
Plantago_maritima_contigs <-Plantago_maritima_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_maritima_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_maritima_contigs <-left_join(Plantago_maritima_contigs ,mapped_mt_contigs,by="contig_name")

p_maritima_graph <-ggplot(Plantago_maritima_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,.5)+
  ylim(0,35000)+
  annotate("rect", xmin = .1, xmax = .35, ymin = 7000,ymax = 35000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago maritima")+
  theme(legend.position = "none")

p_maritima_graph

Plantago_maritima_contigs%>%filter(`6`>7000)%>%filter(`8`<.35)%>%filter(`8`>.1)%>%
  summarize(sum(`6`))

#####Plantago_media test####
Plantago_media_contigs <- Plantago_media_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_media_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_media_contigs <-left_join(Plantago_media_contigs ,mapped_mt_contigs,by="contig_name")



p_media_graph <-ggplot(Plantago_media_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0 ,.3)+
  ylim(0,15000)+
   annotate("rect", xmin = .075, xmax = .15, ymin = 4000,ymax = 12000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago media")+
  theme(legend.position = "none")
p_media_graph

Plantago_media_contigs%>%filter(`6`>8000)%>%filter(`8`<.35)%>%filter(`8`>.08)%>%
  summarize(sum(`6`))

Plantago_media_contigs%>%filter(`6`>4000)%>%filter(`8`<.15)%>%filter(`8`>.075)%>%
  summarize(sum(`6`))

#####Plantago_rigida test####
Plantago_rigida_contigs <-Plantago_rigida_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_rigida_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_rigida_contigs <-left_join(Plantago_rigida_contigs ,mapped_mt_contigs,by="contig_name")


p_rigida_graph <- ggplot(Plantago_rigida_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  ylim(0,125000)+
  annotate("rect", xmin = .4, xmax = 1.1, ymin = 20000,ymax = 125000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago rigida")+
  theme(legend.position = "none")
p_rigida_graph

Plantago_rigida_contigs%>%filter(`6`>20000)%>%filter(`8`<1.1)%>%filter(`8`>.4)%>%
  summarize(sum(`6`))


#####Plantago_rugelli test####
Plantago_rugelli_contigs <- Plantago_rugelli_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_rugelli_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_rugelli_contigs <-left_join(Plantago_rugelli_contigs ,mapped_mt_contigs,by="contig_name")

p_rugelli_graph <-ggplot(Plantago_rugelli_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,0.5)+
  ylim(0,75000)+
  annotate("rect", xmin = .1, xmax = .3, ymin = 10000,ymax = 70000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago rugelli")+
  theme(legend.position = "none")
p_rugelli_graph

Plantago_rugelli_contigs%>%filter(`6`>10000)%>%filter(`8`<0.3)%>%filter(`8`>.1)%>%
  summarize(sum(`6`))


#####Plantago_sericea test####
Plantago_sericea_contigs <- Plantago_sericea_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_sericea_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_sericea_contigs <-left_join(Plantago_sericea_contigs ,mapped_mt_contigs,by="contig_name")

p_sericea_graph <-ggplot(Plantago_sericea_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  annotate("rect", xmin = .3, xmax = 1, ymin = 15000,ymax = 95000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago sericea")+
  theme(legend.position = "none")
p_sericea_graph 

Plantago_sericea_contigs%>%filter(`6`>15000)%>%filter(`8`<1)%>%filter(`8`>.3)%>%
  summarize(sum(`6`))

#####Plantago_tenuiflora test####
Plantago_tenuiflora_contigs <-Plantago_tenuiflora_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Plantago_tenuiflora_contigs_file $Name)%>%
  filter(`6`>2500)

Plantago_tenuiflora_contigs <-left_join(Plantago_tenuiflora_contigs ,mapped_mt_contigs,by="contig_name")

p_tenuiflora_graph <-ggplot(Plantago_tenuiflora_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+
  annotate("rect", xmin = .2, xmax = .5, ymin = 11000,ymax = 95000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Plantago tenuiflora")+
  theme(legend.position = "none")
p_tenuiflora_graph

Plantago_tenuiflora_contigs%>%filter(`6`>11000)%>%filter(`8`<.5)%>%filter(`8`>.2)%>%
  summarize(sum(`6`))




#####Melianthus_villosus test####
Melianthus_villosus_contigs <-Melianthus_villosus_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Melianthus_villosus_contigs_file$Name)%>%
  filter(`6`>2500)

Melianthus_villosus_contigs <-left_join(Melianthus_villosus_contigs ,mapped_mt_contigs,by="contig_name")

m_villosus_graph <-ggplot(Melianthus_villosus_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,3)+
  ylim(0,60000)+
  annotate("rect", xmin = 0.55, xmax = 1.5, ymin = 12500,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Melianthus villosus")+
  theme(legend.position = "none")
m_villosus_graph

Melianthus_villosus_contigs%>%filter(`6`>12500)%>%filter(`8`<1.5)%>%filter(`8`>.55)%>%
  summarize(sum(`6`))

#####California_macrophylla test####
california_macrophylla_contigs<- california_macrophylla_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = california_macrophylla_contigs_file$Name)%>%
  filter(`6`>2500)

california_macrophylla_contigs<-left_join(california_macrophylla_contigs,mapped_mt_contigs,by="contig_name")

c_macrophylla_graph<-ggplot(california_macrophylla_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+
  annotate("rect", xmin = .3, xmax = .75, ymin = 7500,ymax = 75000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("California Macrophylla")+
  theme(legend.position = "none")

c_macrophylla_graph


california_macrophylla_contigs%>%filter(`6`>7500)%>%filter(`8`<.75)%>%filter(`8`>.3)%>%
  summarize(sum(`6`))

#####erodium_chrysanthum test####
erodium_chrysanthum_contigs <- erodium_chrysanthum_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = erodium_chrysanthum_contigs_file$Name)%>%
  filter(`6`>2500)

erodium_chrysanthum_contigs<-left_join(erodium_chrysanthum_contigs,mapped_mt_contigs,by="contig_name")

e_chrysanthum_graph <-ggplot(erodium_chrysanthum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+
  annotate("rect", xmin = 0.3, xmax = 0.75, ymin = 10000,ymax = 30000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Erodium chrysanthum")+
  theme(legend.position = "none")
e_chrysanthum_graph

erodium_chrysanthum_contigs%>%filter(`6`>10000)%>%filter(`8`<.75)%>%filter(`8`>0.3)%>%
  summarize(sum(`6`))

#####erodium_gruinum test####
erodium_gruinum_contigs <-erodium_gruinum_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = erodium_gruinum_contigs_file$Name)%>%
  filter(`6`>2500)

erodium_gruinum_contigs<-left_join(erodium_gruinum_contigs,mapped_mt_contigs,by="contig_name")

e_gruinum_graph <-ggplot(erodium_gruinum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,40)+
  annotate("rect", xmin = 12, xmax = 30, ymin = 10000,ymax = 60000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Erodium gruinum")+
  theme(legend.position = "none")
e_gruinum_graph


erodium_gruinum_contigs%>%filter(`6`>10000)%>%filter(`8`<30)%>%filter(`8`>12)%>%
  summarize(sum(`6`))

#####erodium_trifolium test####
erodium_trifolium_contigs <-erodium_trifolium_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = erodium_trifolium_contigs_file$Name)%>%
  filter(`6`>2500)

erodium_trifolium_contigs<-left_join(erodium_trifolium_contigs,mapped_mt_contigs,by="contig_name")

e_trifolium_graph <-ggplot(erodium_trifolium_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,60)+
  annotate("rect", xmin = 17, xmax = 40, ymin = 7500,ymax = 60000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Erodium trifolium")+
  theme(legend.position = "none")
e_trifolium_graph


erodium_trifolium_contigs%>%filter(`6`>7500)%>%filter(`8`<40)%>%filter(`8`>17)%>%
  summarize(sum(`6`))

#####erodium_moschatum test####
erodium_moschatum_contigs <-erodium_moschatum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = erodium_moschatum_contigs_file$Name)%>%
  filter(`6`>2500)

erodium_moschatum_contigs<-left_join(erodium_moschatum_contigs,mapped_mt_contigs,by="contig_name")

e_moschatum_graph <-ggplot(erodium_moschatum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  ylim(0,50000)+
  annotate("rect", xmin = 0.5, xmax = 1.5, ymin = 12500,ymax = 40000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Erodium moschatum")+
  theme(legend.position = "none")
e_moschatum_graph

erodium_moschatum_contigs%>%filter(`6`>12500)%>%filter(`8`<1.5)%>%filter(`8`>0.5)%>%
  summarize(sum(`6`))

#####erodium_texanum test####
erodium_texanum_contigs<- erodium_texanum_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = erodium_texanum_contigs_file$Name)%>%
  filter(`6`>2500)

erodium_texanum_contigs<-left_join(erodium_texanum_contigs,mapped_mt_contigs,by="contig_name")


e_texanum_graph <-ggplot(erodium_texanum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 0.4, xmax = 1.2, ymin = 15000,ymax = 50000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Erodium texanum")+
  theme(legend.position = "none")

e_texanum_graph

erodium_texanum_contigs%>%filter(`6`>15000)%>%filter(`8`<1.2)%>%filter(`8`>0.4)%>%
  summarize(sum(`6`))


#####Francoa_sonchifolia test####
Francoa_sonchifolia_contigs <- Francoa_sonchifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Francoa_sonchifolia_contigs_file$Name)%>%
  filter(`6`>2500)

Francoa_sonchifolia_contigs<-left_join(Francoa_sonchifolia_contigs,mapped_mt_contigs,by="contig_name")

f_sonchifolia_graph <-ggplot(Francoa_sonchifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,3)+
  ylim(0,60000)+
  annotate("rect", xmin = 1, xmax = 2.5, ymin = 15000,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Francoa sonchifolia")+
  theme(legend.position = "none")

f_sonchifolia_graph

Francoa_sonchifolia_contigs%>%filter(`6`>15000)%>%filter(`8`<2.5)%>%filter(`8`>1)%>%
  summarize(sum(`6`))

#####Geranium_brycei test####
Geranium_brycei_contigs <-Geranium_brycei_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Geranium_brycei_contigs_file$Name)%>%
  filter(`6`>2500)

Geranium_brycei_contigs<-left_join(Geranium_brycei_contigs,mapped_mt_contigs,by="contig_name")

g_brycei_graph <-ggplot(Geranium_brycei_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,25)+
  annotate("rect", xmin = 2, xmax = 4.5, ymin = 12500,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium brycei")+
  theme(legend.position = "none")
g_brycei_graph

Geranium_brycei_contigs%>%filter(`6`>12500)%>%filter(`8`<4.5)%>%filter(`8`>2)%>%
  summarize(sum(`6`))

Geranium_brycei_contigs%>%filter(`6`>3000)%>%filter(`8`<4.5)%>%filter(`8`>2)%>%
  summarize(sum(`6`))

g_brycei_graph_plastid <-ggplot(Geranium_brycei_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  ylim(0,60000)+
  annotate("rect", xmin = 50, xmax = 250, ymin = 2500,ymax =20000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium brycei plastid")+
  theme(legend.position = "none")
g_brycei_graph_plastid
#plastid
Geranium_brycei_contigs%>%filter(`6`>2500)%>%filter(`8`<250)%>%filter(`8`>50)%>%
  summarize(sum(`6`))

#####Geranium_incanum test####
Geranium_incanum_contigs <-Geranium_incanum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Geranium_incanum_contigs_file$Name)%>%
  filter(`6`>2500)

Geranium_incanum_contigs<-left_join(Geranium_incanum_contigs,mapped_mt_contigs,by="contig_name")

g_incanum_graph <-ggplot(Geranium_incanum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,30)+
  annotate("rect", xmin = 30, xmax = 11, ymin = 15000,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium incanum")+
  theme(legend.position = "none")
g_incanum_graph

Geranium_incanum_contigs%>%filter(`6`>15000)%>%filter(`8`<30)%>%filter(`8`>11)%>%
  summarize(sum(`6`))


#####Geranium_maderense test####
Geranium_maderense_contigs<- Geranium_maderense_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Geranium_maderense_contigs_file$Name)%>%
  filter(`6`>2500)

Geranium_maderense_contigs<-left_join(Geranium_maderense_contigs,mapped_mt_contigs,by="contig_name")


g_madernese_graph <-ggplot(Geranium_maderense_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 1, xmax = 0.25, ymin = 5000,ymax = 40000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium madernese")+
  theme(legend.position = "none")
g_madernese_graph

Geranium_maderense_contigs%>%filter(`6`>5000)%>%filter(`8`<1)%>%filter(`8`>.25)%>%
  summarize(sum(`6`))

Geranium_maderense_contigs%>%filter(`6`>3000)%>%filter(`8`<1)%>%filter(`8`>.15)%>%
  summarize(sum(`6`))


#####Geranium_phaeum test####
Geranium_phaeum_contigs<- Geranium_phaeum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Geranium_phaeum_contigs_file$Name)%>%
  filter(`6`>2500)

Geranium_phaeum_contigs<-left_join(Geranium_phaeum_contigs,mapped_mt_contigs,by="contig_name")

g_phaeum_graph <-ggplot(Geranium_phaeum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,5)+
  annotate("rect", xmin = 1, xmax = 3, ymin = 10000,ymax = 45000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium phaeum")+
  theme(legend.position = "none")

g_phaeum_graph 

Geranium_phaeum_contigs%>%filter(`6`>10000)%>%filter(`8`<3)%>%filter(`8`>1)%>%
  summarize(sum(`6`))


#####Geranium_sanguineum test####
Geranium_sanguineum_contigs <- Geranium_sanguineum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Geranium_sanguineum_contigs_file$Name)%>%
  filter(`6`>2500)

Geranium_sanguineum_contigs<-left_join(Geranium_sanguineum_contigs,mapped_mt_contigs,by="contig_name")

g_sanguineum_graph <-ggplot(Geranium_sanguineum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  annotate("rect", xmin = 0.25, xmax = 0.75, ymin = 10000,ymax = 45000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium sanguineum")+
  theme(legend.position = "none")

g_sanguineum_graph

Geranium_sanguineum_contigs%>%filter(`6`>10000)%>%filter(`8`<0.75)%>%filter(`8`>.25)%>%
  summarize(sum(`6`))

#plastid


g_sanguineum_graph_plastid <-ggplot(Geranium_sanguineum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,100)+
  annotate("rect", xmin = 20, xmax = 90, ymin = 5000,ymax = 45000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Geranium sanguineum plastid")+
  theme(legend.position = "none")

g_sanguineum_graph_plastid
Geranium_sanguineum_contigs%>%filter(`6`>5000)%>%filter(`8`<90)%>%filter(`8`>20)%>%
  summarize(sum(`6`))

#####Hypeseocharis_bilobata test####
Hypeseocharis_bilobata_contigs <- Hypeseocharis_bilobata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Hypeseocharis_bilobata_contigs_file$Name)%>%
  filter(`6`>2500)

Hypeseocharis_bilobata_contigs <-left_join(Hypeseocharis_bilobata_contigs ,mapped_mt_contigs,by="contig_name")


h_bilobata_graph <-ggplot(Hypeseocharis_bilobata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+
  annotate("rect", xmin = 0.25, xmax = 0.5, ymin = 25000,ymax = 135000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Hypeseocharis bilobata")+
  theme(legend.position = "none")
h_bilobata_graph

Hypeseocharis_bilobata_contigs%>%filter(`6`>25000)%>%filter(`8`<.50)%>%filter(`8`>.25)%>%
  summarize(sum(`6`))


#####Monsonia_emarginata test####
Monsonia_emarginata_contigs <-Monsonia_emarginata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Monsonia_emarginata_contigs_file$Name)%>%
  filter(`6`>2500)

Monsonia_emarginata_contigs <-left_join(Monsonia_emarginata_contigs ,mapped_mt_contigs,by="contig_name")

m_emarginata_graph <-ggplot(Monsonia_emarginata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 0.4, xmax = 1.5, ymin = 12500,ymax = 95000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Monsonia emarginata")+
  theme(legend.position = "none")
m_emarginata_graph 


Monsonia_emarginata_contigs%>%filter(`6`>12500)%>%filter(`8`<1.5)%>%filter(`8`>.4)%>%
  summarize(sum(`6`))

#####Pelargonium_australe test####
Pelargonium_australe_contigs <-Pelargonium_australe_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_australe_contigs_file$Name)%>%
  filter(`6`>2500)

Pelargonium_australe_contigs <-left_join(Pelargonium_australe_contigs ,mapped_mt_contigs,by="contig_name")

p_australe_graph <-ggplot(Pelargonium_australe_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 0.3, xmax = 1, ymin = 20000,ymax = 150000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium australe")+
  theme(legend.position = "none")
p_australe_graph

Pelargonium_australe_contigs%>%filter(`6`>20000)%>%filter(`8`<1)%>%filter(`8`>.3)%>%
  summarize(sum(`6`))


#####Pelargonium_citronellum test####
Pelargonium_citronellum_contigs <-Pelargonium_citronellum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_citronellum_contigs_file$Name)%>%
  filter(`6`>2500)
  
Pelargonium_citronellum_contigs <-left_join(Pelargonium_citronellum_contigs ,mapped_mt_contigs,by="contig_name")
  
p_citronellum_graph <-ggplot(Pelargonium_citronellum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 0.5, xmax = 1.5, ymin = 20000,ymax = 140000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium citronellum")+
  theme(legend.position = "none")

p_citronellum_graph
Pelargonium_citronellum_contigs%>%filter(`6`>20000)%>%filter(`8`<1.5)%>%filter(`8`>.5)%>%
  summarize(sum(`6`))


#####Pelargonium_cotyledonis test####
Pelargonium_cotyledonis_contigs <-Pelargonium_cotyledonis_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_cotyledonis_contigs_file$Name)%>%
  filter(`6`>2500)

Pelargonium_cotyledonis_contigs <-left_join(Pelargonium_cotyledonis_contigs ,mapped_mt_contigs,by="contig_name")

p_cotyledonis_graph <-ggplot(Pelargonium_cotyledonis_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1.5)+
  annotate("rect", xmin = 0.5, xmax = 1.5, ymin = 20000,ymax = 320000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium cotyledonis")+
  theme(legend.position = "none")

p_cotyledonis_graph

Pelargonium_cotyledonis_contigs%>%filter(`6`>5000)%>%filter(`8`<1.5)%>%filter(`8`>.5)%>%
  summarize(sum(`6`))


#####Pelargonium_exstipulatum test####
Pelargonium_exstipulatum_contigs <- Pelargonium_exstipulatum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_exstipulatum_contigs_file $Name)%>%
  filter(`6`>2500)

Pelargonium_exstipulatum_contigs <-left_join(Pelargonium_exstipulatum_contigs ,mapped_mt_contigs,by="contig_name")

p_exstipulatum_graph <-ggplot(Pelargonium_exstipulatum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,20)+
  annotate("rect", xmin = 2.5, xmax = 17, ymin = 10000,ymax = 305000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium exstipulatum")+
  theme(legend.position = "none")
p_exstipulatum_graph

Pelargonium_exstipulatum_contigs%>%filter(`6`>10000)%>%filter(`8`<17)%>%filter(`8`>2.5)%>%
  summarize(sum(`6`))

Pelargonium_exstipulatum_contigs%>%filter(`6`>3000)%>%filter(`8`<17)%>%filter(`8`>2.5)%>%
  summarize(sum(`6`))

#####Pelargonium_fulgidum test####
Pelargonium_fulgidum_contigs <-Pelargonium_fulgidum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_fulgidum_contigs_file $Name)%>%
  filter(`6`>2500)
  
Pelargonium_fulgidum_contigs <-left_join(Pelargonium_fulgidum_contigs ,mapped_mt_contigs,by="contig_name")


p_fulgidum_graph <-ggplot(Pelargonium_fulgidum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,25)+
  ylim(0,75000)+
  annotate("rect", xmin = 7.5, xmax = 20, ymin = 10000,ymax = 75000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium fulgidum")+
  theme(legend.position = "none")

p_fulgidum_graph

Pelargonium_fulgidum_contigs%>%filter(`6`>10000)%>%filter(`8`<20)%>%filter(`8`>7.5)%>%
  summarize(sum(`6`))



#####Pelargonium_myrrhifolium test####
Pelargonium_myrrhifolium_contigs <- Pelargonium_myrrhifolium_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_myrrhifolium_contigs_file $Name)%>%
  filter(`6`>2500)
  
Pelargonium_myrrhifolium_contigs <-left_join(Pelargonium_myrrhifolium_contigs ,mapped_mt_contigs,by="contig_name")
  
p_myrrhifolium_graph <-ggplot(Pelargonium_myrrhifolium_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,5)+
  annotate("rect", xmin = 1.5, xmax = 3.5, ymin = 25000,ymax = 305000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium myrrhifolium")+
  theme(legend.position = "none")
p_myrrhifolium_graph

Pelargonium_myrrhifolium_contigs%>%filter(`6`>25000)%>%filter(`8`<3.5)%>%filter(`8`>1.5)%>%
  summarize(sum(`6`))

#####Pelargonium_nanum test####
Pelargonium_nanum_contigs <-Pelargonium_nanum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_nanum_contigs_file $Name)%>%
  filter(`6`>2500)

Pelargonium_nanum_contigs <-left_join(Pelargonium_nanum_contigs ,mapped_mt_contigs,by="contig_name")

p_nanum_graph <-ggplot(Pelargonium_nanum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,7.5)+
  annotate("rect", xmin = 2, xmax = 5, ymin = 10000,ymax = 305000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium nanum")+
  theme(legend.position = "none")
p_nanum_graph

Pelargonium_nanum_contigs%>%filter(`6`>10000)%>%filter(`8`<5)%>%filter(`8`>2)%>%
  summarize(sum(`6`))


#####Pelargonium_tetragonum test####
Pelargonium_tetragonum_contigs <- Pelargonium_tetragonum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_tetragonum_contigs_file $Name)%>%
  filter(`6`>2500)

Pelargonium_tetragonum_contigs <-left_join(Pelargonium_tetragonum_contigs ,mapped_mt_contigs,by="contig_name")

p_tetragonum_graph <-ggplot(Pelargonium_tetragonum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  annotate("rect", xmin = .5, xmax = 1, ymin = 10000,ymax = 415000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium tetragonum")+
  theme(legend.position = "none")

p_tetragonum_graph

Pelargonium_tetragonum_contigs%>%filter(`6`>10000)%>%filter(`8`<1)%>%filter(`8`>.5)%>%
  summarize(sum(`6`))


#####Pelargonium_transvaalense test####
Pelargonium_transvaalense_contigs <- Pelargonium_transvaalense_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_transvaalense_contigs_file $Name)%>%
  filter(`6`>2500)

Pelargonium_transvaalense_contigs <-left_join(Pelargonium_transvaalense_contigs ,mapped_mt_contigs,by="contig_name")


p_transvaalense_graph <-ggplot(Pelargonium_transvaalense_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  annotate("rect", xmin = .175, xmax = 2, ymin = 12500,ymax = 110000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium transvaalense")+
  theme(legend.position = "none")
p_transvaalense_graph 

Pelargonium_transvaalense_contigs%>%filter(`6`>12500)%>%filter(`8`<2)%>%filter(`8`>.175)%>%
  summarize(sum(`6`))


#####Pelargonium_x_hortorum test####
Pelargonium_x_hortorum_contigs <-Pelargonium_x_hortorum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Pelargonium_x_hortorum_contigs_file $Name)%>%
  filter(`6`>2500)
  
Pelargonium_x_hortorum_contigs <-left_join(Pelargonium_x_hortorum_contigs ,mapped_mt_contigs,by="contig_name")
  
p_hortorum_graph <-ggplot(Pelargonium_x_hortorum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,2)+
  annotate("rect", xmin = .25, xmax = 1, ymin = 10000,ymax = 370000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Pelargonium x hortorum")+
  theme(legend.position = "none")
p_hortorum_graph

Pelargonium_x_hortorum_contigs%>%filter(`6`>10000)%>%filter(`8`<1)%>%filter(`8`>.25)%>%
  summarize(sum(`6`))

#####Viviania_marifolia test####
Viviania_marifolia_contigs <- Viviania_marifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Viviania_marifolia_contigs_file$Name)%>%
  filter(`6`>2500)

Viviania_marifolia_contigs <-left_join(Viviania_marifolia_contigs ,mapped_mt_contigs,by="contig_name")

v_marifolia_graph <-ggplot(Viviania_marifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,20)+
  annotate("rect", xmin = 8, xmax = 20, ymin = 12500,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Viviania marifolia")+
  theme(legend.position = "none")
v_marifolia_graph

Viviania_marifolia_contigs%>%filter(`6`>10000)%>%filter(`8`<20)%>%filter(`8`>8)%>%
  summarize(sum(`6`))




#####Podocarpus_macrophyllus test####
Podocarpus_macrophyllus_contigs <- Podocarpus_macrophyllus_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Podocarpus_macrophyllus_contigs_file $Name)%>%
  filter(`6`>2500)

Podocarpus_macrophyllus_contigs <-left_join(Podocarpus_macrophyllus_contigs ,mapped_mt_contigs,by="contig_name")

p_macrophyllus_graph <-ggplot(Podocarpus_macrophyllus_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,700)+
  annotate("rect", xmin = 250, xmax = 600, ymin = 12000,ymax = 150000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Podocarpus macrophyllus")+
  theme(legend.position = "none")
p_macrophyllus_graph

Podocarpus_macrophyllus_contigs%>%filter(`6`>12000)%>%filter(`8`<600)%>%filter(`8`>250)%>%
  summarize(sum(`6`))


########Picea_abies######
picea_abies_contigs <- picea_abies_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = picea_abies_contigs_file$Name)%>%
  filter(`6`>2500)

picea_abies_contigs<-left_join(picea_abies_contigs,mapped_mt_contigs,by="contig_name")

p_abies_graph<-ggplot(picea_abies_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,1)+annotate("rect", xmin = 0.08, xmax = 0.75, ymin = 9000,ymax = 40000,
                     alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab(" ")+
  ggtitle("Picea abies")+
  ylim(0,40000)+
  theme(legend.position = "none")
p_abies_graph

picea_abies_contigs%>%filter(`6`>9000)%>%filter(`8`<0.75)%>%filter(`8`>0.08)%>%
  summarize(sum(`6`))


#####Taxus_baccata test####
Taxus_baccata_contigs <-Taxus_baccata_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Taxus_baccata_contigs_file$Name)%>%
  filter(`6`>2500)

Taxus_baccata_contigs <-left_join(Taxus_baccata_contigs ,mapped_mt_contigs,by="contig_name")

t_baccata_graph <-ggplot(Taxus_baccata_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,3)+
  ylim(0,50000)+
  annotate("rect", xmin = 0.25, xmax = 1, ymin = 12500,ymax = 50000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Taxus baccata")+
  theme(legend.position = "none")
t_baccata_graph

Taxus_baccata_contigs%>%filter(`6`>12500)%>%filter(`8`<1)%>%filter(`8`>0.25)%>%
  summarize(sum(`6`))


#####Viviania_marifolia test####
Viviania_marifolia_contigs <- Viviania_marifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Viviania_marifolia_contigs_file$Name)%>%
  filter(`6`>2500)

Viviania_marifolia_contigs <-left_join(Viviania_marifolia_contigs ,mapped_mt_contigs,by="contig_name")

v_marifolia_graph <-ggplot(Viviania_marifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,20)+
  annotate("rect", xmin = 8, xmax = 20, ymin = 12500,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Viviania marifolia")+
  theme(legend.position = "none")
v_marifolia_graph

Viviania_marifolia_contigs%>%filter(`6`>10000)%>%filter(`8`<20)%>%filter(`8`>8)%>%
  summarize(sum(`6`))

#####Welwitschia_mirabilis test####
Welwitschia_mirabilis_contigs <-Welwitschia_mirabilis_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Welwitschia_mirabilis_contigs_file$Name)%>%
  filter(`6`>2500)

Welwitschia_mirabilis_contigs <-left_join(Welwitschia_mirabilis_contigs ,mapped_mt_contigs,by="contig_name")

w_mirabilis_graph <-ggplot(Welwitschia_mirabilis_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,200)+
  annotate("rect", xmin = 80, xmax = 200, ymin = 2500,ymax = 550000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Welwitschia mirabilis")+
  theme(legend.position = "none")
w_mirabilis_graph

Welwitschia_mirabilis_contigs%>%filter(`6`>2500)%>%filter(`8`<200)%>%filter(`8`>80)%>%
  summarize(sum(`6`))


#####Zamia_integrifolia test####
Zamia_integrifolia_contigs <-Zamia_integrifolia_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Zamia_integrifolia_contigs_file$Name)%>%
  filter(`6`>2500)

Zamia_integrifolia_contigs <-left_join(Zamia_integrifolia_contigs ,mapped_mt_contigs,by="contig_name")


z_integrifolia_graph <-ggplot(Zamia_integrifolia_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,10)+
  ylim(0,80000)+
  annotate("rect", xmin = 2.5, xmax = 10, ymin = 10000,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Zamia integrifolia")+
  theme(legend.position = "none")
z_integrifolia_graph

Zamia_integrifolia_contigs%>%filter(`6`>10000)%>%filter(`8`<10)%>%filter(`8`>2.5)%>%
  summarize(sum(`6`))



#####Ginkgo_biloba####
Ginkgo_biloba_contigs <-Ginkgo_biloba_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Ginkgo_biloba_contigs_file$Name)%>%
  filter(`6`>2500)

Ginkgo_biloba_contigs<-left_join(Ginkgo_biloba_contigs,mapped_mt_contigs,by="contig_name")

g_biloba_graph <-ggplot(Ginkgo_biloba_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,150)+
  annotate("rect", xmin = 50, xmax = 100, ymin = 5000,ymax = 45000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Ginkgo biloba")+
  theme(legend.position = "none")

g_biloba_graph

Ginkgo_biloba_contigs%>%filter(`6`>5000)%>%filter(`8`<100)%>%filter(`8`>50)%>%
  summarize(sum(`6`))

Ginkgo_biloba_contigs%>%filter(`6`>5000)%>%filter(`8`<100)%>%filter(`8`>50)%>%
  summarize(sum(`6`))

#####Gnetum_gnemon####
Gnetum_gnemon_contigs <-Gnetum_gnemon_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Gnetum_gnemon_contigs_file$Name)%>%
  filter(`6`>2500)

Gnetum_gnemon_contigs <-left_join(Gnetum_gnemon_contigs ,mapped_mt_contigs,by="contig_name")


g_gnemon_graph <-ggplot(Gnetum_gnemon_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,15)+
  annotate("rect", xmin = 5, xmax = 15, ymin = 20000,ymax = 95000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Gnetum gnemon")+
  theme(legend.position = "none")
g_gnemon_graph

Gnetum_gnemon_contigs%>%filter(`6`>20000)%>%filter(`8`<15)%>%filter(`8`>5)%>%
  summarize(sum(`6`))
Gnetum_gnemon_contigs%>%filter(`6`>5000)%>%filter(`8`<15)%>%filter(`8`>7)%>%
  summarize(sum(`6`))

#####Hesperocyparis_glabra test####
Hesperocyparis_glabra_contigs<-Hesperocyparis_glabra_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Hesperocyparis_glabra_contigs_file$Name)%>%
  filter(`6`>2500)

Hesperocyparis_glabra_contigs <-left_join(Hesperocyparis_glabra_contigs ,mapped_mt_contigs,by="contig_name")

h_glabra_graph <-ggplot(Hesperocyparis_glabra_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,30)+
  annotate("rect", xmin = 10, xmax = 20, ymin = 10000,ymax = 75000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Hesperocyparis glabra")+
  theme(legend.position = "none")

h_glabra_graph
Hesperocyparis_glabra_contigs%>%filter(`6`>10000)%>%filter(`8`<20)%>%filter(`8`>10)%>%
  summarize(sum(`6`))

#####abies_sibirica test####

abies_sibirica_contigs <- abies_sibirica_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = abies_sibirica_contigs_file$Name)%>%
  filter(`6`>2500)

abies_sibirica_contigs<-left_join(abies_sibirica_contigs,mapped_mt_contigs,by="contig_name")

a_sibirica_graph <-ggplot(abies_sibirica_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,50)+
  annotate("rect", xmin = 30, xmax = 45, ymin = 25000,ymax = 125000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Abies sibirica")+
  theme(legend.position = "none")
a_sibirica_graph

abies_sibirica_contigs%>%filter(`6`>25000)%>%filter(`8`<45)%>%filter(`8`>30)%>%
  summarize(sum(`6`))

#####ceratozamia_hildae test####
ceratozamia_hildae_contigs <-ceratozamia_hildae_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = ceratozamia_hildae_contigs_file$Name)%>%
  filter(`6`>2500)

ceratozamia_hildae_contigs<-left_join(ceratozamia_hildae_contigs,mapped_mt_contigs,by="contig_name")

c_hildae_graph <-ggplot(ceratozamia_hildae_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,10)+
  annotate("rect", xmin = 5, xmax = 9, ymin = 12000,ymax = 50000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Ceratozamia hildae")+
  theme(legend.position = "none")

c_hildae_graph

ceratozamia_hildae_contigs%>%filter(`6`>12000)%>%filter(`8`<9)%>%filter(`8`>5)%>%
  summarize(sum(`6`))

#####cupressus_sempervirens test####
cupressus_sempervirens_contigs <- cupressus_sempervirens_contigs_file%>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = cupressus_sempervirens_contigs_file$Name)%>%
  filter(`6`>2500)


cupressus_sempervirens_contigs<-left_join(cupressus_sempervirens_contigs,mapped_mt_contigs,by="contig_name")

c_sempervirens_graph <-ggplot(cupressus_sempervirens_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,10)+
  annotate("rect", xmin = 5, xmax = 7.5, ymin = 15000,ymax = 100000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Cupresses sempervirens")+
  theme(legend.position = "none")

c_sempervirens_graph

cupressus_sempervirens_contigs%>%filter(`6`>15000)%>%filter(`8`<7.5)%>%filter(`8`>5)%>%
  summarize(sum(`6`))



#####Arabidopsis_thaliana test####
Arabidopsis_thaliana_contigs <-Arabidopsis_thaliana_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Arabidopsis_thaliana_contigs_file$Name)%>%
  filter(`6`>2500)

Arabidopsis_thaliana_contigs <-left_join(Arabidopsis_thaliana_contigs ,mapped_mt_contigs,by="contig_name")



a_thaliana_graph <-ggplot(Arabidopsis_thaliana_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,300)+
  annotate("rect", xmin = 100, xmax = 300, ymin = 10000,ymax = 55000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Arabidopsis thaliana")+
  theme(legend.position = "none")
a_thaliana_graph 

Arabidopsis_thaliana_contigs%>%filter(`6`>10000)%>%filter(`8`<300)%>%filter(`8`>100)%>%
  summarize(sum(`6`))

Arabidopsis_thaliana_contigs%>%filter(`6`>3000)%>%filter(`8`<300)%>%filter(`8`>100)%>%
  summarize(sum(`6`))

#####Nicotiana_tabacum test####
Nicotiana_tabacum_contigs <-Nicotiana_tabacum_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Nicotiana_tabacum_contigs_file$Name)%>%
  filter(`6`>2500)

Nicotiana_tabacum_contigs <-left_join(Nicotiana_tabacum_contigs ,mapped_mt_contigs,by="contig_name")

n_tabacum_graph <-ggplot(Nicotiana_tabacum_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,5)+
  ylim(0,65000)+
  annotate("rect", xmin = 1, xmax = 3, ymin = 7500,ymax = 65000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Nicotiana tabacum")+
  theme(legend.position = "none")
n_tabacum_graph


Nicotiana_tabacum_contigs%>%filter(`6`>10000)%>%filter(`8`<2.75)%>%filter(`8`>1.2)%>%
  summarize(sum(`6`))

Nicotiana_tabacum_contigs%>%filter(`6`>7500)%>%filter(`8`<3)%>%filter(`8`>1)%>%
  summarize(sum(`6`))

Nicotiana_tabacum_contigs%>%filter(`6`>5000)%>%filter(`8`<3)%>%filter(`8`>1)%>%
  summarize(sum(`6`))

#####Zea_mays test####
Zea_mays_contigs<-Zea_mays_contigs_file %>%
  separate(sep="_", into=c("1","3","4","6","7","8"),col=Name,convert=TRUE)%>%
  add_column(contig_name = Zea_mays_contigs_file$Name)%>%
  filter(`6`>2500)

Zea_mays_contigs <-left_join(Zea_mays_contigs ,mapped_mt_contigs,by="contig_name")

z_mays_graph <-ggplot(Zea_mays_contigs, aes(x=`8`,y=`6`,color=Mito))+
  geom_point(size=1)+
  xlim(0,250)+
  annotate("rect", xmin = 70, xmax = 250, ymin = 7500,ymax = 70000,alpha = .1,fill = "blue")+
  theme_bw()+
  ylab("")+
  xlab("")+
  ggtitle("Zea mays")+
  theme(legend.position = "none")
z_mays_graph 

Zea_mays_contigs%>%filter(`6`>7500)%>%filter(`8`<250)%>%filter(`8`>70)%>%
  summarize(sum(`6`))



####### correlation figures####
correaltion <- read_csv("/Users/z739/Desktop/correlation_02_16_23.csv")



s12_a <- ggplot(correaltion, aes(estimate/1000, real/1000))+
  geom_point(size=1)+
  xlim(0,10000)+
  theme_bw()+
  geom_smooth(method="lm",se=F,size=0.5)+
  xlab("mitogenome size (kb)")+
  ylab("mitogenome estimate (kb)")

s12_b <- ggplot(correaltion, aes(estimate/1000, real/1000))+
  geom_point(size=1)+
  scale_x_log10()+
  xlim(0,10000)+
  scale_y_log10()+
  theme_bw()+
  geom_smooth(method="lm",se=F,size=0.5)+
  xlab("mitogenome size (kb)")+
  ylab("mitogenome estimate (kb)")

ggarrange(s12_a,s12_b,labels = c("A","B"))


summary(lm(log10(real)~log10(estimate), data=correaltion))


#####pannel######
sileneae <- ggarrange(s_conica_graph,s_noctiflora_graph,s_latifolia_graph,s_vulgaris_graph,s_undulata_graph,a_githago_graph,nrow=1)
sileneae

plantagineceae <- ggarrange(a_abietina_graph,a_cleefii_graph,p_arenaria_graph,p_aristata_graph,p_crassifolia_graph,p_depressa_graph,p_coronopus_graph,
                            p_elongata_graph,p_maritima_graph,p_media_graph,p_rigida_graph,p_rugelli_graph,p_sericea_graph,p_tenuiflora_graph,nrow=3,ncol = 6)
plantagineceae

geraniaceae <- ggarrange(m_villosus_graph,c_macrophylla_graph,e_chrysanthum_graph,e_gruinum_graph,e_moschatum_graph,e_texanum_graph,
                         f_sonchifolia_graph,g_brycei_graph,g_incamnum_graph,g_madernese_graph,g_phaeum_graph,g_sanguineum_graph,
                         h_bilobata_graph,m_emarginata_graph,p_australe_graph,p_citronellum_graph,p_cotyledonis_graph,p_exstipulatum_graph,
                         p_fulgidum_graph,p_myrrhifolium_graph,p_nanum_graph,p_tetragonum_graph,p_transvaalense_graph,p_hortorum_graph,v_marifolia_graph,ncol=6,nrow=5)
geraniaceae

gymnosperms <- ggarrange(p_macrophyllus_graph,p_abies_graph,t_baccata_graph,w_mirabilis_graph,z_integrifolia_graph,
                         g_biloba_graph,g_gnemon_graph,h_glabra_graph,a_sibirica_graph,
                         c_hildae_graph, c_sempervirens_graph,ncol=6,nrow=3)
gymnosperms

other <- ggarrange(a_thaliana_graph,n_tabacum_graph,z_mays_graph,nrow=1)
other

all_p1 <- ggarrange(s_conica_graph,s_noctiflora_graph,s_latifolia_graph,s_vulgaris_graph,
                    s_undulata_graph,a_githago_graph,a_abietina_graph,a_cleefii_graph,
                    p_arenaria_graph,p_aristata_graph,p_crassifolia_graph,p_depressa_graph,
                    p_coronopus_graph,p_elongata_graph,p_maritima_graph,p_media_graph,
                    p_rigida_graph,p_rugelli_graph,p_sericea_graph,p_tenuiflora_graph,nrow=5,ncol=4)
all_p1+
  xlab("coverage")+
  ylab("contig size")


all_p2 <- ggarrange(m_villosus_graph,c_macrophylla_graph,e_chrysanthum_graph,e_gruinum_graph,
                    e_moschatum_graph,e_texanum_graph,e_trifolium_graph,f_sonchifolia_graph,g_brycei_graph,
                    g_incanum_graph,g_madernese_graph,g_phaeum_graph,g_sanguineum_graph,
                    h_bilobata_graph,m_emarginata_graph,p_australe_graph,p_citronellum_graph,
                    p_cotyledonis_graph,p_exstipulatum_graph,p_fulgidum_graph,nrow=5,ncol=4)
all_p2+
  xlab("coverage")+
  ylab("contig size")            
                    
all_p3 <- ggarrange(p_myrrhifolium_graph,p_nanum_graph,p_tetragonum_graph,p_transvaalense_graph,p_hortorum_graph,
                    v_marifolia_graph,p_macrophyllus_graph,p_abies_graph,t_baccata_graph,
                    w_mirabilis_graph,z_integrifolia_graph,g_biloba_graph,
                    g_gnemon_graph,h_glabra_graph,a_sibirica_graph,c_hildae_graph,
                    c_sempervirens_graph,a_thaliana_graph,n_tabacum_graph,z_mays_graph,nrow=5,ncol=4)
  
all_p3+
  xlab("coverage")+
  ylab("contig size")
  
  
  
g_brycei_graph_plastid
ggarrange(g_sanguineum_graph_plastid,g_brycei_graph_plastid)+
  xlab("coverage")+
  ylab("contig size")
  
  