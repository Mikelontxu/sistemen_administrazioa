#!/bin/bash

gehiketa=0

for n in $*; do
  gehiketa=$((gehiketa + n))
done

fitxategia="${gehiketa}.t"

if [ -f "$fitxategia" ]; then
  rm "$fitxategia"
  echo "Fichero $fitxategia borrado."
else
  echo "El fichero $fitxategia no existe."
fi
