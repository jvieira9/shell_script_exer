#!/bin/bash

clear

while true 
    do
        read -p "Qual a linha (2 a 24)? " linha
        tput cup 0 30
        read -p "Qual a coluna (2 a 80)? " coluna   
        if [ $linha -eq 1 ] || [ $linha -gt 24 ] || [ $coluna -gt 80 ]; then
            echo "Valores inválidos"
            sleep 1
            clear
        else
            tput cup $linha $coluna
            echo "X"
            tput cup 0 0
            echo -n "                             "
            tput cup 1 0
            echo -n "                             "
            tput cup 0 0
        fi
    done