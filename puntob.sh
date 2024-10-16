#!/bin/bash

# Mostrar el resultado de lsblk
lsblk

# Crear particiones
echo -e "n\np\n1\n\n+2G\nn\np\n2\n\n+2G\nn\np\n3\n\n+2G\nn\ne\n4\n\n\nw" | fdisk /dev/sdX

# Formatear las particiones (reemplaza sdX con el nombre correcto de tu disco)
mkfs.ext4 /dev/sdX1
mkfs.ext4 /dev/sdX2
mkfs.ext4 /dev/sdX3
# La partición extendida no se formatea, pero podemos crear una lógica dentro de ella
# Asumiendo que la partición lógica se llamará /dev/sdX5

mkfs.ext4 /dev/sdX5

# Montar las particiones en /mnt/
mkdir -p /mnt/part1 /mnt/part2 /mnt/part3 /mnt/part4
mount /dev/sdX1 /mnt/part1
mount /dev/sdX2 /mnt/part2
mount /dev/sdX3 /mnt/part3
mount /dev/sdX5 /mnt/part4
