#!/bin/bash
a=5000
b=30000

echo "Please, type your salary: " 
read salary

if [ $salary -lt $a ]; then 
echo "Your tax is: 0%"

elif [ $salary -ge $a -a $salary -le $b ]; then
echo "Your tax is: 10%"

elif [ $salary -gt $b ]; then
echo "Your tax is: 20%"

fi
