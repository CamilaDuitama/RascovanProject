#!/bin/bash
while read -r line ;do
	if [ -f $2$line"_2.fastq.gz" ]; then
                echo $line : $2$line"_1.fastq.gz ;"$2$line"_2.fastq.gz"
        else
                echo $line : $2$line"_1.fastq.gz"
        fi
done<$1
