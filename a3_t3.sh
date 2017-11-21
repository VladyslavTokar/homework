#!/bin/bash
find $1 -print | while read OUTPUT
do
  if [ -d $OUTPUT ]; then
      echo "Directory: $OUTPUT"
  elif [ -f $OUTPUT ]; then
      if [ `file --mime-encoding "$OUTPUT" | awk '{print $2}'` == "binary" ]; then      
        echo " File:  $OUTPUT"
      else 
        echo " File:  $OUTPUT has `wc -l < $OUTPUT` lines"
      fi
  fi
done
#The script isn't complete!
