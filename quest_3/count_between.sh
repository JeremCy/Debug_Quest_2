#!/bin/bash
read a
read b
if [ "$a" -ge "$b" ]; then
    echo "Invalid"
    exit
fi
echo "Result: $(($(seq $a $b | wc -l)-1))"