#!/bin/bash

# Crear volumen 
echo -e "$lightRed'Crear volumen:'$endMod $volumeContainer" 
docker volume create $volumeContainer