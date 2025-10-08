#!/bin/bash

# Verificar si se pasó un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_fichero_o_directorio>"
    exit 1
fi

# Verificar si es un fichero
if [ -f "$1" ]; then
    more "$1"
# Verificar si es un directorio
elif [ -d "$1" ]; then
    ls "$1"
else
    echo "Error: '$1' no es un fichero ni un directorio válido."
    exit 2
fi

