#!/bin/bash

for file in PROGRAMS.TXT; do
	#decb dir "$file"
	#echo "$file"
	cat "$file" | while read line || [[ -n $line ]];
	do
		if [[ $line == *"BAS"* ]]; then
		   echo $line
		   eval $line
		fi
		#echo $line
	#decb dir "$file" >> "${file%.*}".DIR
	done
done
