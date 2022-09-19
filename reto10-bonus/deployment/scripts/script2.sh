#!/bin/bash

# "Desplegar contenedor de BD y App"
echo -e "${lightRed}'Desplegar contenedor de BD y App:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker-compose up${endMod}"
docker-compose up