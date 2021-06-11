#!/bin/bash
# $1 is file with run accession
# $2 is folder where aMetagenome fastqfiles are
# $3 is folder where mMetagenome fastqfiles are
# $4 is folder where trimmed aMetagenome fastqfiles are gonna be located
# $5 is folder where trimmed mMetagenome fastqfiles are gonna be located

while read -r line ;do

	accession=${line}
	if [[ $line == "\""* ]]; then
		accession=$(echo $line | cut -d'"' -f 2)
	fi

	if [ -f $2$accession"_2.fastq.gz" ]; then	
		fastp -i $2$accession"_1.fastq.gz" -I $2$accession"_2.fastq.gz" -o $4$accession"_1.fastq.gz" -O $4$accession"_2.fastq.gz" -w 5

       	elif [ -f $3$accession"_2.fastq.gz" ]; then
		fastp -i $3$accession"_1.fastq.gz" -I $3$accession"_2.fastq.gz" -o $5$accession"_1.fastq.gz" -O $5$accession"_2.fastq.gz" -w 5  
	
	elif [ -f $2$accession".fastq.gz" ]; then
		fastp -i $2$accession".fastq.gz" -o $4$accession".fastq.gz" -w 5

        elif [ -f $3$accession".fastq.gz" ]; then
		fastp -i $3$accession".fastq.gz" -o $5$accession".fastq.gz" -w 5
	
	fi

 done<$1
