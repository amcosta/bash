#!/bin/bash

for NOME in $(cat ./lista.txt)
do
    RESULTADO=$(getent passwd $NOME)
    if [ $? -eq 0 ]
    then
        echo "O usuário $NOME já esta cadastrado!"
    else
        useradd -m "$NOME"
        if [ $? -eq 0 ]
        then
            echo "O usuário $NOME foi cadastrado!"
        fi
    fi
done

exit 0
