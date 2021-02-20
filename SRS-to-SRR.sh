#!/usr/sbin/bash

x=$(esearch -db sra -query $1 | efetch -format runinfo | cut -d ',' -f 1 | grep SRR)

echo "$x" | while IFS= read -r line; do echo -e $1'\t'$line >> $2 ;done
