library(RCurl)
library(readr)

#Get all SRS codes from the AncientMetagenomeDir of Ancient Metagenomes
file<-getURL("https://raw.githubusercontent.com/SPAAM-community/AncientMetagenomeDir/master/ancientmetagenome-hostassociated/ancientmetagenome-hostassociated.tsv")
aMetagenomes<-read_tsv(file)
dummie<-aMetagenomes[aMetagenomes$archive=="SRA",]$archive_accession
SRS_aMetagenomes<-list()
for (i in dummie){
  SRS_aMetagenomes<-c(SRS_aMetagenomes,as.list(strsplit(i,","))[[1]])
}
SRS_aMetagenomes<-as.data.frame(rown.names=NULL, x=SRS_aMetagenomes)
write.table(x=SRS_aMetagenomes,"SRS_aMetagenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")

#Get all ERS codes from the AncientMetagenomeDir of Ancient Metagenomes
dummie1<-aMetagenomes[aMetagenomes$archive=="ENA",]$archive_accession
ERS_aMetagenomes<-list()
for (i in dummie1){
  ERS_aMetagenomes<-c(ERS_aMetagenomes,as.list(strsplit(i,","))[[1]])
}
ERS_aMetagenomes<-as.data.frame(rown.names=NULL, x=ERS_aMetagenomes)
write.table(x=ERS_aMetagenomes,"ERS_aMetagenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")


#Total number of aMetagenome accessions
total_accessions_aMetagenome<-list()
for (i in aMetagenomes$archive_accession){
  total_accessions_aMetagenome<-c(total_accessions_aMetagenome,as.list(strsplit(i,","))[[1]])
}
print(c("Total number of aMetagenome accesions in AncientMetagenomeDir:",length(total_accessions_aMetagenome)))

#How many projects are there of oral Ancient Metagenomes
length(unique(aMetagenomes$archive_project))

#Save file with SRR accessions for aMetagenomes
aMetagenomes_SRStoSRR <- read_table2("/Volumes/@home/aMetagenomes_SRStoSRR.tsv", 
                                     col_names = FALSE)
SRR_aMetagenomes<-unique(aMetagenomes_SRStoSRR$X2)
SRR_aMetagenomes<- SRR_aMetagenomes[!is.na(SRR_aMetagenomes)]
write.table(x=SRR_aMetagenomes,"SRR_aMetagenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")

#Save file with SRR accessions for aMetagenomes
aMetagenomes_ERStoERR <- read_table2("/Volumes/@home/aMetagenomes_ERStoERR.tsv", 
                                     col_names = FALSE)
ERR_aMetagenomes<-unique(aMetagenomes_ERStoERR$X2)
ERR_aMetagenomes<- ERR_aMetagenomes[!is.na(ERR_aMetagenomes)]
write.table(x=ERR_aMetagenomes,"ERR_aMetagenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")


#Get all SRA codes from the AncietMetagenomeDir of Single Genomes
file_1<-getURL("https://raw.githubusercontent.com/SPAAM-community/AncientMetagenomeDir/master/ancientsinglegenome-hostassociated/ancientsinglegenome-hostassociated.tsv")
aSGenomes<-read_tsv(file_1)
dummie3<-aSGenomes[aSGenomes$archive=="SRA",]$archive_accession
SRS_aSGenomes<-list()
for (i in dummie3){
  SRS_aSGenomes<-c(SRS_aSGenomes,as.list(strsplit(i,","))[[1]])
}
SRS_aSGenomes<-as.data.frame(rown.names=NULL, x=SRS_aSGenomes)
write.table(x=SRS_aSGenomes,"SRS_aSGenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")


#Get all ERS codes from the AncientMetagenomeDir of Single aMetagenomes
dummie4<-aSGenomes[aSGenomes$archive=="ENA",]$archive_accession
ERS_aSGenomes<-list()
for (i in dummie4){
  ERS_aSGenomes<-c(ERS_aSGenomes,as.list(strsplit(i,","))[[1]])
}
ERS_aSGenomes<-as.data.frame(rown.names=NULL, x=ERS_aSGenomes)
write.table(x=ERS_aSGenomes,"ERS_aSGenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")

#Save file with SRR accessions for aSGenomes
aSGenomes_SRStoSRR <- read_table2("/Volumes/@home/aSGenomes_SRStoSRR.tsv", 
                                     col_names = FALSE)
SRR_aSGenomes<-unique(aSGenomes_SRStoSRR$X2)
SRR_aSGenomes<- SRR_aSGenomes[!is.na(SRR_aSGenomes)]
write.table(x=SRR_aSGenomes,"SRR_aSGenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")

#Save file with SRR accessions for aMetagenomes
aSGenomes_ERStoERR <- read_table2("/Volumes/@home/aSGenomes_ERStoERR.tsv", 
                                     col_names = FALSE)
ERR_aSGenomes<-unique(aSGenomes_ERStoERR$X2)
ERR_aSGenomes<- ERR_aSGenomes[!is.na(ERR_aSGenomes)]
write.table(x=ERR_aSGenomes,"ERR_aSGenomes.txt",row.names = FALSE, col.names= FALSE, sep="\n")
