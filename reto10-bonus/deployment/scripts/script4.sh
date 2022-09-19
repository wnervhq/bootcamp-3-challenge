#!/bin/bash

# DeConstruir Imagenes Base
echo -e "${lightRed}'DeConstruir Imagenes Base:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "${ligthGreen}docker rmi deployment-hello-node:latest && docker rmi deployment-hello-python:latest${endMod}"
docker rmi deployment-hello-node:latest && docker rmi deployment-hello-python:latest