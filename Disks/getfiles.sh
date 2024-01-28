#!/bin/bash

for file in *.DIR; do
	#decb dir "$file"
	#echo "$file"
	cat "$file" | while read line || [[ -n $line ]];
	do
		if [[ $line == *" BAS"* ]]; then
		   echo $line
		   echo $file $line >> PROGRAMS.TXT
		fi
		#echo $line
	#decb dir "$file" >> "${file%.*}".DIR
	done
done
