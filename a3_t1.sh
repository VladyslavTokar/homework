#!/bin/bash
E_ARG=65
E_FEW_ARG=66
if [ -z $1 ]; then
    echo "$E_ARG : argument is needed"
  elif [ $# -eq 1  ]; then
    echo "$E_FEW_ARG : isn't interesting, type more arguments"
  else
#v.for
for a  
do
  echo  "$a"
  shift
done

#v.until
#until [ -z "$1" ]  
#do
#  echo  "$1 "
#  shift
#done

#v.while
#while [ -n "$1" ]  
#do
#  echo  "$1 "
#  shift
#done

fi
