#!/bin/bash


while read linea; do
	for pal in $linea; do
		pal1=`echo $pal | tr -cd 'A-z'`
		pal_tam=`echo $pal1 | wc -c`
		pal_tam=$((pal_tam-1))
		if [[ $pal =~ ^[A-Z][a-z]+ ]]
		then
			echo -n $pal1,
		fi
	done
done < $1 

