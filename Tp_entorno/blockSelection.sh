#!/bin/bash
cont=1
aux=$3
oracion=""
if [[ $2 == "P" ]]
then
    while read linea; do
        for pal in $linea; do
		if [[ $pal =~  \.'\n'$ ]] 
		then
			cont=$((cont+1))
		fi
        	if [[ $cont == $aux ]]
        	then
            		echo -n "$pal "
        	fi
	done	
    done <$1
fi
if [[ $2 == "O" ]]
then
    while read linea; do
        for pal in $linea; do
            if [[ $cont == $((aux-1)) ]]
            then
                oracion=`echo $oracion $pal`
            fi
            if [[ $pal =~ \.$ ]]
            then
                cont=$((cont+1))
            echo $linea
            fi 
        done
    done <$1
fi
    
        
