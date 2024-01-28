#!/bin/bash

for file in Disks"${D}"/*; do
	#decb dir "$file"
	echo "$file"
	decb dir "$file" >> "${file%.*}".DIR
done
