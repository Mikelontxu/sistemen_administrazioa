#!/bin/bash

# Comprobamos que se ha pasado exactamente un parámetro
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 [nombre|uid|gid]"
    exit 1
fi

# Elegimos la columna por la que ordenar
case "$1" in
    nombre)
        # Ordenar por nombre de usuario (campo 1)
        sort -t: -k1 /etc/passwd
        ;;
    uid)
        # Ordenar por UID (campo 3)
        sort -t: -k3n /etc/passwd
        ;;
    gid)
        # Ordenar por GID (campo 4)
        sort -t: -k4n /etc/passwd
        ;;
    *)
        echo "Parámetro inválido. Usa: nombre, uid o gid."
        exit 1
        ;;
esac
