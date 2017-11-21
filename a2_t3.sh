#!/bin/bash
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

#v.1
a1=`echo $BUFFETT | sed 's/snow/foot/'`
a2=`echo $a1 | sed 's/snow//'`
a3=`echo $a2 | sed 's/finding/getting/'`
a4=`echo $a3 | sed 's/wet.*$/wet/'`
echo $a4


#v.2
#a1=${BUFFETT/snowball/football}
#a2=${a1/snow /}
#a3=${a2/finding/getting}
#pattern1=and*.
#a4=${a3%$pattern1}
#echo $a4
