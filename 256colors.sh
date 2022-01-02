#!/bin/sh

# prints out all 256 supported terminal colors
# your terminal must support 256 colors and ANSI escape sequences

COL=8
[ "$1" ] && COL="$1"
i=0
while [ $i -lt 255 ]
do 
  col=$((i%COL))
  [ $col -eq 0 ] && printf "\n";
  printf "\033[38;5;${i}m${i}\t"
  i=$((i+1))
done
printf "\n"
