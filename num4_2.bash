#!/bin/bash

nice -n 20 ./num4.bash &
sleep 10
nice -n 0 ./num4.bash &
sleep 10
nice -n 0 ./num4.bash &