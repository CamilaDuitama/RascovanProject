#!/bin/bash

while read -r line ;do

	taxon=${line}
	
	if [ -f $taxon ]; then
		
		awk 1 $taxon >> $2

	else

		wget "http://taxonomy.jgi-psf.org/tax/sc_name/"$taxon

		awk 1 $taxon  >> $2

	fi

done<$1

