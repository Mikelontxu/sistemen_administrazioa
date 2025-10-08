#!/bin/bash

# Comprobar que los archivos existen
if [ ! -f cuerpo.txt ] || [ ! -f nombres.txt ]; then
    echo "Faltan cuerpo.txt o nombres.txt"
    exit 1
fi

# Leer cada nombre del archivo
while IFS= read -r nombre; do
    # Crear un archivo nuevo para cada nombre
    archivo="email_${nombre}.txt"
    
    # Reemplazar la palabra NOMBRE por el nombre real y guardar
    sed "s/NOMBRE/$nombre/g" cuerpo.txt > "$archivo"
    
    echo "Generado: $archivo"
done < nombres.txt

