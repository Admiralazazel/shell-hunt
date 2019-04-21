#!/bin/bash

# count the each word in the line of the file .profle
count=0
for i in $(cat ~/.profile); do
    count=$((count + 1))
    echo "Word $count ($i) contains $(echo -n $i | wc -c) characters"
done