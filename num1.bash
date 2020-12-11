#!/bin/bash

mkdir /home/user/test &&
{
echo "catalog test was created successfully" > report
a=$(date)
touch /home/user/test/"$a"
}
ping www.net_nikogo.ru || echo "$(date) не доступен" >> report
