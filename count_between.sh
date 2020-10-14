#!/bin/bash
count=0
echo enter a
read a
echo enter b
read b
if [[ ( $a > $b ) ]];
    then 
        echo error
    else 
        for (( $a; $a <= $b; $a++ )) do count++ done
fi 
echo $count
exit