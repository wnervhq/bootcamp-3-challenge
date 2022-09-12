#!/bin/bash

# Arrancar contenedor web
echo -e "$lightRed'Arrancar contenedor web:'$endMod docker-compose.yml"  
echo -e "${ligthGreen}docker-compose up -d${endMod}"
docker-compose up -d