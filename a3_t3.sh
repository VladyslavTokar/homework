#!/bin/bash
find $1 -print | while read OUTPUT
do
  if [ -d $OUTPUT ]; then
      echo "Directory: $OUTPUT"
  elif [ -f $OUTPUT ]; then
      IS_ELF=`file SOUTPUT | grep ELF`
      if [ -z "$IS_ELF" ]; then      
        echo " File:  $OUTPUT has `wc -l < $OUTPUT` lines"
      else 
        echo " File:  $OUTPUT"
      fi
  fi
done
#The script isn't complete!
