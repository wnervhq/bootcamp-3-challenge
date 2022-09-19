#!/bin/bash

# DeConstruir Docker-compose
echo -e "${lightRed}'DeConstruir Docker-compose:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker-compose down${endMod}"
docker-compose down