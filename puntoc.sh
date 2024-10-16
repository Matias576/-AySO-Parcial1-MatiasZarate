#!/bin/bash

# Crear grupos si no existen
sudo groupadd -f grupodevops
sudo groupadd -f grupodevelopers
sudo groupadd -f grupotesters

# Crear usuarios si no existen y agregar grupos secundarios
if ! id "developer1" &>/dev/null; then
    sudo useradd -m -G grupodevops,grupodevelopers developer1
fi

if ! id "tester1" &>/dev/null; then
    sudo useradd -m -G grupotesters tester1
fi

if ! id "devops1" &>/dev/null; then
    sudo useradd -m -G grupodevops,grupodevelopers devops1
fi

if ! id "devops2" &>/dev/null; then
    sudo useradd -m -G grupodevops devops2
fi

# Ajustar permisos para las carpetas
sudo chown developer1:developer1 /ExamenesUTN/alumno_1
sudo chmod 700 /ExamenesUTN/alumno_1

sudo chown tester1:tester1 /ExamenesUTN/alumno_2
sudo chmod 700 /ExamenesUTN/alumno_2

sudo chown devops1:devops1 /ExamenesUTN/alumno_3
sudo chmod 770 /ExamenesUTN/alumno_3

sudo chown devops2:devops2 /ExamenesUTN/profesores
sudo chmod 750 /ExamenesUTN/profesores

# Crear el archivo validar.txt con el comando whoami en cada carpeta
sudo -u developer1 bash -c "echo \$(whoami) > /ExamenesUTN/alumno_1/validar.txt"
sudo -u tester1 bash -c "echo \$(whoami) > /ExamenesUTN/alumno_2/validar.txt"
sudo -u devops1 bash -c "echo \$(whoami) > /ExamenesUTN/alumno_3/validar.txt"
sudo -u devops2 bash -c "echo \$(whoami) > /ExamenesUTN/profesores/validar.txt"
