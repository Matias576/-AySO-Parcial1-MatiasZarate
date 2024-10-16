#!/bin/bash

# Crear el directorio si no existe
mkdir -p $HOME/parcial1

# Crear el archivo y agregar la información
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > $HOME/parcial1/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> $HOME/parcial1/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow)" >> $HOME/parcial1/Filtro_Avanzado.txt

echo "Archivo $HOME/parcial1/Filtro_Avanzado.txt creado con éxito."

