#!/bin/bash
# ===================================================================================
##format as variable
lightRed="\e[101m"
ligthGreen="\e[42m"
blue="\e[44m"
endMod="\e[0m"
underlined="\e[4m"
##format for text
pBlack=$(tput setaf 0)
pRed=$(tput setaf 1)
pGreen=$(tput setaf 2)
pYellow=$(tput setaf 3)
pLime_yellow=$(tput setaf 190)
pPowder_blue=$(tput setaf 153)
pBlue=$(tput setaf 4)
pMagenta=$(tput setaf 5)
pCyan=$(tput setaf 6)
pWhite=$(tput setaf 7)
pBright=$(tput bold)
pNormal=$(tput sgr0)
pBlink=$(tput blink)
pReverse=$(tput smso)
pUnderline=$(tput smul)
# ===================================================================================
##variables de ubicacion
currentDir=$(pwd)
scriptFolder="scripts"
environmentFile=".env"
environmentFileExample=".env.example"
# ===================================================================================
# ====Validacion directorio Scripts==================================================
echo "validando que el directorio ${pRed}${pUnderline}'${scriptFolder}'${pNormal} se encuentra"
echo "en la presente ruta de ejecución"
echo "================================"
echo "================================"
if [ -d $scriptFolder ]
then 
    echo "${pGreen}'el directorio '"$scriptFolder"' se encuentra disponible'${pNormal}"
	echo "================================"
    echo "================================"
else
	echo "El directorio no existe"
    echo -e "$lightRed'verifique que el directorio se encuentre en la actual ruta de ejecucion'$endMod"
    echo "se procede a salir del script principal"
    exit 1
fi 
sleep 3
# ===================================================================================
# ====Validacion archivo ENV======================================================================
echo "validando que el archivo ${pRed}${pUnderline}'${environmentFile}'${pNormal} se encuentre"
echo "en la presente ruta de ejecución"
echo "================================"
echo "================================"
if [ -f $environmentFile ]
then 
    echo "${pGreen}'el archivo '"${environmentFile}"' se encuentra disponible'${pNormal}"
	echo "================================"
    cat ${environmentFile}
    echo "================================"
else
	echo "El archivo ${environmentFile} no existe"
    echo -e "$lightRed'se generará una copia del archivo ejemplo ${environmentFileExample}'$endMod"
    cp ${environmentFileExample} ${environmentFile}
    echo "================================"
    cat ${environmentFile}
    echo "================================"
fi 
sleep 3
# ===================================================================================
# ===================================================================================
# ===================================================================================
echo "${pGreen}Bienvenido ${pBlink}Humano..${pNormal}"
echo "se procederá a desplegar la tarea solicitada.."
echo "si lo piensas demasiado procederé automaticamente..."
printf "%s\n" 
while true; do
    read -t 10 -p 'Ejecutar automaticamente? (y/n): ' answer
    case "${answer:-Y}" in
        [Yy]* )
            printf "%s\n" "${pYellow}se procedera con todo${pNormal}"
            echo -e "${blue}================================${endMod}"
            source $currentDir/$scriptFolder/script1.sh
            echo -e "${blue}================================${endMod}"
            source $currentDir/$scriptFolder/script2.sh
            echo -e "${blue}================================${endMod}"
            echo "${pLime_yellow}a descansar!, tomar agua debes${pNormal}"
            echo "================================"; exit 1;;
        [Nn]* )
            printf "%s\n" "${pPowder_blue}mmm quieres ir por el lado rudo... ok${pNormal}"
            echo ""
            break;;
        * )
            printf "%s\n" "Solo tienes dos caminos ${pGreen}INSECTO ${pRed}n_n${pNormal}... “y” o “n”."
            printf "%s\n"
    esac
done



# ===================================================================================
# ===================================================================================
## Bash Menu Script
echo -e "$underlined $blue Clase 4 - Dockers $endMod"
echo -e "Ejercicio de contenedores: $lightRed'RETO10'$endMod"
echo "========================="
PS3="Elija la actividad a realizar: "

items=("Construir Imagenes Base"
        "Desplegar contenedor de BD y App"
        "DeConstruir Docker-compose"
        "DeConstruir Imagenes Base"        )

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
            $((${#items[@]}+1))) echo "a descansar!, tomar agua debes"; break 2;;
            *) echo "Ooops - opción desconocida $REPLY"; break;
        esac
    done
done