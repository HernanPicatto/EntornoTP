#!/bin/bash
        acc=0
        acc2=0
        cont=0
        max=0
        min=100
        prom=0
        while read linea; do
                for pal in $linea; do
                        pal_tam=`echo $pal | wc -c` 
                        pal_tam=$((pal_tam-1))
                        acc=$((acc+pal_tam))
                        acc2=$((acc2+pal_tam))
                        if [[ $pal =~ \.$ ]]
                        then
                                cont=$((cont+1))
                                if [[ $acc -gt $max ]]
                                then
                                        max=$acc
                                fi
                                if [[ $acc -lt $min ]]
                                then
                                        min=$acc
                                fi
                                acc=$((0))
                        fi
                done
        done < $1 
        prom=$((acc2/cont))
	retval="Max: $max       Min:$min        Prom:$prom"
        echo "$retval"

