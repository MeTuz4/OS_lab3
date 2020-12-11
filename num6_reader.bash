#!/bin/bash

echo $$ > .pid
A=1
MODE="sum"
usr1()
{
    MODE="sum"
}
usr2()
{
    MODE="mul"
}
term()
{
    MODE="stop"
}
trap 'usr1' USR1
trap 'usr2' USR2
trap 'term' TERM
while [ 0 ]
do
    case $MODE in
	"sum")
	    let A=$A+2
	    echo $A
	;;
	"mul")
	    let A=$A*2
	    echo $A
	;;
	"stop")
	    echo "STOPPED by signal"
	    exit
	;;
    esac
    sleep 1
done