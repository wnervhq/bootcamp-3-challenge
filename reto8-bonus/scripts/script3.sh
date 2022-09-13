#!/bin/bash

# "Listar imagenes locales"
echo -e "${lightRed}'Listar imagenes locales:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker images${endMod}"
docker images