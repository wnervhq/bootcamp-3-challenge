#!/bin/bash
# ===================================================================================
##format as variable
lightRed="\e[101m"
ligthGreen="\e[42m"
blue="\e[44m"
endMod="\e[0m"
underlined="\e[4m"
# ===================================================================================
##datos de contenedor
imageBase="node:alpine" 
nameContainer="bootcamp_Node_container"
portContainer="4000"
volumeContainer="static_nodejs_content"
nameImageContainer="bootcamp_node.js"
dockerUser="wnervhq"
##variables de ubicacion
currentDir=$(pwd)
scriptFolder="scripts"
# ===================================================================================
# ===================================================================================
echo "validando que el directorio 'scripts' se encuentra"
echo "en la presente ruta de ejecución"
echo "================================"
echo "================================"
# read -p "Introduzca un directorio " directorio
if [ -d $scriptFolder ]
then 
	echo -e "$ligthGreen'el directorio '"$scriptFolder"' se encuentra disponible'$endMod"
	echo "================================"
    echo "================================"
else
	echo "El directorio no existe"
    echo -e "$lightRed'verifique que el directorio se encuentre en la actual ruta de ejecucion'$endMod"
    echo "se procede a salir del script principal"
    exit 1
fi 

# ===================================================================================
# ===================================================================================
## Bash Menu Script
echo -e "$underlined $blue Clase 4 - Dockers $endMod"
echo -e "Ejercicio de contenedores: $lightRed'RETO5'$endMod"
echo "========================="
PS3="Elija la actividad a realizar: "

items=("Creacion y comprobacion archivo Dockerfile" 
        "Crear volumen" 
        "Contruir imagen del contenedor"
        "Crear contenedor"
        "Mostrar enlace de acceso web"
        "Deploy a DockerHub"
        "Ejecutar todos los scripts")

while true; do
    select item in "${items[@]}" Salir
    do
        case $REPLY in
            1) echo "se procedera a ejecutar el script script1.sh"
                echo $item
                source $currentDir/$scriptFolder/script1.sh
                echo "================================"
                echo "================================"; break;;
            2) echo "se procedera a ejecutar el script script2.sh"
                echo $item
                source $currentDir/$scriptFolder/script2.sh
                echo "================================"
                echo "================================"; break;;
            3) echo "se procedera a ejecutar el script script3.sh"
                echo $item
                source $currentDir/$scriptFolder/script3.sh
                echo "================================"
                echo "================================"; break;;
            4) echo "se procedera a ejecutar el script script4.sh"
                echo $item
                source $currentDir/$scriptFolder/script4.sh
                echo "================================"
                echo "================================"; break;;
            5) echo "se procedera a ejecutar el script script5.sh"
                echo $item
                source $currentDir/$scriptFolder/script5.sh
                echo "================================"
                echo "================================"; break;;
            6) echo "se procedera a ejecutar el script script6.sh"
                echo $item
                source $currentDir/$scriptFolder/script6.sh
                echo "================================"
                echo "================================"; break;;
            7) echo "se procedera a ejecutar todos los scripts en secuencia"
                echo $item
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script1.sh
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script2.sh
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script3.sh
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script4.sh
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script5.sh
                echo -e "${blue}================================${endMod}"
                    read -t 5 -p "Presiona ENTER para continuar o espera 5 segundos"
                source $currentDir/$scriptFolder/script6.sh
                echo -e "${blue}================================${endMod}"
                echo "================================"; break;;
            $((${#items[@]}+1))) echo "a descansar!, tomar agua debes"; break 2;;
            *) echo "Ooops - opción desconocida $REPLY"; break;
        esac
    done
done