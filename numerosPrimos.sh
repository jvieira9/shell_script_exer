#!/bin/bash

clear
printf "Digite um numero: "
read numero

if [ $? -eq 0 ]; then
    printf "Numeros primos de 1 a $numero\n"
else
    printf "Erro na execucao do script!\n"
fi

for ((i=1; i<=$numero; i++)); do
    primo=0
    for ((j=1; j<=$i; j++)); do
        if [ $((i%j)) -eq 0 ]; then
            primo=$((primo+1))
        fi
    done
    if [ $primo -eq 2 ]; then
        echo "$i"
    fi
done