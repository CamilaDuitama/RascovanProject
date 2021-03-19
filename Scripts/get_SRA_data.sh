#!/usr/bin/bash

fastq-dump --split-3 -A $1 --gzip -O /pasteur/sonic/homes/cduitama/SRA_Downloads

echo "Accession number  $1 was downloaded"	
