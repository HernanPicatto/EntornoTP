#!/bin/bash

max=0
min=100
cont=0
acc=0
result=0
prom=0
while read linea; do
	for pal in $linea; do
		pal1=`echo $pal | tr -cd 'A-z'`
		pal_tam=`echo $pal1 | wc -c`
		pal_tam=$((pal_tam-1))
		cont=$((cont+1))
		acc=$((acc+pal_tam))
		if [[ $pal_tam -gt $max ]]
		then
			max=$pal_tam
		fi
		if [[ $pal_tam -lt $min ]]
		then
			min=$pal_tam
		fi
	done
done < $1 
prom=$((acc/cont))
echo "Max: $max       Min:$min        Prom:$prom"


