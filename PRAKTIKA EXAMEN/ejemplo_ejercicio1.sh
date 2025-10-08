#!/bin/bash

read -p "Introduce un número entre 1 y 10 " num

cd $HOME
rm -rf ficheros
mkdir -p ficheros
cd ficheros

for (( i=0; i<=num; i++)); do
	if [ "$num" -lt 6 ];then
		echo "coche" > "fich_$i"
	fi
	if [ "$num" -ge 6 ];then
		echo "casa" > "fich_$i"
	fi
done

