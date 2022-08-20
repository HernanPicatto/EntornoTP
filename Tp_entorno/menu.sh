#!/bin/bash 
[[ $# -ne 0 ]]; texto=$1

while true;
do
	while [[ ! -f $texto ]]; do 
		echo -n "Ingrese archivo para trabajar o 'exit'  para salir: " 
		read texto
		case $texto in 
			[Ee][Xx][Ii][Tt]) exit 0 ;;
		esac
	done	

	PS3="Selecciona una operación: " 
	select pepe in statsWords statsUsageWords findNames statsSentences blankLinesCounter caseConverter substringReplace blockSelection palindromeDetection salir; 

	do 
		case $pepe in 
			statsWords) 
				./statsWords.sh $texto
				;; 
			statsUsageWords) 
				./statsUsageWords.sh $texto | sort -nr | uniq | head
		
				;; 
			findNames) 
			
				./findNames.sh $texto
				;; 
			statsSentences) 
				./statsSentences.sh $texto
				;; 
			blankLinesCounter)
				./blankLinesCounter.sh $texto
				;;
		    	caseConverter)
		        	./caseConverter.sh $texto
		       		;;
		   	substringReplace)
		       		 echo -n "Ingrese la cadena a reemplazar: " 
		       		 read CA1
		       		 echo -n "Ingrese la cadena de reemplazo: "
		       		 read CA2
		        	./substringReplace.sh $texto $CA1 $CA2
		        	;;
			blockSelection)
		       		 echo -n "Ingrese letra P u O : " 
		       		 read Letra
		      		 echo -n "Ingrese el numero "
		       		 read num
		        	./blockSelection.sh $texto $Letra $num
			    	;;
			palindromeDetection)
			    	./palindromeDetection.sh $texto
			    	;;
			salir) 
				exit 0 
				;; 
			*) 
				echo "$REPLY no es una operación válida" 
				;; 
		    		esac 
	done
done
