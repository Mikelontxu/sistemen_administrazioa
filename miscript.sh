#!/bin/bash

echo "Hola mundo"
echo "Hola " $1
echo "Introduce un numero: "
read numero
echo "El numero es " $numero

if [! $numero -eq 5]
then
	echo "El numero es 5"
else
	echo "Zure zenbakia 01239123898134398143 da."
fi
