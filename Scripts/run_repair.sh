#!/bin/bash
# $1 is the file of accessions to be ordered
# $2 is the folder where mMetagenomes are located
# $3 is the folder where aOral Metagenomes are located
# $4 folder where ordered files should go


while read -r line ; do

accession=${line}
        if [[ $line == "\""* ]]; then
                accession=$(echo $line | cut -d'"' -f 2)
        fi
	
	
	if [ -f $2$accession"_2.fastq.gz" ]; then

		repair.sh in=$2$accession"_1.fastq.gz" in2=$2$accession"_2.fastq.gz" out=$4$accession"_1.fastq.gz" out2=$4$accession"_2.fastq.gz" overwrite=f

	elif [  -f $3$accession"_2.fastq.gz" ]; then
			
		repair.sh in=$3$accession"_1.fastq.gz" in2=$3$accession"_2.fastq.gz" out=$4$accession"_1.fastq.gz" out2=$4$accession"_2.fastq.gz" overwrite=f

	fi	

 done<$1
