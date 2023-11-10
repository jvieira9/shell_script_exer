#!/bin/bash

clear
printf "Digite o numero: "
read tabuada
clear

if [ $? -eq 0 ]; then
    printf "Tabuada do $tabuada\n"
else
    printf "Erro na execucao da tabuada!\n"
fi

for x in {1..10}; do
    echo "$tabuada x $x = $((tabuada*x))"
done