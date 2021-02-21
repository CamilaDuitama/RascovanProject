#!/bin/bash
if [[ ! -e $1.fastq.gz && ! -e $1_1.fastq.gz && ! -e $1_2.fastq.gz ]];
then
	echo "$1"
fi

