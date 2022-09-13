#!/bin/bash

# "Construir imagen"
echo -e "${lightRed}'Construir imagen:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker build -t ${nameImageContainer} .${endMod}"
docker build -t ${nameImageContainer} pokepy/.