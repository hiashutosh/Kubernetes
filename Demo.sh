#!/bin/bash

echo "Enter filename to print from awk"
read filename

if [[ -f $filename ]]
then
    echo "subsritute i with I "
    cat $filename | sed 's/i/I/'
    echo "substitute all i "
    sed 's/i/I/g' $filename
    echo "store o/p in another file, give filename"
    read filename2
    sed 's/i/I/g' $filename > $filename2
    echo "store o/p in same file"
    sed -i 's/i/I/g' $filename
    
else
    echo "$filename doesn't exists"
fi

