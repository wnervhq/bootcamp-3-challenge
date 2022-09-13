#!/bin/bash

# "Instanciar contenedor en base a imagen generada"
echo -e "${lightRed}'Instanciar contenedor en base a imagen generada:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker run -d --name ${nameContainer} -p ${portContainer} ${nameImageContainer}${endMod}"
docker run -d --name ${nameContainer} -p ${portContainer} ${nameImageContainer}