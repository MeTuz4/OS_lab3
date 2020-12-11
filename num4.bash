#!/bin/bash

a=2
{
while [ 0 ]
do
let a=a+2
echo $a > num4inf
done
} &
