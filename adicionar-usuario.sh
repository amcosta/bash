#!/bin/bash

for NOME in $(cat ./lista.txt)
do
    RETORNO=$(id "$NOME")
    if [ $? = 1 ]
    then
        echo "O usuário $NOME já esta cadastrado!"
    else
        useradd -m $NOME
        echo "O usuário $NOME foi cadastrado!"
    fi
done

exit 0
