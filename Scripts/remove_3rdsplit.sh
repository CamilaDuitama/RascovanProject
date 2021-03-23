#!/bin/bash
while read -r line ;do
	accession=${line}
	if [[ $line == "\""* ]]; then
		accession=$(echo $line | cut -d'"' -f 2)
	fi

	if [ -f $2$accession"_2.fastq.gz" ]; then
        	rm $2$accession".fastq.gz" 
        fi
 done<$1
