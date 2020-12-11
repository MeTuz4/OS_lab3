#!/bin/bash

while [ 0 ]
do
    read LINE
    case $LINE in
	+)
	    kill -USR1 $(cat .pid)
	;;
	TERM)
	    kill -SIGTERM $(cat .pid)
	    exit
	;;
	"M" | "m")
	    kill -USR2 $(cat .pid)
	;;
	*)
	    :
	;;
    esac
done