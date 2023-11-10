#!/bin/bash

clear

while true 
    do
        read -p "Qual a linha (2 a 24)? " linha
        read -p "Qual a coluna (2 a 80)? " coluna   
        tput cup $linha $coluna
        echo "X"
        sleep 2
        tput clear cup 0 0
        echo -n
    done