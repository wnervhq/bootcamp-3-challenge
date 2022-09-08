#!/bin/bash

#Deploy a DockerHub
echo -e "$lightRed'Deploy a DockerHub'$endMod" 
#docker login
echo -e "$ligthGreen'docker login'$endMod" 
docker login
#- tagear la imagen
echo -e "$ligthGreen'Tagear la imagen'$endMod" 
docker tag $nameImageContainer $dockerUser/$nameImageContainer:v1.0.0 
#- Push en el registry
echo -e "$ligthGreen'Push en DockerHub'$endMod" 
docker push $dockerUser/$nameImageContainer:v1.0.0