#!/bin/bash

# "Exportar imagen a Docker Hub"
echo -e "${lightRed}'Exportar imagen a Docker Hub:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
#docker login
echo -e "${ligthGreen}'docker login'${endMod}" 
docker login
#- Push en el registry
echo -e "${ligthRed}'Push en DockerHub'${endMod}" 
echo -e "${ligthGreen}docker push $nameImageContainer${endMod}"
docker push $nameImageContainer