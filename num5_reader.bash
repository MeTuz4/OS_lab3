#!/bin/bash

com="s"
num=1
(tail -f num5ch) |
while [ 0 ]
do
    read LINE
    if [[ $LINE == "M" ]]
    then
	com="m"
    else
    
    if [[ $LINE == "+" ]]
    then
	com="s"
	echo $com
    else
    
    if [[ $LINE == "QUIT" ]]
    then
	echo "Всё хорошо"
	killall tail
	exit
    else
    
    if ! [[ $LINE =~ ^[+-]?[0-9]+$ ]]
    then
	echo "ERROR"
	killall tail
	killall num5_gen.bash
	exit
    else
    case "$com" in
    m)
    let num=num+$LINE
    echo $num
    ;;
    s)
    let num=num+$LINE
    echo $num
    ;;
    esac
    fi
    fi
    fi
    fi
done