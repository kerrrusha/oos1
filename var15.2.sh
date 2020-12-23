#!/bin/bash

input=`cat $1` 

for ((i = 0; i < ${#input}; i++))
do reversed[$i]=${input:$((${#input}-i-1)):1}
done

printf '%s' "${reversed[@]}" > example.txt
echo "File $1 was fully reversed."
