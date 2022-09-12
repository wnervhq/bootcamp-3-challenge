#!/bin/bash

# Borrar contenedor web
echo -e "$lightRed'Borrar contenedor web'$endMod"  
echo -e "${blue}docker-compose down${endMod}"
docker-compose down

echo -e "${blue}docker rmi ${nameImageContainer}${endMod}"
docker rmi ${nameImageContainer}