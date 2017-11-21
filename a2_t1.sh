#!/bin/bash
a=5000
b=30000

echo "Please, type your salary: " 
read salary

if [ $salary -lt $a ]; then 
echo "Your tax is: 0"

elif [ $salary -ge $a -a $salary -le $b ]; then
let z=10*$salary/100; echo "Your tax is: $z"

elif [ $salary -gt $b ]; then
let y=20*$salary/100;echo "Your tax is: $y"

fi
