#!/bin/bash
if [ -n "$1" ]; then
FREESPACE=$1
else
FREESPACE=10
fi

let "LIMIT=100-$FREESPACE"

df -T | awk '{print $6,$NF}' | grep "[0-9]" | sed 's/%//' | while read OUTPUT;
do
  DUSAGE=`echo $OUTPUT | awk '{print $1}'`
  MPOINT=`echo $OUTPUT | awk '{print $2}'`
  if [ $DUSAGE -ge $LIMIT ]; then
      echo "Предупреждение! Свободного места меньше $FREESPACE% -- $MPOINT"  
    else   
      echo "Свободного места достаточно"
  fi
done   
