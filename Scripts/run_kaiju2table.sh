#!/bin/bash
# $1 is nodes file
# $2 is fmi file
# $3 folder where trimmed aOral metagenomes are located
# $4 folder where trimmed mMetagenomes are located
# $5 folder where .out files should be located
# $6 folder where .tsv tables should be located
# $7 file with all run accessions
# $8 number of cores
# $9 is names file


while read -r line ; do

        accession=${line}
        if [[ $line == "\""* ]]; then
                accession=$(echo $line | cut -d'"' -f 2)
        fi
	
	if [ ! -f $5$accession".out" ]; then
        	if [ -f $3$accession"_2.fastq.gz" ]; then

              	 	kaiju -t $1 -f $2 -i $3$accession"_1.fastq.gz" -j $3$accession"_2.fastq.gz" -o $5$accession".out" -z $8

                	kaiju2table -t $1 -n $9 -r genus -o $6$accession".tsv" $5$accession".out"

               		echo "Accession "$accession" was processed"

        	elif [ -f $4$accession"_2.fastq.gz" ]; then

               		kaiju -t $1 -f $2 -i $4$accession"_1.fastq.gz" -j $4$accession"_2.fastq.gz" -o $5$accession".out" -z $8

                	kaiju2table -t $1 -n $9 -r genus -o $6$accession".tsv" $5$accession".out"

                	echo "Accession "$accession" was processed"


        	elif [ -f $3$accession".fastq.gz" ]; then

               		kaiju -t $1 -f $2 -i $3$accession".fastq.gz" -o $5$accession".out" -z $8

                	kaiju2table -t $1 -n $9 -r genus -o $6$accession".tsv" $5$accession".out"

                	echo "Accession "$accession" was processed"

        	elif [ -f $4$accession".fastq.gz" ]; then

                	kaiju -t $1 -f $2 -i $4$accession".fastq.gz" -o $5$accession".out" -z $8

                	kaiju2table -t $1 -n $9 -r genus -o $6$accession".tsv" $5$accession".out"

                	echo "Accession "$accession" was processed"

               fi
	fi
 done<$7
