#!/bin/bash

# Archivo de salida
output_file="Filtro_Basico.txt"

# Obtener la información total de memoria RAM
echo "Total de memoria RAM:" > $output_file
grep "MemTotal" /proc/meminfo >> $output_file

# Obtener la información del fabricante del chassis
echo -e "\nFabricante del chassis:" >> $output_file
dmidecode -t chassis | grep "Manufacturer" >> $output_file
