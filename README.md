# RascovanProject
Project to remove contaminants and separate ancient from modern sequences based on a matrix of k-mer abundances.
## Data
### Ancient Metagenomes (aMetagenomes)
SRA accessions were downloaded from [AncientMetagenomeDir](https://github.com/SPAAM-community/AncientMetagenomeDir/blob/master/ancientmetagenome-hostassociated/ancientmetagenome-hostassociated.tsv) and converted to SRR accessions using Entrez Utilities as in the [SRS-to-SRR.sh](Scripts/SRS-to-SRR.sh) script.
### Ancient Single Genomes (aSGenomes)
SRA accessions were downloaded from [AncientmetagenomeDir](https://github.com/SPAAM-community/AncientMetagenomeDir/blob/master/ancientsinglegenome-hostassociated/ancientsinglegenome-hostassociated.tsv) and converted to SRR accessions using Entrez Utilities as in the [SRS-to-SRR.sh](Scripts/SRS-to-SRR.sh) script.
### Modern Homo Sapiens Oral Metagenomes
Bioproject PJRNA Accessions were obtained from [1]


## References
1) https://www.nature.com/articles/s41597-021-00816-y
2) https://royalsocietypublishing.org/doi/pdf/10.1098/rstb.2019.0573
