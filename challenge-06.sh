#!/bin/bash/

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 8/1/2022
# Purpose: Detects if a file or directory exists, then creates it if not

# Main

files=("conditional.sh" "function.sh" "loop.sh")

echo "Please enter File name"

read response

for x in "{files[@]}"
    do 
        if [[ $response == $files ]]
            then echo "File exists"
        else echo "File not found and has been created"
            touch "$response"
        fi 
        
done

# End