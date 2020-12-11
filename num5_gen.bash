#!/bin/bash

while [ 0 ]
do
    read LINE
    echo $LINE > num5ch
    if [[ $LINE == "QUIT ]]
    then
	echo "Стандартный выход"
	exit
    fi
done