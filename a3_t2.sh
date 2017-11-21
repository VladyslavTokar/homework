#!/bin/bash

#v.1
fwhat=resolv.conf
fpath=`find / -name "$fwhat" 2>/dev/null | grep /etc/"$fwhat"`
if [ -n "$fpath" ]; then
count=`grep nameserver "$fpath" | wc -l`
echo "In the file "$fwhat": $count DNS srv"
 else
echo "Can't find the file"
fi

#v.2
#fwhat=resolv.conf
#fwhere=/
#kword=nameserver
#file_path=$(find $fwhere -name $fwhat 2>/dev/null)
#case "$file_path" in
#*[$fwhat]  ) count=`grep -o $kword  /etc/$fwhat | wc -l`;;
#*         ) echo "Can't find the file"
#esac
#echo "DNS Servers in file $fwhat is $count"
