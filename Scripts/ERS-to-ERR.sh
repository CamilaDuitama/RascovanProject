#!/usr/bin/bash

x=$(esearch -db sra -query $1 | efetch -format runinfo | cut -d ',' -f 1 | grep ERR)

echo "$x" | while IFS= read -r line; do echo -e $1'\t'$line;done
