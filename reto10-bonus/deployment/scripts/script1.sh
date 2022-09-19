#!/bin/bash

# Construir Imagenes Base
echo -e "${lightRed}'Construir Imagenes Base:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker-compose build${endMod}"
docker-compose build