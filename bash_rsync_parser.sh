#!/bin/bash

array_len=$#
#echo "no of arguements : " $array_len
array_of_arguements=( "$@" )
#echo "entire array_of_arguements : " ${array_of_arguements[@]}

dest=${array_of_arguements[$array_len-1]}
#echo $dest 

#remove the last element from the array
unset array_of_arguements[$array_len-1]
#echo "entire array_of_arguements : " ${array_of_arguements[@]}

for source_file in "${array_of_arguements[@]}"
do
	:
	echo "**** " $source_file
	echo `rsync -r $source_file $dest -n -i --times` > /tmp/input_to_lex
	./a.out < /tmp/input_to_lex
	echo  ""

done

