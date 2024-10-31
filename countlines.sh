#!/bin/bash

for arg in "$@";
	do FILE=$arg;
	NLINES=$(cat $FILE | wc -l)
	FNAME=$(basename "$FILE")

	if [[ $NLINES -gt 1 ]];
	then echo $FNAME has $NLINES lines;
	elif [[ $NLINES -eq 1 ]];
	then echo $FNAME has 1 line;
	else echo $FNAME has 0 lines;
	fi;
done;
	
