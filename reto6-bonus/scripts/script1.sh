#!/bin/bash

# Build docker-compose.yml
echo -e "$lightRed'Construir docker-compose.yml y Dockerfile'$endMod" 
docker-compose build

# Creacion de contenedor, inicio y uso de variables de entorno docker-compose.yml
echo -e "$lightRed'# Creacion de contenedor, \
inicio y uso de variables de entorno docker-compose.yml'$endMod" 
docker-compose up -d