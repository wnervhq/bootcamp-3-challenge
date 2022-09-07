#!/bin/bash

#Crear imagen de Apache 
 echo -e "$lightRed'Crear imagen de Apache:'$endMod $nameImageContainer"  
 docker build -t $nameImageContainer . 