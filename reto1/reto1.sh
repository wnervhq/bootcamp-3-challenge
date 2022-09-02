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
imageBase="nginx" 
nameContainer="servidor_web"
portContainer="8181"
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
echo "Ejercicio de contenedores"
echo "========================="
PS3="Elija la actividad a realizar: "

items=("Creacion y comprobacion de estado contenedor" 
        "Enlace para verificacion en navegador web" 
        "Mostrar imagenes locales de dockers" 
        "Eliminar contenedor" )

while true; do
    select item in "${items[@]}" Salir
    do
        case $REPLY in
            1) echo "se procedera a ejecutar el script script1.sh"
                echo $item
                source $currentDir/$scriptFolder/script1.sh $imageBase $nameContainer $portContainer

                echo "================================"
                echo "================================"; break;;
            2) echo "se procedera a ejecutar el script script2.sh"
                echo $item
                source $currentDir/$scriptFolder/script2.sh $portContainer
                echo "================================"
                echo "================================"; break;;
            3) echo "se procedera a ejecutar el script script3.sh"
                echo $item
                source $currentDir/$scriptFolder/script3.sh
                echo "================================"
                echo "================================"; break;;
            4) echo "se procedera a ejecutar el script script4.sh"
                echo $item
                source $currentDir/$scriptFolder/script4.sh $nameContainer
                echo "================================"
                echo "================================"; break;;
            $((${#items[@]}+1))) echo "a descansar!, tomar agua debes"; break 2;;
            *) echo "Ooops - opción desconocida $REPLY"; break;
        esac
    done
done