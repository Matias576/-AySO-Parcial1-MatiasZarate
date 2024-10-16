#!/bin/bash

# Crear el directorio Estructura_Asimetrica
mkdir -p Estructura_Asimetrica/correo Estructura_Asimetrica/clientes

# Crear archivos en la carpeta correo
for i in $(seq -f "%03g" 1 100); do
    touch Estructura_Asimetrica/correo/cartas$i
done

for i in $(seq -f "%02g" 1 10); do
    touch Estructura_Asimetrica/correo/carteros$i
done

# Crear archivos en la carpeta clientes
for i in $(seq -f "%03g" 1 100); do
    touch Estructura_Asimetrica/clientes/cartas$i
done

# Validar la estructura
tree Estructura_Asimetrica
